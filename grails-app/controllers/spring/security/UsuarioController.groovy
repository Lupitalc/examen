package spring.security



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UsuarioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def UsuarioService
    def listaUsuarios(){

        Usuario.getAll()
    }
    def index(Integer max) {


      /*  def usuarioInstanceList = usuario.list{

            like("username", "%M%")
               and {
                   eq("enabled", true)
            }or {
                   eq("accountExpired", true)
               }

        }*/
       // print(usuarioInstanceList)
        // def usuarioInstanceList = Usuario.findAll("from Usuario where username like '%n' ")
       // [usuarioInstanceCount:Usuario.count(), usuarioInstanceList:usuarioInstanceList]
        //respond Usuario.list(params), model:[usuarioInstanceCount: Usuario.count()]
        //def usuarioInstanceList = Usuario.findByAccountExpiredAndUsernameLike(false, "%n%")


    }

    def show(Usuario usuarioInstance) {
        respond usuarioInstance
    }

    def create() {
        respond new Usuario(params)
    }

    @Transactional
    def save(Usuario usuarioInstance) {
        if (usuarioInstance == null) {
            notFound()
            return
        }

        if (usuarioInstance.hasErrors()) {
            respond usuarioInstance.errors, view:'create'
            return
        }

        usuarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'usuario.label', default: 'Usuario'), usuarioInstance.id])
                redirect usuarioInstance
            }
            '*' { respond usuarioInstance, [status: CREATED] }
        }
    }

    def edit(Usuario usuarioInstance) {
        respond usuarioInstance
    }

    @Transactional
    def update(Usuario usuarioInstance) {
        if (usuarioInstance == null) {
            notFound()
            return
        }

        if (usuarioInstance.hasErrors()) {
            respond usuarioInstance.errors, view:'edit'
            return
        }

        usuarioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Usuario.label', default: 'Usuario'), usuarioInstance.id])
                redirect usuarioInstance
            }
            '*'{ respond usuarioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Usuario usuarioInstance) {

        if (usuarioInstance == null) {
            notFound()
            return
        }

        usuarioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Usuario.label', default: 'Usuario'), usuarioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'usuario.label', default: 'Usuario'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
