/*
 ###############################################
 INICIA APP
 ###############################################
 */

"use strict";

var remoto = 'http://186.183.178.11/desarrollos/proyecto/backend-zav/';
var local = 'http://127.0.0.1/desarrollos/proyecto/backend-zav/';
var red = 'http://192.168.1.4/desarrollos/proyecto/backend-zav/';
var hosting = 'http://api.zavweb.com/';

var enrutar = 'http://' + location.hostname + '/lector/backend/';

const main_route = enrutar;


var app = angular.module('app', [
    'ngMaterial',
    'angular-loading-bar',
    'md.data.table',
    'angular.filter',
    'ngAnimate',
    'ngAria',
    'ngRoute',
    'ngMessages',
    'ngAnimate',
    'ngSanitize',
    'ngStorage',
    'ngResource'
]);

angular.element(document).ready(function() {

    console.log('cargo angular');

});