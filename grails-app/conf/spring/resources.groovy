import org.springframework.web.servlet.i18n.SessionLocaleResolver

beans = {
    localeResolver(SessionLocaleResolver) {
        def plLocale = new Locale("pl")
        defaultLocale= plLocale
        Locale.setDefault(plLocale)
    } 
}