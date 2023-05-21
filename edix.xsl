<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Instituto Tecnológico Edix</title>
 <style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        margin-left: 360px;
        margin-right: 360px;
        background-color: #f5f5f5;
        color: #333;
    }

    h1 {
        color: blue;
        font-size: 24px;
        margin-top: 30px;
        margin-bottom: 20px;
        text-align: center;
    }

    h2 {
        color: blue;
        font-size: 18px;
        margin-top: 20px;
        margin-bottom: 10px;
    }

    p, ul, li {
        font-size: 14px;
        line-height: 1.5;
    }

    a {
        color: #337ab7;
    }

    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
        background-color: #fff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }

    th, td {
        padding: 10px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #defffe;
        font-weight: bold;
    }

    ul {
        list-style-type: disc;
        margin-left: 20px;
    }

    .contact-form input[type="text"],
    .contact-form textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .contact-form input[type="submit"] {
        padding: 10px 20px;
        background-color: #337ab7;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    .contact-form input[type="submit"]:hover {
        background-color: #23527c;
    }
</style>

            </head>
            <body>
                <h1>
                    <xsl:value-of select="/ite/@nombre" />
                </h1>
                <p>
                    <a href="{/ite/@web}">Accede a nuestra web</a>
                </p>
                <table>
                    <tr>
                        <th>Empresa</th>
                        <td>
                            <xsl:value-of select="/ite/empresa" />
                        </td>
                    </tr>
                    <tr>
                        <th>Teléfono</th>
                        <td>
                            <xsl:value-of select="/ite/telefono" />
                        </td>
                    </tr>
                </table>
                <h2>Profesores</h2>
                <table>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                    </tr>
                    <xsl:for-each select="/ite/profesores/profesor">
                        <tr>
                            <td>
                                <xsl:value-of select="id" />
                            </td>
                            <td>
                                <xsl:value-of select="nombre" />
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h2>Director</h2>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Despacho</th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="/ite/director/nombre" />
                        </td>
                        <td>
                            <xsl:value-of select="/ite/director/despacho" />
                        </td>
                    </tr>
                </table>
                <h2>Jefe de Estudios</h2>
                <table>
                    <tr>
                        <th>Nombre</th>
                        <th>Despacho</th>
                    </tr>
                    <tr>
                        <td>
                            <xsl:value-of select="/ite/jefe_estudios/nombre" />
                        </td>
                        <td>
                            <xsl:value-of select="/ite/jefe_estudios/despacho" />
                        </td>
                    </tr>
                </table>
                <h2>Ciclos</h2>
<ul>
    <xsl:for-each select="/ite/ciclos/ciclo">
        <li>
            <xsl:attribute name="title">
                <xsl:value-of select="grado"/>
            </xsl:attribute>
            <xsl:value-of select="nombre" />
        </li>
    </xsl:for-each>
</ul>
                <h2>Formulario de contacto</h2>
    <form class="contact-form" action="enviar.php" method="post">
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre"/>
                    <label for="email">Email:</label>
                    <input type="text" id="email" name="email" />
                    <label for="mensaje">Mensaje:</label>
                    <textarea id="mensaje" name="mensaje" ></textarea>
                    <input type="submit" value="Enviar"/>
                </form>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
            
