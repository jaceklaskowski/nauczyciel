package pl.jaceklaskowski.nauczyciel

class Slowo {

    String enTresc
    String plTresc

    static mapping = {
        table "slowa"
    }

    static constraints = {
        enTresc(blank: false)
        plTresc(blank: false)
    }
}
