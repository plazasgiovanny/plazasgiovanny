<h1>Readme:Instalación Flutter y Componentes para el proyecto de GENEXIA</h1>

# Programas
* [VSCode](https://code.visualstudio.com/)
* [Git](https://git-scm.com/)
* [Android Studio](https://developer.android.com/studio)

# Plugins VisualCode

* [Awesome Flutter Snippets](https://marketplace.visualstudio.com/items?itemName=Nash.awesome-flutter-snippets)

* [Bracket Pair Colorizer 2](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer-2)

* [Dart](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code)

* [Flutter](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)

* [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)

* [Paste JSON as Code](https://marketplace.visualstudio.com/items?itemName=quicktype.quicktype)

* [Terminal](https://marketplace.visualstudio.com/items?itemName=formulahendry.terminal)

# Instalación Flutter-SDK
<p>En la pagina Ofical se puede encontrar la documentación necesaria, sin embargo la replicaremos traducida en este Readme, dejamos el enlace acontinuación:</p>

* [Flutter](https://flutter.dev/)

<h2>Instalación para Windows</h2>
<p>Para instalar y correr Flutter, su entorno de desarrollo (Computador) debe tener minimamente las siguiente especificaciones :</p>
<p>Sistema Operativo: Windows 7 SP1 or later (64-bit), x86-64 based.</p>
Espacio en disco : 1.64 GB (No incluye el espacio para las IDE/tools).</p>
Windows PowerShell 5.0 o mas nuevo (Este viene pre-instalado en Windows 10)</p>

<h2>Flutter SDK</h2>
<h3>Primer Paso:</h3>
<p>Nunca descomprima o clone la carpeta de Flutter en la ruta C:\Program Files\ debido a que puede generar problemas por permisos de administrador</p>
<p>Para la instalción del SDK puede Descargar el comprimido Zip ó puede Clonar en una carpeta el repositorio Git</p>

* [Flutter_windows.zip](https://storage.googleapis.com/flutter_infra_release/releases/stable/windows/flutter_windows_2.8.1-stable.zip)

``` 
git clone https://github.com/flutter/flutter.git -b stable

``` 
<h3>Segundo Paso:</h3>
<h2>Actualizacion del Path</h2>
<p>Para correr los comando de Flutter por consola y a nivel global de su PC debe editar el Path ubicado en las variable de entorno de la siguiente manera:</p>

* Desde su barra de busqueda tecle 'env'  y seleccione **Edit environment variables for your account** o en español **Editar las variables de entorno de esta cuenta**
* Si dentro existe existe una variable llamada "Path", editela y agrega la ubicacion de la carpeta Bin del SDK de flutter; ejemplo: **C:\flutter\bin**
* Si no existe Cree la nueva variable "Path" y dentro agrege la ubicacion de la carpeta Bin del SDK de flutter; ejemplo: **C:\flutter\bin**
<p> luego acepte y cierre el editor de varible de entorno; para saber que el SDK de flutter quedo correctamente Instalado, abra el cmd o la PowerShell y ejecute el comando :</p>

```
flutter --version
```
<p>Esto le Mostrará la version Instalada de Flutter</p>
<h3>OJO Posible Error (Recomendación)<h3>

* Si por alguna razón al ejecutar el comando "flutter --version" y este se queda como cargando o pensando y no muestra la versión y ningún error
* entonces: ejecute el Visual Code con el plugin de flutter y ejecute el comando desde la terminal del visual code  

<h3>Tercer Paso:</h3>
<h2>Flutter Doctor</h2>
<p>Luego de la correcta instalación del SDK de flutter es necesario ejecutar el comando:</p>

```
flutter doctor
```
<p>Este comando verifica su entorno y muestra un informe del estado de su instalación de Flutter. Verifique la respuesta del comando para ver si hay otro software que pueda necesitar instalar 
<p>o complementos que hagan falta de ejecutar</p>
<h3>OJO <h3>

* Esposible que salga que hace falta instalar complemento de android Studio o algunas licencia, pero esto se corregirá más adelante 

# Android Studio

Según la guia de instalación de flutter es necesario Instalar y configurar Android Studio.

<h2>Instalación Android Studio</h2>

1. Descargue e Instale [Android Studio](https://developer.android.com/studio)
2. Abra el Instalador de Android Studio y siga los paso dentro del mismo
3. Luego de instalarlo, Ejecute Android Studio, si ha tenido alguna vez android studio en su maquina puede importar configuracion sino puede descartar esta opcion no importando nada.
4. Al ejecutar Android Studio descargará e Instalará el SDK del mismo
5. Cuando lleguen a la pantalla de Bienvenida, en la barra lateral Izquierda pueden mirar que hay otras opciones, dentro de estas una llamada Plugins, se dirigen a esta.
6. En el buscador de la pestaña se Buscan los plugins  Dart y Flutter y se instalan. (Es necesario reiniciar el programa para la instalación de los plugins)

<h2>Configuración Emulador Android</h2>

* **Es importante:**    tener en cuenta que la maquina en la cual estan llevando acabo su intalación debe Tener habilitada la Hyper-Virtualización
                        la cual se activa desde la Bios y el proceso para llevar acabo la activación depende de cada maquina.

1. Ejecute Andorid Studio, en la pantalla de Bienvendia habrá una opción llamada **More Actions** o **Más Acciones**
2. Dentro de las opciones desplegadas se debe seleccionar **AVD Manager**.
3. Ahora se procede a realizar la creacion del dispositivo Virtual, haciendo Click ne la opción **Create Virtual Device** o **Creación de dispositivo Virtual**
4. Se puede seleccionar uno de los dipositivos que el Android Studio tiene Pre-configurados por defecto o Crear uno desde cero.
* cuando configuren la RAM del dispositivo lo recomendable es poner 4GB por ende su maquina deberia tener mas de 4GB
5. Despues de configurar el Dispositivo, deberá seleccionar el sistema operativo que usted quíera que el dispositivo tenga (selecciones una imagen x86 o una x86_64)






