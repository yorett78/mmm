<?php
// Establecer la conexión con la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "poisonbd";

$conn = mysqli_connect($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error al conectar con la base de datos: " . $conn->connect_error);
}

// Obtener los datos del formulario
    $nombre = $_POST['Nombre'];
    $correo = $_POST['CorreoElectronico'];
    $direccion = $_POST['Direccion'];
    $numeroTarjeta = $_POST['NumeroTarjeta'];
    $nombreTarjeta = $_POST['NombreTarjeta'];
    $fechaVencimiento = $_POST['FechaVencimiento'];
    $total = $_POST['Total'];

$total = strval($total); // Convertir el valor a una cadena

// Crear la consulta SQL para insertar los datos
$sql = "INSERT INTO compras (Nombre , CorreoElectronico , Direccion , NumeroTarjeta , NombreTarjeta , FechaVencimiento , Total) VALUES ('$nombre', '$correo', '$direccion', '$numeroTarjeta', '$nombreTarjeta', '$fechaVencimiento', '$total')";

// Ejecutar la consulta
if ($conn->query($sql) === TRUE) {
    // Datos insertados correctamente
    // Redirigir a otra página
    header("Location: index01.html");
    exit; // Asegurarse de que el código se detenga después de la redirección
} else {
    echo "Error al insertar los datos: " . $conn->error;
}
// Cerrar la conexión
$conn->close();
?>