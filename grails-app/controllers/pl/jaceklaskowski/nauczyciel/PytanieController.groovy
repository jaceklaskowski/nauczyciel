package pl.jaceklaskowski.nauczyciel

class PytanieController {

    def index = {
    }

    def rodzaj = {
    }

    def zadaj = {
        def pierwiastki = Pierwiastek.findAll();

        def random = new Random();
        def pos = random.nextInt(pierwiastki.size() - 1)
        assert pos >= 0
        assert pos < pierwiastki.size()
        [pierwiastek: pierwiastki[pos]]
    }

    def sprawdz = {
        def pierwiastek = Pierwiastek.findBySymbol(params.symbol)
        println "${params.symbol} = ${pierwiastek.nazwa}, ${params.nazwa}"
        if (!pierwiastek.nazwa.equalsIgnoreCase(params.nazwa)) {
            flash.message = "Odpowiedź niepoprawna dla symbolu ${params.symbol}. Spróbuj jeszcze raz."
        } else {
            flash.message = "Brawo! Odpowiedź poprawna!"
        }
        render(view:"zadaj",model:[pierwiastek:pierwiastek])
    }
    
    def zadajX = {
        // http://pl.wikipedia.org/wiki/Pierwiastek_chemiczny
        // pierwiastki od 1 do 111 zostały oficjalnie uznane przez IUPAC
        random = new Random();
        next = random.nextInt(110) + 1
        assert next > 1
        assert next < 111
        liczbaAtomowa = next
        pierwiastek = Pierwiastek.findByLiczbaAtomowa(liczbaAtomowa)
        [pierwiastek:pierwiastek]
    }
}
