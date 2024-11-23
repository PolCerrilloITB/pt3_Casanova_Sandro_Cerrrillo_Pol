<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

    <!-- Encabezado -->
    <xsl:template name="header">
      <header>
        <div class="header-container">
          <nav class="navbar">
            <ul>
              <li><a href="../index.html">Inicio</a></li>
              <li><a href="../sobre_mi/sobre.html">Sobre mí</a></li>
              <li><a href="../listado/listado.html">Recetas</a></li>
              <li><a href="../contacto/contacto.html">Contacto</a></li>
              <li><a href="#OtrasCosas">Otras Cosas</a></li>
            </ul>
          </nav>
        </div>
      </header>
    </xsl:template>

    <!-- Pie de página -->
    <xsl:template name="footer">
      <footer>
        <ul>
          <li><a href="#">FACEBOOK</a></li>
          <li><a href="#">TWITTER</a></li>
          <li><a href="#">INSTAGRAM</a></li>
          <li><a href="#">PINTEREST</a></li>
          <li><a href="#">EMAIL</a></li>
          <li><a href="#">RSS</a></li>
        </ul>
      </footer>
    </xsl:template>

    <!-- Transformación principal -->
    <xsl:template match="/receptes">
      <xsl:for-each select="recepta">
        <xsl:result-document href="recepta_{position()}.html">
          <html>
            <head>
              <title><xsl:value-of select="nom"/></title>
              <link rel="stylesheet" type="text/css" href="../css/recetas.css"/>
            </head>
            <body>
              <xsl:call-template name="header"/>

              <h1><xsl:value-of select="nom"/></h1>
              <h2>Ingredients:</h2>
              <ul>
                <xsl:for-each select="ingredients/ingredient">
                  <li><xsl:value-of select="."/></li>
                </xsl:for-each>
              </ul>
              <h2>Instruccions:</h2>
              <p><xsl:value-of select="instruccions"/></p>

              <xsl:call-template name="footer"/>
            </body>
          </html>
        </xsl:result-document>
      </xsl:for-each>
    </xsl:template>

</xsl:stylesheet>
