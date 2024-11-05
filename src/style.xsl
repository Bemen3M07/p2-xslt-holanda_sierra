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