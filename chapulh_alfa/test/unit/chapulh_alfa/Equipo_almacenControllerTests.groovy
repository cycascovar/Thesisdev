package chapulh_alfa



import org.junit.*
import grails.test.mixin.*

@TestFor(Equipo_almacenController)
@Mock(Equipo_almacen)
class Equipo_almacenControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/equipo_almacen/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.equipo_almacenInstanceList.size() == 0
        assert model.equipo_almacenInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.equipo_almacenInstance != null
    }

    void testSave() {
        controller.save()

        assert model.equipo_almacenInstance != null
        assert view == '/equipo_almacen/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/equipo_almacen/show/1'
        assert controller.flash.message != null
        assert Equipo_almacen.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/equipo_almacen/list'

        populateValidParams(params)
        def equipo_almacen = new Equipo_almacen(params)

        assert equipo_almacen.save() != null

        params.id = equipo_almacen.id

        def model = controller.show()

        assert model.equipo_almacenInstance == equipo_almacen
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/equipo_almacen/list'

        populateValidParams(params)
        def equipo_almacen = new Equipo_almacen(params)

        assert equipo_almacen.save() != null

        params.id = equipo_almacen.id

        def model = controller.edit()

        assert model.equipo_almacenInstance == equipo_almacen
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/equipo_almacen/list'

        response.reset()

        populateValidParams(params)
        def equipo_almacen = new Equipo_almacen(params)

        assert equipo_almacen.save() != null

        // test invalid parameters in update
        params.id = equipo_almacen.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/equipo_almacen/edit"
        assert model.equipo_almacenInstance != null

        equipo_almacen.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/equipo_almacen/show/$equipo_almacen.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        equipo_almacen.clearErrors()

        populateValidParams(params)
        params.id = equipo_almacen.id
        params.version = -1
        controller.update()

        assert view == "/equipo_almacen/edit"
        assert model.equipo_almacenInstance != null
        assert model.equipo_almacenInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/equipo_almacen/list'

        response.reset()

        populateValidParams(params)
        def equipo_almacen = new Equipo_almacen(params)

        assert equipo_almacen.save() != null
        assert Equipo_almacen.count() == 1

        params.id = equipo_almacen.id

        controller.delete()

        assert Equipo_almacen.count() == 0
        assert Equipo_almacen.get(equipo_almacen.id) == null
        assert response.redirectedUrl == '/equipo_almacen/list'
    }
}
