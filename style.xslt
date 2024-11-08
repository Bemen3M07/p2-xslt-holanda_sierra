<?xml version="1.0" encoding="UTF-8"?>
<!-- Declaración del documento XML con versión y codificación -->
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <!-- Definición de la hoja de estilo XSL con la versión y el espacio de nombres XSL -->
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    <!-- Configuración de la salida del XSL para generar HTML con codificación UTF-8 y formato indentado -->
    
    <xsl:template match="/">
        <!-- Define una plantilla que se aplica al nodo raíz del XML -->

        <html>
            <head>
                <title>Rooftop Snipers</title>
                <!-- Título de la página web -->
                
                <style>
                    footer {
                        text-align: center;
                        padding: 20px;
                        background-color: #f4f4f4;
                        margin-top: 20px;
                    }
                    <!-- Estilo del pie de página, con centrado, espaciado y color de fondo -->

                    .play-button {
                        background-color: #ff5733; /* Color de fondo llamativo */
                        color: white; /* Texto en blanco */
                        font-weight: bold;
                        font-size: 1.2em;
                        padding: 12px 25px;
                        text-align: center;
                        border-radius: 8px;
                        text-decoration: none;
                        display: inline-block;
                        transition: background-color 0.3s;
                        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3); /* Sombra */
                    }
                    <!-- Botón de "Play" con fondo llamativo, sombra y transición de color al pasar el ratón -->

                    .play-button:hover {
                        background-color: #c43d22;
                        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.4);
                    }
                    <!-- Cambia el color y la sombra del botón al pasar el ratón por encima -->

                    body {
                        font-family: "Courier New", monospace;
                        background: linear-gradient(to bottom, #111, #333);
                        color: #fefefe;
                        margin: 0;
                        padding: 0;
                    }
                    <!-- Estilos generales del cuerpo, incluyendo fuente, colores de fondo y texto, y eliminación de márgenes -->

                    header, footer {
                        background: #444;
                        padding: 20px;
                        text-align: center;
                        animation: fadeIn 2s ease;
                    }
                    <!-- Estilos para el encabezado y pie de página, con animación de entrada y fondo oscuro -->

                    header h1 {
                        font-size: 2.5em;
                        color: #FF6347;
                    }
                    <!-- Título principal del encabezado, con tamaño y color llamativo -->

                    section {
                        margin: 20px;
                        padding: 20px;
                        background: #222;
                        border-radius: 8px;
                        box-shadow: 0 0 15px rgba(0, 0, 0, 0.6);
                        transition: transform 0.3s ease;
                    }
                    <!-- Sección de contenido con fondo oscuro, sombra y bordes redondeados; escala al pasar el ratón -->

                    section:hover {
                        transform: scale(1.02);
                    }
                    <!-- Agranda la sección ligeramente al pasar el ratón por encima -->

                    h2 {
                        color: #FF6347;
                    }
                    <!-- Título de segundo nivel con color resaltado -->

                    p, ul {
                        margin: 10px 0;
                    }
                    <!-- Espaciado para párrafos y listas -->

                    ul {
                        list-style-type: none;
                        padding: 0;
                    }
                    <!-- Listas sin viñetas ni relleno a la izquierda -->

                    li {
                        background: #333;
                        padding: 10px;
                        margin: 5px 0;
                        border-radius: 5px;
                        transition: background 0.3s ease;
                    }
                    <!-- Elementos de lista con fondo oscuro y borde redondeado, cambiando al pasar el ratón -->

                    li:hover {
                        background: #555;
                    }
                    <!-- Cambia el color de fondo de los elementos de lista al pasar el ratón -->

                    .credits {
                        font-size: 0.8em;
                        color: #aaa;
                    }
                    <!-- Estilo de créditos con fuente pequeña y color gris claro -->

                    .button {
                        display: inline-block;
                        padding: 15px 30px;
                        margin-top: 20px;
                        font-size: 1.2em;
                        font-weight: bold;
                        color: #ffffff;
                        background-color: #FF6347;
                        border: none;
                        border-radius: 50px;
                        text-transform: uppercase;
                        cursor: pointer;
                        transition: all 0.3s ease;
                        text-decoration: none;
                    }
                    <!-- Estilos para el botón, con formato de texto, colores y bordes redondeados. La transición permite un cambio suave al interactuar con el botón -->
                    .button:hover {
                        background-color: #ff4500;
                        box-shadow: 0px 8px 15px rgba(255, 99, 71, 0.5);
                        transform: scale(1.05);
                    }
                    <!-- Estilos del botón al pasar el ratón por encima: cambia el color de fondo, agrega sombra y aumenta el tamaño del botón -->
                    /* Columnas */
                    .columns {
                        display: grid;
                        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                        gap: 15px;
                    }
                    <!-- Define una estructura de columnas con un diseño de cuadrícula que ajusta el número de columnas automáticamente, con un espacio de 15px entre ellas -->
                    /* Animaciones */
                    @keyframes fadeIn {
                        from { opacity: 0; }
                        to { opacity: 1; }
                    }
                    <!-- Define una animación llamada "fadeIn" que hace que un elemento aparezca suavemente desde la opacidad 0 hasta 1 -->
                </style>
            </head>
            <body>
                <!-- Header -->
                <header>
                    <h1><xsl:value-of select="game/header/title"/></h1>
                    <p><xsl:value-of select="game/header/subtitle"/></p>
                </header>
                <!-- El encabezado muestra el título y subtítulo del juego extraídos del XML -->

                <!-- Description -->
                <section>
                    <h2>Descripción</h2>
                    <xsl:for-each select="game/description/paragraph">
                        <p><xsl:value-of select="."/></p>
                    </xsl:for-each>
                </section>
                <!-- Muestra la descripción del juego, iterando sobre cada párrafo dentro de la etiqueta <description> -->

                <!-- Game Modes -->
                <section>
                    <h2>Modos de Juego</h2>
                    <ul>
                        <xsl:for-each select="game/modes/mode">
                            <li>
                                <strong><xsl:value-of select="@name"/></strong> - 
                                <xsl:value-of select="details"/>
                            </li>
                        </xsl:for-each>
                    </ul>
                </section>
                <!-- Muestra los modos de juego, extrayendo el nombre y los detalles de cada modo -->


                <!-- Characters -->
                <section>
                    <h2>Personajes</h2>
                    <div class="columns">
                        <xsl:for-each select="game/characters/character">
                            <div>
                                <strong><xsl:value-of select="@name"/></strong>: 
                                <p><xsl:value-of select="description"/></p>
                                <img src="{@image}" alt="{@name}" style="width: 50%; border-radius: 5px;"/>
                            </div>
                        </xsl:for-each>
                    </div>
                </section>
<<<<<<< HEAD
                
=======
                <!-- Muestra una lista de personajes, cada uno con nombre, descripción y una imagen. Las imágenes tienen un tamaño del 50% y bordes redondeados -->

>>>>>>> f919a11e5feee06d6e701d1f49a8a2b5a76da941
                <!-- Controls -->
                <section>
                    <h2>Controles</h2>
                    <div class="columns">
                        <xsl:for-each select="game/controls/control">
                            <div>
                                <strong><xsl:value-of select="action"/></strong> - 
                                <p><xsl:value-of select="keys"/></p>
                            </div>
                        </xsl:for-each>
                    </div>
                </section>
                <!-- Muestra los controles del juego, con la acción y las teclas asociadas a cada control -->

                <!-- Footer -->
                <footer>
                    <a href="https://poki.com/es/g/rooftop-snipers-2" class="play-button">JUGAR YA</a>
                    <!-- Enlace para jugar, con el estilo de botón previamente definido -->
                     <p class="credits"><xsl:value-of select="game/footer/credits"/></p>
                     <!-- Muestra los créditos del juego -->
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
