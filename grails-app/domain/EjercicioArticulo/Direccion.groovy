package EjercicioArticulo

class Direccion {

    String direccion

    static belongsTo = [cliente:Cliente ]
    static constraints = {
        direccion nullable: true
}
}
