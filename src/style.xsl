<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Rooftop Snipers</title>
                <style>
                    body {
                        font-family: Arial, sans-serif;
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