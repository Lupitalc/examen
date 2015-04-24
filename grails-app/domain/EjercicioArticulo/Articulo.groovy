package EjercicioArticulo

class Articulo {

    String descripcionArticulo

    static constraints = {
        descripcionArticulo nullable:  true, blank: false

    }
}
