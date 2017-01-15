<?php 

require_once 'run.php';

use Illuminate\Database\Capsule\Manager as DB;
use app\modelo\Articulos as Articulos;



#guardar articulo

/*
$insertar = new Articulos;

$insertar->nombre = 'fulanito';

$insertar->save();
*/

#actualizar articulo

/*
$actualizar = Articulos::find(3);

$actualizar->nombre = 'fulanita';

$actualizar->save();
*/

#eliminar

/*
$eliminar = Articulos::find(3);

$eliminar->delete();
*/
DB::connection('prueba')->enableQueryLog();

$resultado = DB::connection('prueba')->select('select * from articulos');

print json_encode($resultado);

DB::connection('prueba')->insert('insert into articulos (nombre) values (?)', ['Dayle']);

$ultimo = DB::connection('prueba')->table('articulos')->insertGetId(
['nombre' => 'john@example.com']);

echo "************************";
print $ultimo.PHP_EOL;
echo "************************";

$queries = DB::getQueryLog();


foreach(DB::connection('prueba')->getQueryLog() as $query) {
    echo "Query: {$query['query']}".PHP_EOL;
    echo "Execution Time: {$query['time']}ms".PHP_EOL;
    echo "Parameters: ".PHP_EOL;

    foreach($query['bindings'] as $key => $value) {
        echo "{$key} => {$value}".PHP_EOL;
    }
}

DB::connection('prueba')->statement('update articulos set nombre = "dalila" where id = 1');
DB::listen(function($sql, $bindings, $time) {
    print $sql."-----";
});

// Perform potentially risky queries in a transaction for easy rollback.
try {
    DB::connection('prueba')->transaction(function() {

        /** @var \Illuminate\Database\Connection $connectionManager */
        DB::connection('prueba')->insert('insert into articulos (nombre) values (?)', ['Dayle']);#$users = Capsule::table('Users')->where('id', '>', 2)->get();

    });

} catch (Exception $e) {
    echo "Uh oh! Inserting didn't work, but I was able to rollback. {$e->getMessage()}";
}



try {
    $nombre = DB::schema()->getConnection('prueba')->getDatabaseName();
    echo $nombre;

} catch (Exception $e) {
    echo $e->getMessage();
}


/*
DB::schema()->getConnection()->transaction(function()
{
try{


$insertar = DB::schema()->getConnection()->insert('insert into articulos (nombre) values (?)', ['Dayle']);
print $insertar.' -- insertar -- <br>';

$actualizar = DB::schema()->getConnection()->update('update articulos set nombre = "dalila" where id = ?', ['1']);
print $actualizar.' -- actualizar -- <br>';

#$eliminar = DB::schema()->getConnection()->delete('delete from users');
print $eliminar.' -- eliminar -- <br>';

#$proceso = DB::schema()->getConnection()->statement('truncate articuloss');
print $proceso.' -- proceso -- <br>';


#$resultado = DB::schema()->getConnection()->select('select * from articulos where id = :id', ['id' => 1]);
$resultado = DB::schema()->getConnection()->select('select * from articulos');
print json_encode($resultado);

}catch(Exception $e){
echo $e->getMessage();
}

});


*/
#print $producto = Articulos::all()->toJson();