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
   
    $correo = $_POST['email'];
    $contrasenia = $_POST['contraseña'];
    
// Crear la consulta SQL para insertar los datos
$sql = "INSERT INTO iniciosesion (Email , Contraseña) VALUES ('$correo','$contrasenia')";

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