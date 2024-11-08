<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Formulario de Contacto</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f9f9f9;
                        color: #333;
                        display: flex;
                        align-items: center;
                        justify-content: center;
                        height: 100vh;
                        margin: 0;
                    }
                    .form-container {
                        background-color: #fff;
                        padding: 20px;
                        border-radius: 8px;
                        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                        text-align: center;
                    }
                    .form-container h2 {
                        color: #ff5733;
                    }
                    input, textarea {
                        width: 100%;
                        padding: 10px;
                        margin: 10px 0;
                        border-radius: 4px;
                        border: 1px solid #ddd;
                    }
                    .submit-button {
                        padding: 12px 24px;
                        background-color: #ff5733;
                        color: white;
                        font-weight: bold;
                        border: none;
                        border-radius: 4px;
                        cursor: pointer;
                    }
                    .submit-button:hover {
                        background-color: #c43d22;
                    }
                </style>
            </head>
            <body>
                <div class="form-container">
                    <h2>Contacto</h2>
                    <form action="formulario.xml">
                        <input type="text" name="nombre" placeholder="Nombre" required/>
                        <input type="email" name="correo" placeholder="Correo electrónico" required/>
                        <textarea name="mensaje" placeholder="Mensaje" required></textarea>
                        <button type="submit" class="submit-button">Enviar</button>
                    </form>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>