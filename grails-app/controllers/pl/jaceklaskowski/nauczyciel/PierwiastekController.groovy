package pl.jaceklaskowski.nauczyciel

class PierwiastekController {

    def index = {
        render "Wywołano index z id=${params.id ?: 'pusty'}"
    }
}
