import pl.jaceklaskowski.nauczyciel.*

class BootStrap {

     def init = { servletContext ->
         new Slowo(enTresc:'liaise', plTresc:'pośredniczyć').save()
         new Slowo(enTresc:'endeavour ', plTresc:'próbować').save()
         new Slowo(enTresc:'mitigate', plTresc:'łagodzić').save()
     }
     def destroy = {
     }
} 