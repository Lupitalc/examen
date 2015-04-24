package spring.security

class RequestMap {
String url
    String configAttribute
    static constraints = {
        url blank: false, unique: true
        configAttribute blank: false
    }
}
