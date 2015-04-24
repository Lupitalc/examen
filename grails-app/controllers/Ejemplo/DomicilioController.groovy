package Ejemplo



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DomicilioController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Domicilio.list(params), model:[domicilioInstanceCount: Domicilio.count()]
    }

    def show(Domicilio domicilioInstance) {
        respond domicilioInstance
    }

    def create() {
        respond new Domicilio(params)
    }

    @Transactional
    def save(Domicilio domicilioInstance) {
        if (domicilioInstance == null) {
            notFound()
            return
        }

        if (domicilioInstance.hasErrors()) {
            respond domicilioInstance.errors, view:'create'
            return
        }

        domicilioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), domicilioInstance.id])
                redirect domicilioInstance
            }
            '*' { respond domicilioInstance, [status: CREATED] }
        }
    }

    def edit(Domicilio domicilioInstance) {
        respond domicilioInstance
    }

    @Transactional
    def update(Domicilio domicilioInstance) {
        if (domicilioInstance == null) {
            notFound()
            return
        }

        if (domicilioInstance.hasErrors()) {
            respond domicilioInstance.errors, view:'edit'
            return
        }

        domicilioInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Domicilio.label', default: 'Domicilio'), domicilioInstance.id])
                redirect domicilioInstance
            }
            '*'{ respond domicilioInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Domicilio domicilioInstance) {

        if (domicilioInstance == null) {
            notFound()
            return
        }

        domicilioInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Domicilio.label', default: 'Domicilio'), domicilioInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'domicilio.label', default: 'Domicilio'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
