package EjercicioArticulo


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class FabricaController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Fabrica.list(params), model: [fabricaInstanceCount: Fabrica.count()]
    }

    def show(Fabrica fabricaInstance) {
        respond fabricaInstance
    }

    def create() {
        respond new Fabrica(params)
    }

    @Transactional
    def save(Fabrica fabricaInstance) {
        if (fabricaInstance == null) {
            notFound()
            return
        }

        if (fabricaInstance.hasErrors()) {
            respond fabricaInstance.errors, view: 'create'
            return
        }

        fabricaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'fabrica.label', default: 'Fabrica'), fabricaInstance.id])
                redirect fabricaInstance
            }
            '*' { respond fabricaInstance, [status: CREATED] }
        }
    }

    def edit(Fabrica fabricaInstance) {
        respond fabricaInstance
    }

    @Transactional
    def update(Fabrica fabricaInstance) {
        if (fabricaInstance == null) {
            notFound()
            return
        }

        if (fabricaInstance.hasErrors()) {
            respond fabricaInstance.errors, view: 'edit'
            return
        }

        fabricaInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Fabrica.label', default: 'Fabrica'), fabricaInstance.id])
                redirect fabricaInstance
            }
            '*' { respond fabricaInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Fabrica fabricaInstance) {

        if (fabricaInstance == null) {
            notFound()
            return
        }

        fabricaInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Fabrica.label', default: 'Fabrica'), fabricaInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'fabrica.label', default: 'Fabrica'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
