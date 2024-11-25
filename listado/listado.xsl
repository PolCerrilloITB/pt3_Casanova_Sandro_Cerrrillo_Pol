<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/receptes">
    <xsl:for-each select="recepta">
      <xsl:result-document href="./recepta_{position()}.html" method="html">
        <html>
          <head>
            <title><xsl:value-of select="nom"/></title>
            <link rel="stylesheet" type="text/css" href="../css/recetas.css"/>
          </head>
          <body>
            <header>
                <div class="header-container">
                    <img src="../imatges/Logo-Delicias.png" alt="Logo" class="logo">
                    <nav class="navbar">
                        <ul>
                            <li><a href="../index.html">Inicio</a></li>
                            <li><a href="../sobre_mi/sobre.html">Sobre mí</a></li>
                            <li><a href="../listado/listado.html">Recetas</a></li>
                            <li><a href="../contacto/contacto.html">Contacto</a></li>
                            <li><a href="#OtrasCosas">Otras Cosas</a></li>
                        </ul>
                    </nav>
                    </img>
                </div>
              </header>
              <div>
                  <h1><xsl:value-of select="nom"/></h1>
                  <img>
                      <xsl:attribute name="src">
                          <xsl:value-of select="imatge"/>
                      </xsl:attribute>
                      <xsl:attribute name="alt">
                          <xsl:value-of select="nom"/>
                      </xsl:attribute>
                  </img>
              </div>
              <section>
                  <h2>Ingredientes</h2>
                  <ul>
                      <xsl:for-each select="ingredientes/ingrediente">
                          <li>
                              <xsl:value-of select="concat(cantidad, ' ', medida)"/> de <xsl:value-of select="nom"/>
                          </li>
                      </xsl:for-each>
                  </ul>
                  <h2>Pasos</h2>
                  <ul>
                      <xsl:for-each select="preparacion/paso">
                          <li>
                              <xsl:value-of select="."/>
                          </li>
                      </xsl:for-each>
                  </ul>
              </section>
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
          </body>
        </html>
      </xsl:result-document>
    </xsl:for-each>
  </xsl:template>

</xsl:stylesheet>
