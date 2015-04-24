package EjercicioArticulo


class Pedido {
    Cliente nombre
    Date fechaPedido
    String descripcionPedido
    Integer cantidad

    static belongsTo = [cliente:Cliente ]
    static constraints = {
    }
}
