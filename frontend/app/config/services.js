/*
 ###############################################
 INICIA EL SERVICIO
 ###############################################
 */

app.service('cargar_servicios', function($http) {

    this.http_respuesta = function(valor_url, valor_metodo, valor_formulario) {

        console.debug('url: ' + valor_url + ' datos: ' + valor_formulario);

        return $http({
            method: valor_metodo,
            url: valor_url,
            data: valor_formulario,
            headers: { 'Content-Type': 'application/x-www-form-urlencoded charset=UTF-8' }
        });

    };

    this.set_validar_session = function(valor) {
        this.datos_ingreso = valor;
    };

    this.get_validar_session = function() {
        return this.datos_ingreso;
    };

    this.select_menu = function() {
        return $http.get('controller/controller_menu.php?mostrar_menu=true');
    };

    this.select_combo_empresas = function() {
        return $http.get('controller/controller_empresa.php?mostrar_empresas=true');
    };

    this.session_usuario = function() {
        return $http.get('../librerias/session_usuario.php');
    };

});

app.service('socket', function() {


    try {

        //var socket = io.connect('http://' + myip + ':3000');

        var socket = io.connect('https://socket-proyecto.herokuapp.com/', {
            upgrade: false,
            transports: ['polling', 'xhr-polling']
        });

        this.zocalo = socket;

    } catch (mensaje) {

        console.error('ocurrion un problemna: ' + mensaje);

    }

});


app.service('RestUsuario', function($resource) {

    this.recursos = function() {

        return $resource(main_route + 'app/usuario/controller/controller_usuario.php/:id', { id: '@id' }, {
            query: {
                method: 'GET',
                isArray: false
            },
            get: { method: 'GET', isArray: false },
            update: { method: 'PUT', isArray: false },
            delete: { method: 'DELETE', isArray: false }
        });

    };



});