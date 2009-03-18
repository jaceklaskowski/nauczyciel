package pl.jaceklaskowski.nauczyciel

class Zadania {
	static def getAll = {
        return Slowo.findAll()
    }
}

