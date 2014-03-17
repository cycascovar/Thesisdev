package chapulh_alfa

import org.springframework.dao.DataIntegrityViolationException

class SucursalController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [sucursalInstanceList: Sucursal.list(params), sucursalInstanceTotal: Sucursal.count()]
    }

    def create() {
        [sucursalInstance: new Sucursal(params)]
    }

    def save() {
        def sucursalInstance = new Sucursal(params)
        if (!sucursalInstance.save(flush: true)) {
            render(view: "create", model: [sucursalInstance: sucursalInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'sucursal.label', default: 'Sucursal'), sucursalInstance.id])
        redirect(action: "show", id: sucursalInstance.id)
    }

    def show(Long id) {
        def sucursalInstance = Sucursal.get(id)
        if (!sucursalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sucursal.label', default: 'Sucursal'), id])
            redirect(action: "list")
            return
        }

        [sucursalInstance: sucursalInstance]
    }

    def edit(Long id) {
        def sucursalInstance = Sucursal.get(id)
        if (!sucursalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sucursal.label', default: 'Sucursal'), id])
            redirect(action: "list")
            return
        }

        [sucursalInstance: sucursalInstance]
    }

    def update(Long id, Long version) {
        def sucursalInstance = Sucursal.get(id)
        if (!sucursalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sucursal.label', default: 'Sucursal'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (sucursalInstance.version > version) {
                sucursalInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'sucursal.label', default: 'Sucursal')] as Object[],
                          "Another user has updated this Sucursal while you were editing")
                render(view: "edit", model: [sucursalInstance: sucursalInstance])
                return
            }
        }

        sucursalInstance.properties = params

        if (!sucursalInstance.save(flush: true)) {
            render(view: "edit", model: [sucursalInstance: sucursalInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'sucursal.label', default: 'Sucursal'), sucursalInstance.id])
        redirect(action: "show", id: sucursalInstance.id)
    }

    def delete(Long id) {
        def sucursalInstance = Sucursal.get(id)
        if (!sucursalInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'sucursal.label', default: 'Sucursal'), id])
            redirect(action: "list")
            return
        }

        try {
            sucursalInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'sucursal.label', default: 'Sucursal'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'sucursal.label', default: 'Sucursal'), id])
            redirect(action: "show", id: id)
        }
    }
}
