package pl.jaceklaskowski.nauczyciel

class SprawdzianController {

    def zadaj = {
        def zadania = Zadania.getAll();

        def random = new Random();
        def pos = random.nextInt(zadania.size() - 1)
        assert pos >= 0
        assert pos < zadania.size()
        [zadanie: zadania[pos]]
    }

    def sprawdz = {
        if (!params.odpowiedz.equalsIgnoreCase(params.odpowiedzUzytkownika)) {
            flash.message = "Odpowiedź niepoprawna dla ${params.pytanie}. Spróbuj jeszcze raz."
        } else {
            flash.message = "Brawo! Odpowiedź poprawna!"
        }
        redirect(action:"zadaj")
    }
}
