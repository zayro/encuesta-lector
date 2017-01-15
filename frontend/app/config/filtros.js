/*
###############################################
INICIA FILTROS
###############################################
*/

/*
###############################################
FILTROS PARA CREAR SUMATORIAS REPEAT
###############################################
*/

app.filter('filtro_sumatoria', function() {

    return function(data, key) {

        if (angular.isUndefined(data)) {
            return 0; } else {


            if (typeof(data) === 'undefined' && typeof(key) === 'undefined') {

                return 0;

            } else {


                var sum = 0;

                for (var i = 0; i < data.length; i++) {

                    sum = (sum + parseInt(data[i][key]));

                }

                //debugger;

                if (sum == 'undefined') {
                    return 0; } else {
                    return sum; }

            }
        }
    };

});

/*
###############################################
FILTROS PARA CREAR MULTIPLICAR REPEAT
###############################################
*/

app.filter('filtro_multiplicar', function() {


    return function(data, key1, key2) {


        if (angular.isUndefined(data)) {
            return 0; } else {



            if (typeof(data) === 'undefined' && typeof(key1) === 'undefined' && typeof(key2) === 'undefined') {
                return 0; } else {

                var sum = 0;

                for (var i = 0; i < data.length; i++) {

                    sum = (sum + parseInt((data[i][key1] * data[i][key2])));

                }

                if (sum == 'undefined') {
                    return 0; } else {
                    return sum; }
            }

        }
    };

});



/*
###############################################
FILTRO SACAR UN VALOR DE UN DATA
###############################################
*/

app.filter('distinto', function() {


    return function(data, key1) {


        if (angular.isUndefined(data)) {
            return 0; } else {



            if (typeof(data) === 'undefined' && typeof(key1) === 'undefined') {
                return 0; } else {

                var sum = 0;

                for (var i = 0; i < data.length; i++) {

                    sum = (sum + parseInt((data[i][key1] * data[i][key2])));

                }


                return data;

            }

        }
    };

});

app.filter('keyboardShortcut', function($window) {
    return function(str) {
        if (!str) return;
        var keys = str.split('-');
        var isOSX = /Mac OS X/.test($window.navigator.userAgent);

        var seperator = (!isOSX || keys.length > 2) ? '+' : '';

        var abbreviations = {
            M: isOSX ? '⌘' : 'Ctrl',
            A: isOSX ? 'Option' : 'Alt',
            S: 'Shift'
        };

        return keys.map(function(key, index) {
            var last = index == keys.length - 1;
            return last ? key : abbreviations[key];
        }).join(seperator);
    };
});