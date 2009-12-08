import pl.jaceklaskowski.nauczyciel.*

class BootStrap {

     def init = { servletContext ->
         new Slowo(enTresc:'find out', plTresc:'wiedzieć').save()
     }
     def destroy = {
     }
} 