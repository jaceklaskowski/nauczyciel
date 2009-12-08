package pl.jaceklaskowski.nauczyciel

class PytanieController {

    def index = {
    }

    def rodzaj = {
        // rodzaj should be part of debugging infrastructure not the application's itself
        session.rodzaj = params.rodzaj
    }

    def zadaj = {
        // choose questions
        // their type comes in param.rodzaj request param
        // they're 4 types so to choose the right ones
        // Criteria DSL seems to be the way to go
        //
        // Dunno how it should be done in a proper way atm
        // That's where Clojure lazy collection could really help
        def kolekcja
        if (params.rodzaj?.contains("slowka")) {
            kolekcja = Slowo.findAll();
            session.losowyTyp = "slowka"

            // duplication - see below
            def random = new Random();
            def pos = random.nextInt(kolekcja.size())

            return [slowko: kolekcja[pos]]
        } else {    // it should really be cascade if not exclusive if

            def pierwiastki = Pierwiastek.findAll();

            def random = new Random();
            def pos = random.nextInt(pierwiastki.size())
            assert pos >= 0
            assert pos < pierwiastki.size()

            if (session.rodzaj?.class == String[].class) {
                def typ = random.nextInt(session.rodzaj.size())
                session.losowyTyp = session.rodzaj[typ]
            } else {
                session.losowyTyp = session.rodzaj
            }
            [pierwiastek: pierwiastki[pos]]
        }
    }

    def sprawdz = {
        def porazka = true
        def pierwiastek, slowko
        switch (session.losowyTyp) {
            case "symbol":
            pierwiastek = Pierwiastek.findBySymbol(params.symbol)
            porazka = !pierwiastek.nazwa.equalsIgnoreCase(params.nazwa)
            break;
            case "nazwa":
            pierwiastek = Pierwiastek.findByNazwa(params.nazwa)
            porazka = !pierwiastek.symbol.equalsIgnoreCase(params.symbol)
            break;
            case "liczbaAtomowa":
            pierwiastek = Pierwiastek.findByLiczbaAtomowa(params.liczbaAtomowa)
            porazka = !pierwiastek.nazwa.equalsIgnoreCase(params.nazwa)
            break;
            case "slowka":
            slowko = Slowo.get(params.id)
            porazka = !slowko.plTresc.equalsIgnoreCase(params.plTresc)
            break;
        }
        
        if (porazka) {
            flash.message = "Odpowiedź niepoprawna. Spróbuj jeszcze raz."
            session.zle = session.zle?.plus(1) ?: 1;
            session.lacznie = session.lacznie?.plus(1) ?: 1;
            render(view:"zadaj",model:[pierwiastek:pierwiastek, slowko: slowko])
        } else {
            flash.message = "Brawo! Odpowiedź poprawna!"
            session.dobrze = session.dobrze?.plus(1) ?: 1;
            session.lacznie = session.lacznie?.plus(1) ?: 1;
            redirect(action:"zadaj")
        }
        
    }
}
