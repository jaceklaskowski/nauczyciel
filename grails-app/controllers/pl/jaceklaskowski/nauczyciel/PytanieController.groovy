package pl.jaceklaskowski.nauczyciel

class PytanieController {

    def index = {
    }

    def rodzaj = {
        session.rodzaj = params.rodzaj
    }

    def zadaj = {
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

    def sprawdz = {
        def porazka = true
        def pierwiastek = null
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
        }
        
        if (porazka) {
            flash.message = "Odpowiedź niepoprawna. Spróbuj jeszcze raz."
            session.zle = session.zle?.plus(1) ?: 1;
            session.lacznie = session.lacznie?.plus(1) ?: 1;
            render(view:"zadaj",model:[pierwiastek:pierwiastek])
        } else {
            flash.message = "Brawo! Odpowiedź poprawna!"
            session.dobrze = session.dobrze?.plus(1) ?: 1;
            session.lacznie = session.lacznie?.plus(1) ?: 1;
            redirect(action:"zadaj")
        }
        
    }
}
