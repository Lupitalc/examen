package spring.security

class OperacionesController {

    def index() {
   // render view:('/operaciones/index')
        []
    }

    def suma(){
        print("parametros"+params)
    def resultado=params?.valorUno?.toInteger()+params?.valorDos?.toInteger()
   // render (view:'/operaciones/index', model:[resultado:resultado] )
        render (template: '/operaciones/resultado', model:[resultado:resultado] )
    }

}
