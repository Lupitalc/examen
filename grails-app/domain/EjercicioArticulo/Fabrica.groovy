package EjercicioArticulo

class Fabrica {
      String descripcionFabrica
      Integer Existencia

    static hasMany = [fabricas:Fabrica, articulos:Articulo]
    static belongsTo = [distribuidor:Distribuidor ]

    static constraints = {
        descripcionFabrica nullable: true
    }
}
