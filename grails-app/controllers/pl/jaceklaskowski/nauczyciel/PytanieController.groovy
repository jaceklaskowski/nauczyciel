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
            render(view:session.losowyTyp, model:[pierwiastek: pierwiastki[pos]])
        } else {
            session.losowyTyp = session.rodzaj
            render(view:session.losowyTyp, model:[pierwiastek: pierwiastki[pos]])
        }
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
            render(view:session.losowyTyp,model:[pierwiastek:pierwiastek])
        } else {
            flash.message = "Brawo! Odpowiedź poprawna!"
            redirect(action:"zadaj")
        }
        
    }
}
