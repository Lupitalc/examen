package EjercicioArticulo

class Distribuidor {
    String nombreDistribuidor
    String telefonoContacto
    Fabrica fabricasAlternativas

    static constraints = {
        nombreDistribuidor nullable: true
    }
}
