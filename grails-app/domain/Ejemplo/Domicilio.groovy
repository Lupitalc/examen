package Ejemplo

class Domicilio {

    Pais pais
    Estado estado
    Municipio municipio

    String colonia
    String calle
    String numero

 //   static hasOne = [pais:Pais]
    static belongsTo = [persona:Persona ]//Pertenecia
  //  static hasMany = [persona: Persona] //Relacion muchos a muchos

    static constraints = {

        pais nullable:  true
        estado nullable: true
        municipio nullable: true

        colonia blank: false, nullable: true
        calle blank: false, nullable: true
        numero blank: false, nullable: true
        persona nullable:  true
    }


}
