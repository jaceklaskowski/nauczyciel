import pl.jaceklaskowski.nauczyciel.Pierwiastek

class BootStrap {

     def init = { servletContext ->
         new Pierwiastek(symbol:'N', nazwa:'azot').save()
         new Pierwiastek(symbol:'P', nazwa:'fosfor').save()
         new Pierwiastek(symbol:'K', nazwa:'potas').save()
     }
     def destroy = {
     }
} 