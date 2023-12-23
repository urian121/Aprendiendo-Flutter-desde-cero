## Crear un contador con Flutter

##### Hya dos ejemplos practicos para crear un contador desde flutter

### Resultado 1

![](https://github.com/urian121/Aprendiendo-Flutter-desde-cero/blob/master/app_contador/contado-con-flutter-urian.png)

### Resultado 2

![](https://github.com/urian121/Aprendiendo-Flutter-desde-cero/blob/master/app_contador/contador-con-flutter.png)

##### Notas:

    MyApp y _MyAppState: Se define la aplicación Flutter y su estado interno.

    isTextVisible: Un booleano que determina si el texto debe ser visible u oculto.

    build Método:
        Scaffold: Proporciona la estructura básica de la interfaz de usuario.
        AppBar: Muestra una barra de aplicación en la parte superior.
        Column: Organiza los elementos en una columna, que es el cuerpo principal de la interfaz de usuario.
        Visibility: Controla la visibilidad del texto basado en el estado de isTextVisible.
        Text: Muestra el texto "Texto Mostrado".
        SizedBox: Agrega un espacio vertical.
        Row: Organiza los botones en una fila.
        ElevatedButton: Crea botones con texto ("Mostrar Texto" y "Ocultar Texto").

    setState: Actualiza el estado de isTextVisible al presionar los botones.
