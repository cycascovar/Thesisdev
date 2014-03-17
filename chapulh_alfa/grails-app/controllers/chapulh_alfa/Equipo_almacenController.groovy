package chapulh_alfa

import org.springframework.dao.DataIntegrityViolationException

class Equipo_almacenController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [equipo_almacenInstanceList: Equipo_almacen.list(params), equipo_almacenInstanceTotal: Equipo_almacen.count()]
    }

    def create() {
        [equipo_almacenInstance: new Equipo_almacen(params)]
    }

    def save() {
        def equipo_almacenInstance = new Equipo_almacen(params)
        if (!equipo_almacenInstance.save(flush: true)) {
            render(view: "create", model: [equipo_almacenInstance: equipo_almacenInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'equipo_almacen.label', default: 'Equipo_almacen'), equipo_almacenInstance.id])
        redirect(action: "show", id: equipo_almacenInstance.id)
    }

    def show(Long id) {
        def equipo_almacenInstance = Equipo_almacen.get(id)
        if (!equipo_almacenInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'equipo_almacen.label', default: 'Equipo_almacen'), id])
            redirect(action: "list")
            return
        }

        [equipo_almacenInstance: equipo_almacenInstance]
    }

    def edit(Long id) {
        def equipo_almacenInstance = Equipo_almacen.get(id)
        if (!equipo_almacenInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'equipo_almacen.label', default: 'Equipo_almacen'), id])
            redirect(action: "list")
            return
        }

        [equipo_almacenInstance: equipo_almacenInstance]
    }

    def update(Long id, Long version) {
        def equipo_almacenInstance = Equipo_almacen.get(id)
        if (!equipo_almacenInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'equipo_almacen.label', default: 'Equipo_almacen'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (equipo_almacenInstance.version > version) {
                equipo_almacenInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'equipo_almacen.label', default: 'Equipo_almacen')] as Object[],
                          "Another user has updated this Equipo_almacen while you were editing")
                render(view: "edit", model: [equipo_almacenInstance: equipo_almacenInstance])
                return
            }
        }

        equipo_almacenInstance.properties = params

        if (!equipo_almacenInstance.save(flush: true)) {
            render(view: "edit", model: [equipo_almacenInstance: equipo_almacenInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'equipo_almacen.label', default: 'Equipo_almacen'), equipo_almacenInstance.id])
        redirect(action: "show", id: equipo_almacenInstance.id)
    }

    def delete(Long id) {
        def equipo_almacenInstance = Equipo_almacen.get(id)
        if (!equipo_almacenInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'equipo_almacen.label', default: 'Equipo_almacen'), id])
            redirect(action: "list")
            return
        }

        try {
            equipo_almacenInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'equipo_almacen.label', default: 'Equipo_almacen'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'equipo_almacen.label', default: 'Equipo_almacen'), id])
            redirect(action: "show", id: id)
        }
    }
}
