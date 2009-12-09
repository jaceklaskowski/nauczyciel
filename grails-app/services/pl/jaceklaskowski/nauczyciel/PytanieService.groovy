package pl.jaceklaskowski.nauczyciel

class PytanieService {

    boolean transactional = true

    def wylosujSlowo() {
        def slowa = Slowo.findAll();

        def random = new Random();
        def pos = random.nextInt(slowa.size())

        slowa[pos]
    }
}
