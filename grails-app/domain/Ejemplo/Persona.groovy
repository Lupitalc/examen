package Ejemplo

class Persona {
     String nombre
     String apellidoPaterno
     String apellidoMaterno
     String curp
    // String domicilio
     String descripcion
     BigDecimal salario

    static hasMany = [domicilios:Domicilio]

    static constraints = {
        nombre blank: true, nullable: false
        apellidoPaterno nullable: true
        apellidoMaterno nullable: true
        curp blank: false, nullable: false
        descripcion nullable: true
        salario nullable: true
    }
    static mapping = {
        id sort: 'desc'
        table "PERSON"
        apellidoPaterno column: "APELLIDO_PATERNO"
        descripcion sqlType:'clob'
        domicilios indexColumn: [name:"PERSON_ID"],
                                 joinTable: [column: "DOM_ID"]

    }


    String toString(){
        "${nombre} ${apellidoPaterno} ${apellidoMaterno}"
    }

    boolean  equals(Objects o){
        if(o == null)
            return false

        if(o instanceof Persona){
            if(this.curp.equals( ((Persona)o).curp) && this.nombre.equals( ((Persona)o).nombre))
                return true
            else
                return false
        }else
            return false
    }

}
