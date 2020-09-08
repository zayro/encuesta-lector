app.config(function($routeProvider) {
    $routeProvider
        .when('/aprender/inicio', {
            templateUrl: 'proyect/evaluar/view/aprender/inicio.html',
            controller: 'valida_usuario'
        })
        .when('/aprender/literal', {
            templateUrl: 'proyect/evaluar/view/aprender/literal.html',
            controller: 'valida_usuario'
        })
        .when('/aprender/intertextual', {
            templateUrl: 'proyect/evaluar/view/aprender/intertextual.html',
            controller: 'valida_usuario'
        })
        .when('/aprender/critico', {
            templateUrl: 'proyect/evaluar/view/aprender/critico.html',
            controller: 'valida_usuario'
        })
        .when('/aprender/inferencial', {
            templateUrl: 'proyect/evaluar/view/aprender/inferencial.html',
            controller: 'valida_usuario'
        })
        .when('/evaluar/modulo/textos', {
            templateUrl: 'proyect/evaluar/view/estudiante/categorias.html',
            controller: 'valida_usuario'
        })
        .when('/resultado/modulos/aulas', {
            templateUrl: 'proyect/evaluar/view/docente/cursos.html',
            controller: 'valida_usuario'
        })
        .when('/resultado/modulo/resultado', {
            templateUrl: 'proyect/evaluar/view/estudiante/resultado.html',
            controller: 'valida_usuario'
        })
        .when('/evaluar/modulo/respuestas_detalle/:id', {
            templateUrl: function(routeParams) {
                return 'proyect/evaluar/view/docente/respuestas_detalle.html'
            },
            controller: 'valida_usuario'
        })
        .when('/evaluar/modulo/test/:id', {
            templateUrl: function(routeParams) {
                return 'proyect/evaluar/view/estudiante/evaluacion.html'
            },
            controller: 'valida_usuario'
        })
        .when('/resultado/modulos/informes/:id', {
            templateUrl: function(routeParams) {
                return 'proyect/evaluar/view/docente/respuestas.html'
            },
            controller: 'valida_usuario'
        });
});

app.config(['$routeProvider', '$locationProvider', function($routeProvider, $locationProvider) {

    $routeProvider
        .when('/login', {
            templateUrl: 'main/login.html',
            controller: 'valida_usuario'
        })
        .when('/ingreso', {
            templateUrl: 'main/inicio.html',
            controller: 'valida_usuario'
        })
        .when('/view/:view', {
            templateUrl: function(routeParams) {
                return 'view/' + routeParams.view + '/' + routeParams.view + '.html';
            },
            controller: 'valida_usuario',
            resolve: {
                delay: function($q, $timeout) {
                    var delay = $q.defer();
                    $timeout(delay.resolve, 1000);
                    return delay.promise;
                }
            }

        })

    .otherwise({ redirectTo: '/ingreso' });




}]);