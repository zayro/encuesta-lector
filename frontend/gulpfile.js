// MANERJO DE GULP
var gulp = require('gulp');
// actaliza en tiempo real
var watch = require('gulp-watch');
// destruye si existe error en publigns
var plumber = require('gulp-plumber');
// busca en el codigo html <!-- build:css css/combined.css --> <!-- endbuild -->
var useref = require('gulp-useref');
var gulpif = require('gulp-if');
// comprime codigo js
var uglify = require('gulp-uglify');
// comprime codigo css
var minifyCss = require('gulp-clean-css');
// comprime html
var htmlmin = require('gulp-htmlmin');
// comprime imagen
var imagemin = require('gulp-imagemin');
var pngquant = require('imagemin-pngquant');
// servidor remoto
var server = require('gulp-express');
// servidor local
var connect = require('gulp-connect');
// inyectar codigo  al html
var inject = require('gulp-inject');
var mainBowerFiles = require('main-bower-files');
var debug = require('gulp-debug');

gulp.task('bower', function() {
    return gulp.src('./app/index.html')
        .pipe(inject(gulp.src(
            mainBowerFiles(), { read: false }), { name: 'bower', relative: true }))
        .pipe(gulp.dest('./app/'));
});

gulp.task('desarrollo', function() {
    connect.server({
        root: 'app/',
        port: 8090,
        livereload: true
    });
});



gulp.task('html', function() {
    gulp.src('./app/*.html')
        .pipe(connect.reload());
});


gulp.task('minifyhtmlall', function() {
    return gulp.src([
            './app/*.html',
            './app/proyect/**/*.html',
            './app/view/**/*.html'
        ])
        .pipe(plumber())
        .pipe(htmlmin({
            collapseWhitespace: true
        }))
        .pipe(gulp.dest('./app/testing/htmlcompress'))
});

/*
se minifica el codigo html de los proyectos
*/
gulp.task('MinifyHtmlProyect', function() {
    return gulp.src('./app/proyect/**/*.html')
        .pipe(plumber())
        .pipe(htmlmin({
            collapseWhitespace: true
        }))
        .pipe(gulp.dest('./app/testing/proyect'))
});

/*
se minifica el codigo html del index principal
*/
gulp.task('MinifyHtmlView', function() {
    return gulp.src('./app/view/**/*.html')
        .pipe(plumber())
        .pipe(htmlmin({
            collapseWhitespace: true
        }))
        .pipe(gulp.dest('./app/testing/view'))
});


gulp.task('MinifyJsProyect', function() {
    gulp.src('./app/proyect/**/*.js')
        .pipe(plumber())
        .pipe(uglify())
        .pipe(gulp.dest('./app/testing/proyect'));
});

gulp.task('MinifyJs', function() {
    gulp.src('./app/*.js')
        .pipe(plumber())
        .pipe(uglify({
            mangle: false
        }))
        .pipe(gulp.dest('./app/testing/'));
});


gulp.task('MinifyJsConfiguracion', function() {
    gulp.src('./app/configuration/**/*.js')
        .pipe(plumber())
        .pipe(uglify({
            mangle: false,
            output: {
                comments: false,
                beautify: false
            }
        }))
        .pipe(gulp.dest('./app/testing/configuration/'));
});

gulp.task('MinifyCssAssets', function() {
    gulp.src('./app/assets/**/*.css')
        .pipe(plumber())
        .pipe(minifyCss())
        .pipe(gulp.dest('./app/testing/assets/'));
});


gulp.task('compress', function() {
    gulp.src('./app/index.html')
        .pipe(plumber())
        .pipe(useref())
        .pipe(gulpif('*.js', uglify()))
        .pipe(gulpif('*.css', minifyCss()))
        .pipe(gulp.dest('./app/testing'));
});


gulp.task('imagemin', function() {
    gulp.src('./app/images/**/*.{jpg,jpeg,png,gif,svg}')
        .pipe(plumber())
        .pipe(imagemin())
        .pipe(gulp.dest('./app/testing/assets/images'));
});


gulp.task('minifyimg', function() {
    return gulp.src('./app/images/**/*.{jpg,jpeg,png,gif,svg}')
        .pipe(plumber())
        .pipe(imagemin({
            progressive: true,
            svgoPlugins: [{
                removeViewBox: false
            }],
            use: [pngquant()]
        }))
        .pipe(gulp.dest('./app/testing/assets/images'));
});



gulp.task('watch', function() {
    gulp.watch([
        './app/view/**/*.html'
    ], ['html']);
});


gulp.task('debug', ['compress',
    'MinifyHtmlProyect',
    'MinifyHtmlView',
    'MinifyJs',
    'MinifyJsProyect',
    'MinifyCssAssets',
    'MinifyJsView',
    'MinifyJsAssets',
    'MinifyJsConfiguracion',
    'minifyimg'
]);

gulp.task('local', ['desarrollo', 'watch']);

gulp.task('escritorio', ['webserver']);

gulp.task('default', ['webserver']);