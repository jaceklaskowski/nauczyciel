import pl.jaceklaskowski.nauczyciel.Pierwiastek
import pl.jaceklaskowski.nauczyciel.Slowo

class BootStrap {

     def init = { servletContext ->
         new Pierwiastek(symbol:'N', nazwa:'azot', liczbaAtomowa:7).save()
         new Pierwiastek(symbol:'P', nazwa:'fosfor', liczbaAtomowa:15).save()
         new Pierwiastek(symbol:'K', nazwa:'potas', liczbaAtomowa:19).save()
         new Slowo(pytanie:'kot', odpowiedz:'cat').save()
         new Slowo(pytanie:'pies', odpowiedz:'dog').save()
         new Slowo(pytanie:'krowa', odpowiedz:'cow').save()
         new Slowo(pytanie:'koń', odpowiedz:'horse').save()
         new Slowo(pytanie:'ptak', odpowiedz:'bird').save()
         new Slowo(pytanie:'ryba', odpowiedz:'fish').save()
     }
     def destroy = {
     }
} 