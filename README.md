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
* entonces: ejecute el Visual Code con el plugin de flutter y ejecute el comando desde la terminal del visual Studio code  

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
6. En este punto si toda la instalación ha ocurrido de manera correcta, podrá ejecutar su Emulador sin ningún problema
* **Si Existen Errores**
Al poner a correr el emulador le pide Instalar **[intel® haxm](https://github.com/intel/haxm/releases/download/v7.7.0/haxm-windows_v7_7_0.zip)** pero la instalación termina Fallida ejecutandolo desde el IDE de Andorid Studio, deberá instalaro manualmente.
* <p>Si despues de esto al ejecutar el Emulador, el IDE arroja el mensaje "El proceso del emulador ha terminado" o algo similar deberá crear un archivo para solucionar este error</p>

* **Archivo Solucion**
* La pagina donde se econtró la solución es la siguiente: ``` https://exerror.com/solved-the-emulator-process-for-avd-pixel_c_api_30-was-killed-in-windows/ ```
* Se necesitará crear un archivo en la ruta ``` C:\Users\"Su_nombre_de_Usuario"\.android``` el nombre del archivo será **advancedFeatures.ini** y debera Escribir dentro del archivo las siguientes lineas de codigo:
``` 
# Here's how to disable Vulkan apps to talk to the emulator.

# Add the following lines to ~/.android/advancedFeatures.ini (create this file if it doesn't exist already):

Vulkan = off
GLDirectMem = on
``` 
Con esto su emulador deberia ejecutarse de forma correcta y ya podriamos lanzar el emulador desde Visual Studio Code.

<h2>Aceptación de Lincecias</h2>
Antes de Iniciar a trabajar con flutter se debe aceptar las licencias del SDK-de-Android

1. Asegurece de tener Instalada la version 8 de JAVA y que el ambiente de [JAVA_HOME] este configurado en la carpeta JDK's
2. En las versiones de Android Studio 2.2 o mayores viene con este JDK instalado y listo para usar
3. Abra la consola o la powershell con permisos de administrado para ejecutar el siguiente comando con el fin de aceptar las licensias: ```flutter doctor --android-licenses``` (Acepte las licencias).

**Si APARECE UN ERROR**
* Si le sale un error donde dice que el SDK manager de Android estudio no fue encontrado, que revise que tenga el ultimo SDK y asegurece de cmdLine-tools este instalado para resolver esto.
* entonces:
* 3.1. Cierre la PowerShell o Cmd
* 3.2. Ejecute el Android Studio, en más Acciones busque la opción SdkManager
* 3.3. Luego seleccione la pestaña SDK Tools
* 3.4. Hagan Check sobre la opción "Android SDK Command Line Tools (Lastest)" 
* 3.5. Apliquen los cambios y Aceptenlos.
* 3.6. Puede cerrar Android Studio
* 3.7. Ejecute nuevamente el paso #3 de Aceptación de Lincencias
4. Una vez aceptadas las licencias (y que resolvieran el error si lo tuvieron), ejecute nuevamente el comando ```flutter doctor``` para revisar que no falte por configurar ningun componente

# Ahora ya puedes Crear tu Proyecto de Flutter o descargarlo y empezar a trabajar en el.




