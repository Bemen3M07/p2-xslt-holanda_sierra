<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" indent="yes" />
    <xsl:template match="/">
        <html>
            <head>
                <title>Rooftop Snipers</title>
                <!-- Importación de fuente retro pixelada -->
                <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet"/>
                <style>
                    body {
                        font-family: 'Press Start 2P', cursive;
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
                    .columns {
                        display: grid;
                        grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
                        gap: 15px;
                    }
                    @keyframes fadeIn {
                        from { opacity: 0; }
                        to { opacity: 1; }
                    }
                </style>
            </head>
            <body>
                <!-- Header -->
                <header>
                    <h1><xsl:value-of select="game/header/title"/></h1>
                    <p><xsl:value-of select="game/header/subtitle"/></p>
                </header>
                
                <!-- Description -->
                <section>
                    <h2>Descripción</h2>
                    <xsl:for-each select="game/description/paragraph">
                        <p><xsl:value-of select="."/></p>
                    </xsl:for-each>
                </section>

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

                <!-- Characters -->
                <section>
                    <h2>Personajes</h2>
                    <div class="columns">
                        <xsl:for-each select="game/characters/character">
                            <div>
                                <strong><xsl:value-of select="@name"/></strong>: 
                                <p><xsl:value-of select="description"/></p>
                                <img src="{@image}" alt="{@name}" style="width: 100%; border-radius: 5px;"/>
                            </div>
                        </xsl:for-each>
                    </div>
                </section>

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

                <!-- Footer -->
                <footer>
                    <p class="credits"><xsl:value-of select="game/footer/credits"/></p>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
