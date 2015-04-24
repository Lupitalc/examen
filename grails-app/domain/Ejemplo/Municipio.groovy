package Ejemplo

class Municipio {

    String nombreMunicipio

    static constraints = {
        nombreMunicipio blank: false, nullable: false
    }
    String toString(){
        "${nombreMunicipio}"
    }
}
