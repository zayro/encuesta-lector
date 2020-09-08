/*
 ###############################################
 INICIA EL CONTROLADOR APLICACIONES
 ###############################################
 */

app.controller('AppCtrl', function(
    $scope,
    $route,
    $routeParams,
    $location,
    $log,
    $http,
    $filter,
    RestUsuario,
    $timeout,
    $mdSidenav,
    $mdDialog,
    $mdToast,
    $sessionStorage) {

    console.groupCollapsed("ingreso al controlador principal");

    $scope.ocultar_bienvenida = true;

    $scope.toggleLeft = buildToggler('left');

    $scope.toggleRight = buildToggler('right');

    $scope.tiempo = Date.now();

    $scope.closeleft = function() {
        $mdSidenav('left').close()
            .then(function() {
                $log.debug("close LEFT is done");
            });
    };

    $scope.link = function(valor) {
        $location.path(valor);
        $scope.closeleft();
    };

    $scope.closeright = function() {
        $mdSidenav('right').close()
            .then(function() {
                $log.debug("close RIGHT is done");
            });
    };

    function buildToggler(navID) {
        return function() {
            $mdSidenav(navID)
                .toggle()
                .then(function() {
                    $log.debug("toggle " + navID + " is done");
                });
        }
    };

    $scope.openToast = function(type, msg, action) {

        var css, notify;

        if (action == undefined) {
            action = 'HideToast()';
        };

        switch (type) {
            case 0:
                css = "error";
                notify = "ERROR";
                break;
            case 1:
                css = "success";
                notify = "EXITOSO";
                break;
            case 2:
                css = "warning";
                notify = "ADVERTENCIA";
                break;
            case 3:
                css = "info";
                notify = "INFORMACION";
                break;
            default:
                css = "";
                notify = "";
        };

        $mdToast.show({
            template: '<md-toast>  <span  flex>' + msg + '</span>  <md-button  ng-click="' + action + '">   <span class="' + css + '" >' + notify + ' </span>  </md-button> </md-toast>',
            parent: angular.element(document.body),
            controller: 'Messenger',
            locals: {
                data: notify
            },
            hideDelay: 9000,
            position: 'bottom right'
        });

    };

    $scope.$on('DatosUsuario', function(event, msg) {
        console.debug('DatosUsuario', msg.datos);
        $scope.DatosUsuario = msg.datos[0];
        msg.menu.slice(-2, 2);
        console.debug('MenuUsuario', msg.menu);
        $scope.MenuUsuario = msg.menu;
    });


    angular.element(document).ready(function() {

        $scope.pagina = 'principal';

        $scope.$on('$locationChangeStart', function(event) {
            console.warn("se recargo el navegador");
            //console.clear();
            /*var answer = confirm("Desea salir del sistema?");
             if (!answer) {
             event.preventDefault();
             }
             */

        });

    });

    $scope.tiempo = Date.now();

    $scope.salir = function(identificacion) {
        sessionStorage.clear();
        localStorage.clear();

        //$localStorage.$reset();
        $sessionStorage.$reset();
        $location.path('/login');


        console.log('eliminar enlinea', identificacion);

        /*

        var resultado = RestUsuario.recursos().delete({ id: identificacion }, function() {

            console.log('se recibio el ajax para eliminar');
            sessionStorage.clear();
            localStorage.clear();
            $route.reload();

            console.log('se ejecuto eliminar enlinea');

        });

        */
    };

    $scope.query = {
        order: '',
        limit: 100,
        page: 1
    };


    console.groupEnd();
});

/*
 ##################################################
 INICIA EL CONTROLADOR MENSAJES
 ###################################################
 */

app.controller('Messenger', function($scope, $mdToast, $mdDialog, $http, data) {

    console.log('data messenger', data);

    $scope.data = data;

    $scope.HideToast = function() {
        $mdToast.hide();
    };

    $scope.HideDialog = function() {
        $mdDialog.hide();
    };

    $scope.CancelDialog = function() {
        $mdDialog.cancel();
    };

    $scope.answer = function(answer) {
        $mdDialog.hide(answer);
    };


});

app.controller('DialogOnline', function($scope, $mdDialog, data) {

    $scope.data = data;

    $scope.HideDialog = function() {
        $mdDialog.hide();
    };

    $scope.CancelDialog = function() {
        $mdDialog.cancel();
    };

});

/*
 ##################################################
 INICIA EL CONTROLADOR QUE VALIDA SI EXISTE SESSION
 ###################################################
 */

app.controller('valida_usuario', function($scope, $route, $routeParams, $location, $filter, $sessionStorage) {



    if (!angular.isUndefined($sessionStorage.registros)) {

        console.groupCollapsed("ingreso al controlador valida usuario");

        console.info('validando acceso del usuario');

        console.debug('route', $route);
        console.debug('location', $location);
        console.debug('location', $location.url());
        console.debug('routeParams', $routeParams);



        $scope.$emit('DatosUsuario', $sessionStorage.registros);

        var ruta = $location.path().substring(1);

        console.debug('ruta:..', ruta);


        var MainMenu = $sessionStorage.registros.menu;
        console.debug('MainMenu :', MainMenu);

        $scope.Search = function(find_id) {

            //   MainMenu.push({ menu: "principal", modulo1: "ingreso", submenu1: null }, { menu: "inicio", modulo1: "login", submenu1: null });


            if (angular.isUndefined($routeParams.id)) {

                var found1 = $filter('filter')(MainMenu, { modulo1: find_id }, true);
                var found2 = $filter('filter')(MainMenu, { modulo2: find_id }, true);

            } else {

                //var ruta = find_id.substr(0, find_id.length - 2);
                var remove_number = find_id.replace(/\d+/g, '');
                var ruta = remove_number.substr(0, remove_number.length - 1);
                console.info(ruta);

                var found1 = $filter('filter')(MainMenu, { modulo1: ruta }, true);
                var found2 = $filter('filter')(MainMenu, { modulo2: ruta }, true);

            }


            if (found1.length || found2.length) {

                //console.info('menu encontrado:', JSON.stringify(found));
                console.info('menu encontrado:');

            } else {
                console.warn('no existe');
                $location.path('/ingreso');
            }

            MainMenu.slice(0, -2);
            console.debug('MainMenu despues de eliminar:', MainMenu);



        };

        $scope.Search(ruta);



        console.groupEnd();



    } else {
        $location.path('/login');
    }




});

/*
 ###############################################
 CONTROLADOR LOGIN
 ###############################################
 */

app.controller('login', function($scope, $location, $route, $http, $sessionStorage, $mdDialog) {

    console.groupCollapsed("ingreso al controlador login");


    if (window.matchMedia('(display-mode: standalone)').matches) {
        console.log("Thank you for installing our app!");
    }

    $scope.openDialogConect = function(url, value, ev) {

        $mdDialog.show({
                controller: 'DialogOnline',
                scope: $scope,
                //preserveScope: true,   
                templateUrl: url,
                parent: angular.element(document.body),
                targetEvent: ev,
                locals: {
                    data: value
                },
                clickOutsideToClose: true,
                fullscreen: 'useFullScreen'

            })
            .then(function(answer) {
                $scope.status = 'You said the information was "' + answer + '".';
            }, function() {
                $scope.status = 'You cancelled the dialog.';
            });
    };


    $scope.enviar_formulario_login = function() {

        $http({
            method: 'POST',
            url: main_route + "app/usuario/controller/controller_usuario.php",
            data: $scope.usuario,
            //withCredentials: true,
            headers: {
                'Content-Type': 'application/x-www-form-urlencoded'
            }
        }).then(function successCallback(response) {

            console.debug(response.data);

            var msg = response.data.estado;

            if (msg == 'success') {
                console.info('ingreso success y sessionStorage');
                $sessionStorage.$default({
                    registros: response.data
                });
            }

            $scope.openToast(1, 'INGRESO USUARIO');

            $location.path('/ingreso');

        }, function errorCallback(response) {

            console.debug('Respuesta', response);

            console.debug('Respuesta', response.data);

            console.debug('Respuesta', response.data.estado);

            var msg = response.data.estado;

            if (msg == 'conectado') {

                $scope.openToast(2, 'YA AHY ALGUIEN CONECTADO');

                $scope.openDialogConect('./main/DialogConectados.html', response.data);

            } else {

                $scope.openToast(0, 'VERIFICAR LOS DATOS');

            }

            console.error('error', response);

        });

    };

    console.groupEnd();

});