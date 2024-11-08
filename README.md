# Rooftop Snipers

## Descripción

**Rooftop Snipers** es un emocionante juego de disparos donde compites con otro jugador en un combate uno a uno en lo alto de un edificio. El objetivo es evitar caer del tejado y derribar a tu oponente. ¡Demuestra quién es el mejor francotirador!

### Modos de Juego

- **Un jugador**: Compite contra la IA en emocionantes partidas.
- **Multijugador**: Juega con un amigo en el mismo dispositivo y demuestra quién es el mejor.

### Personajes

- **Sniper 1**: Un francotirador clásico con gran precisión.
- **Sniper 2**: Un tirador veloz con reflejos increíbles.

### Controles

- **Saltar**: 
  - Jugador 1: `W`
  - Jugador 2: `Flecha arriba`
  
- **Disparar**: 
  - Jugador 1: `E`
  - Jugador 2: `Flecha derecha`

## Eines Utilitzades per a la Part Servidor

El proyecto utiliza las siguientes herramientas en la parte del servidor para generar y mostrar el contenido dinámico:

- **XSLT (Extensible Stylesheet Language Transformations)**: Se utiliza para transformar el archivo XML (`index.xml`) en una página web HTML. 
- **XML (Extensible Markup Language)**: El archivo `index.xml` contiene los datos del juego, como el título, descripción, personajes, modos de juego y controles.

### Estructura del archivo XSLT

El archivo **`style.xslt`** transforma el archivo XML en HTML, con los siguientes elementos clave:

- **Header**: Muestra el título y subtítulo del juego.
- **Description**: Presenta una descripción detallada del juego.
- **Modes**: Enumera los modos de juego (Un jugador y Multijugador).
- **Characters**: Detalla los personajes jugables con sus descripciones e imágenes.
- **Controls**: Indica los controles para cada jugador.
- **Footer**: Incluye los créditos y un enlace para jugar al juego en línea.

## Requeriments per a l'Execució del Projecte

El proyecto necesita las siguientes herramientas y recursos para su ejecución:

- **Servidor Web**: Para servir los archivos HTML generados por XSLT.
- **Navegador Web**: Para acceder al contenido transformado en HTML desde el navegador.
- **Herramienta de XSLT**: Se requiere una herramienta o biblioteca para aplicar la transformación XSLT al archivo XML, como `xsltproc` o cualquier biblioteca de XSLT disponible en el entorno de servidor que estés utilizando.

## Instruccions per a l'Instal·lació i Execució

Sigue estos pasos para ejecutar el proyecto en tu máquina local:

1. **Instalar Dependencias**:
   Si utilizas un servidor web local, como Apache o Nginx, asegúrate de tener configurado un entorno donde se pueda servir el contenido estático generado por XSLT.
   
