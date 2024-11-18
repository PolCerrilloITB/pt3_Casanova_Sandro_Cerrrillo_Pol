<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/receptes">
    <xsl:for-each select="recepta">
      <!-- Generar un document HTML per a cada recepta -->
      <xsl:result-document href="recepta_{position()}.html">
                <html>
                    <head>
                        <title>
                            <xsl:value-of select="titulo"/>
                        </title>
                        <!-- Vincula el archivo CSS externo -->
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
                        <h1>
                            <xsl:value-of select="titulo"/>
                        </h1>

                        <div class="ingredientes">
                            <h2>Ingredientes</h2>
                            <ul>
                                <!-- Recorre los ingredientes -->
                                <xsl:for-each select="ingredientes/ingrediente">
                                    <li>
                                        <xsl:value-of select="nombre"/>: 
                                        <xsl:value-of select="cantidad"/> 
                                        <xsl:value-of select="medida"/>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </div>

                        <div class="preparacion">
                            <h2>Preparación</h2>
                            <ol>
                                <!-- Recorre los pasos de preparación -->
                                <xsl:for-each select="preparacion/paso">
                                    <li>
                                        <xsl:value-of select="."/>
                                    </li>
                                </xsl:for-each>
                            </ol>
                        </div>
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