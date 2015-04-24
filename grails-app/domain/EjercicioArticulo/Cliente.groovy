package EjercicioArticulo

class Cliente {

    String nombre
    BigDecimal saldo
    Integer limiteCredito
    BigDecimal descuento

    static hasMany = [direcciones:Direccion, pedidos:Pedido]

    static constraints = {
        nombre nullable: true
        saldo nullable: true
        limiteCredito nullable: true
        descuento nullable: true
    }
}
