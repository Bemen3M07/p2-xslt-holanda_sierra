<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html>
            <head>
                <title>Rooftop Snipers</title>
                
                <style>
                    /* Estilos previos ... */
                    
                    .popup-overlay {
                        display: none;
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
                        event.preventDefault(); // Prevenir el envío del formulario
                        
                        // Mostrar el popup
                        document.getElementById("popup-overlay").style.display = "flex";
                    }

                    function cerrarPopup() {
                        // Ocultar el popup y redirigir a index.xml
                        document.getElementById("popup-overlay").style.display = "none";
                        window.location.href = "index.xml";
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

                <!-- Formulario de contacto -->
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
