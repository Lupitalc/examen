package spring.security


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RolController {

   def index(){
   render(view: 'index', model:[lista:Rol.list(), total:Rol.count()])
   }

   def create(){
       [rolInstance: new Rol()]
   }

    def save(){
        println "Recibiendo parametros"+ params
        Rol rol = new Rol (params)

        if (rol.validate()){
            rol.save(flush: true)

         if (!rol.hasErrors())
             redirect(action: 'index')
        }
    }

   def show(){
       [rolInstance: Rol.get(params?.id)]
   }

    def edit(){
        [rolInstance: Rol.get(params?.id)]

    }


    def update(){
     println  "recibiendo parametros"+params
     Rol rol = Rol.get(params.id)
     rol.authority = params.authority
     rol.save(flush: true)
     redirect(action: 'index')
}

    def delete(){
        Rol rol = Rol.get(params.id)
        rol.delete(flush: true)
        redirect(action: 'index')
    }
}



