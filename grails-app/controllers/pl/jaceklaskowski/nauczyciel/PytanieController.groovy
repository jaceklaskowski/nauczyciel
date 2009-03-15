package pl.jaceklaskowski.nauczyciel

class PytanieController {

    def index = {
    }

    def rodzaj = {
    }

    def zadaj = {
        render "A Ty jeszcze tutaj?! Zmykaj do domu. (TODO: PytanieController.zadaj) - liczba pierwiastków: ${Pierwiastek.count()}"
    }
}
