<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes" />
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Formulario de Contacto</title>
                <style>
                    body {
                        font-family: "Courier New", monospace;
                        background: linear-gradient(to bottom, #111, #333);
                        color: #fefefe;
                        margin: 0;
                        padding: 0;
                        display: flex;
                        align-items: center;
                        justify-content: center;
                        height: 100vh;
                    }
                    .form-container {
                        background-color: #222;
                        padding: 20px;
                        border-radius: 8px;
                        box-shadow: 0 0 15px rgba(0, 0, 0, 0.6);
                        width: 300px;
                        text-align: center;
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
                    .submit-button {
                        background-color: #FF6347;
                        color: white;
                        font-weight: bold;
                        padding: 10px 20px;
                        border: none;
                        border-radius: 5px;
                        cursor: pointer;
                        transition: background-color 0.3s;
                    }
                    .submit-button:hover {
                        background-color: #ff4500;
                    }
                    .close-button {
                        background-color: #444;
                        color: white;
                        font-weight: bold;
                        padding: 10px 20px;
                        border: none;
                        border-radius: 5px;
                        cursor: pointer;
                        margin-top: 10px;
                    }
                </style>
            </head>
            <body>
                <div class="form-container">
                    <xsl:choose>
                        <!-- Si el formulario no ha sido enviado, muestra el formulario -->
                        <xsl:when test="not(/form/sent)">
                            <form action="formulario.xsl">
                                <input type="text" name="name" placeholder="Nombre" required />
                                <input type="email" name="email" placeholder="Correo electrónico" required />
                                <textarea name="message" placeholder="Mensaje"></textarea>
                                <button type="submit" class="submit-button">Enviar</button>
                            </form>
                        </xsl:when>
                        
                        <!-- Si el formulario ha sido enviado, muestra el mensaje de confirmación -->
                        <xsl:otherwise>
                            <p>El formulario se ha enviado correctamente.</p>
                            <button class="close-button" onclick="window.location.href='index.html'">Cerrar</button>
                        </xsl:otherwise>
                    </xsl:choose>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>