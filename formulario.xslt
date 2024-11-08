<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Rooftop Snipers</title>
                
                <style>
                    footer {
                        text-align: center;
                        padding: 20px;
                        background-color: #f4f4f4;
                        margin-top: 20px;
                    }

                    .play-button {
                        background-color: #ff5733;
                        color: white;
                        font-weight: bold;
                        font-size: 1.2em;
                        padding: 12px 25px;
                        text-align: center;
                        border-radius: 8px;
                        text-decoration: none;
                        display: inline-block;
                        transition: background-color 0.3s;
                        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
                    }

                    .play-button:hover {
                        background-color: #c43d22;
                        box-shadow: 0 6px 12px rgba(0, 0, 0, 0.4);
                    }

                    body {
                        font-family: "Courier New", monospace;
                        background: linear-gradient(to bottom, #111, #333);
                        color: #fefefe;
                        margin: 0;
                        padding: 0;
                    }

                    header, footer {
                        background: #444;
                        padding: 20px;
                        text-align: center;
                        animation: fadeIn 2s ease;
                    }

                    header h1 {
                        font-size: 2.5em;
                        color: #FF6347;
                    }

                    section {
                        margin: 20px;
                        padding: 20px;
                        background: #222;
                        border-radius: 8px;
                        box-shadow: 0 0 15px rgba(0, 0, 0, 0.6);
                        transition: transform 0.3s ease;
                        text-align: center; 
                    }

                    section:hover {
                        transform: scale(1.02);
                    }

                    h2 {
                        color: #FF6347;
                    }

                    p, ul {
                        margin: 10px 0;
                    }

                    ul {
                        list-style-type: none;
                        padding: 0;
                    }

                    li {
                        background: #333;
                        padding: 10px;
                        margin: 5px 0;
                        border-radius: 5px;
                        transition: background 0.3s ease;
                    }

                    li:hover {
                        background: #555;
                    }

                    .credits {
                        font-size: 0.8em;
                        color: #aaa;
                    }

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

                    .button:hover {
                        background-color: #ff4500;
                        box-shadow: 0px 8px 15px rgba(255, 99, 71, 0.5);
                        transform: scale(1.05);
                    }
                    
                    .columns {
                        display: grid;
                        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                        gap: 15px;
                    }

                    .form-container {
                        margin-top: 30px;
                        display: flex;
                        justify-content: center;
                        gap: 20px;
                    }

                    .form-container input, .form-container textarea {
                        width: 100%;
                        padding: 10px;
                        margin: 10px 0;
                        border: 1px solid #ccc;
                        border-radius: 5px;
                        background-color: #333;
                        color: #fff;
                    }

                    .form-container button {
                        padding: 12px 30px;
                        background-color: #ff5733;
                        border: none;
                        border-radius: 5px;
                        color: white;
                        font-weight: bold;
                        cursor: pointer;
                    }

                    .form-container button:hover {
                        background-color: #c43d22;
                    }

                    @keyframes fadeIn {
                        from { opacity: 0; }
                        to { opacity: 1; }
                    }
                    /* Estilos popup*/
                    
                    /* Asegúrate de que el popup esté oculto inicialmente */
                    .popup-overlay {
                        display: none; /* Popup oculto al cargar la página */
                        position: fixed;
                        top: 0;
                        left: 0;
                        width: 100%;
                        height: 100%;
                        background-color: rgba(0, 0, 0, 0.8);
                        align-items: center;
                        justify-content: center;
                        z-index: 999;
                    }
                    
                    .popup-content {
                        background-color: #fff;
                        padding: 20px;
                        border-radius: 8px;
                        text-align: center;
                        color: #333;
                        width: 80%;
                        max-width: 300px;
                    }

                    .popup-content h3 {
                        color: #ff5733;
                    }

                    .popup-close-button {
                        padding: 10px 20px;
                        background-color: #ff5733;
                        color: white;
                        border: none;
                        border-radius: 5px;
                        cursor: pointer;
                        margin-top: 20px;
                    }

                    .popup-close-button:hover {
                        background-color: #c43d22;
                    }
                </style>
                <script>
                    function mostrarPopup(event) {
                        event.preventDefault(); // Prevenir envío de formulario
                        document.getElementById("popup-overlay").style.display = "flex"; // Mostrar el popup
                    }

                    function cerrarPopup() {
                        document.getElementById("popup-overlay").style.display = "none";
                        window.location.href = "index.xml"; // Redirigir a index.xml
                    }
                </script>
            </head>
            <body>
                <header>
                    <h1><xsl:value-of select="game/header/title"/></h1>
                    <p><xsl:value-of select="game/header/subtitle"/></p>
                </header>

                <section>
                    <h2>Descripción</h2>
                    <xsl:for-each select="game/description/paragraph">
                        <p><xsl:value-of select="."/></p>
                    </xsl:for-each>
                </section>

                <section class="form-container">
                    <form onsubmit="mostrarPopup(event)">
                        <input type="text" name="name" placeholder="Nombre" required />
                        <input type="email" name="email" placeholder="Correo electrónico" required />
                        <textarea name="message" placeholder="Mensaje" required></textarea>
                        <button type="submit">Enviar</button>
                    </form>
                </section>

                <!-- Popup de confirmación -->
                <div id="popup-overlay" class="popup-overlay">
                    <div class="popup-content">
                        <h3>¡Felicidades! Ya eres miembro de la RooftCrew!</h3>
                        <button class="popup-close-button" onclick="cerrarPopup()">Cerrar</button>
                    </div>
                </div>

                <footer>
                    <p class="credits"><xsl:value-of select="game/footer/credits"/></p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
