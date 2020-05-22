<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array fn map math xhtml xs err" version="3.0">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/> 	
	<xsl:template match="/">
	<html>
        <head>
              <title>VUELOS</title>
            <style>
         	body {
			background-color: #acd8f2;
		}            .imag{
            width:300px;
            height:165px;
            }
            table{background-image:url(../imagenes/fondoavion.svg);
                background-repeat: no-repeat;
                background-attachment: fixed;
            background-size: cover;}
            main {
			margin-top: -7px;
			margin-bottom: 200px;
			}
					h1{background-color:#003399;
					color: white;
					text-align: center;
					font-size: 45px;}
					td{text-align:center;
					font-size: 20px;}
					th{text-align:center;
					font-size: 20px;}
					table{margin:auto;}
					nav {
			margin-bottom: 40px;
			text-decoration: none;

		}
					body {
			background-color: #acd8f2;
		}

		.navegacion {
			background-image: url(../imagenes/edreams.svg);
			background-repeat: no-repeat;
			background-size: contain;
			background-position: left;
			display: inline-flex;
			background-color: #003399;
			width: 100%;
			height: 50px;
			border-spacing: inherit;
			margin-bottom: 20px;
			font-family: 'Lobster Two', cursive;
			text-decoration: none;

		}

		.Vuelos {

			font-family: 'Lobster Two', cursive;
			font-size: 1rem;
			padding-left: 180px;
			margin: auto;
			font-size: 30px;
			text-decoration: none;
			color: white;
		}

		.Hoteles {
			font-family: 'Lobster Two', cursive;
			font-size: 1rem;
			padding: 0px;
			margin: auto;
			font-size: 30px;
			text-decoration: none;
			color: white;

		}

		.CochesAlquiler {
			font-family: 'Lobster Two', cursive;
			font-size: 1rem;
			padding: 0px;
			margin: auto;
			font-size: 30px;
			text-decoration: none;
			color: white;

		}

		.registrar {
			font-family: 'Roboto Condensed', sans-serif;
			border-width: 0.0625rem;
			font-size: 1rem;
			line-height: 1rem;
			border-style: solid;
			padding: 7px;
			border-radius: 0.25rem;
			padding-left: 20px;
			padding-right: 20px;
			color: white;
			background-color: gray;
			text-decoration: none;
		}

		.sign {
			color: grey;
			margin-left: 10px;
			text-decoration: none;
		}

		nav {
			margin-bottom: 40px;
			text-decoration: none;

		}

		a:hover {
			color: #ffcc00;
			box-sizing: content-box;

		}

		.icon-bar {
			position: absolute;
			top: 50%;
			-webkit-transform: translateY(-50%);
			-ms-transform: translateY(-50%);
			transform: translateY(-50%);

		}

		.icon-bar a {
			display: block;
			text-align: center;
			padding: 16px;
			transition: all 0.3s ease;
			color: white;
			font-size: 20px;
		}

		.icon-bar a:hover {
			background-color: #000;

		}

		.facebook {
			background: #3B5998;
			color: white;
			border-radius: 1rem;
			border-style: inherit;
			margin-bottom: 3px;
			text-decoration: none;
		}

		.twitter {
			background: #55ACEE;
			color: white;
			border-radius: 1rem;
			border-style: inherit;
			margin-bottom: 3px;
			text-decoration: none;
		}

		.google {
			background: #dd4b39;
			color: white;
			border-radius: 1rem;
			border-style: inherit;
			margin-bottom: 3px;
			text-decoration: none;
		}

		.linkedin {
			background: #007bb5;
			color: white;
			border-radius: 1rem;
			border-style: inherit;
			margin-bottom: 3px;
			text-decoration: none;
		}

		.youtube {
			background: #bb0000;
			color: white;
			border-radius: 1rem;
			border-style: inherit;
			margin-bottom: 3px;
			text-decoration: none;
		}
		.menu {
			margin-left: 20px;
			font-family: 'Roboto Condensed', sans-serif;
			border-width: 0.0625rem;
			font-size: 1rem;
			line-height: 1rem;
			border-style: solid;
			padding: 7px;
			border-radius: 0.25rem;
			padding-left: 20px;
			padding-right: 20px;
			color: white;
			background-color: gray;
		}

            </style>
        </head>
        <body>
            <main>
            <nav>
           <div class="navegacion">

				<a href="vuelo.xml" class="Vuelos">Vuelos</a>
				<a href="hotel.xml" class="Hoteles">Hoteles</a>
				<a href="coche.xml" class="CochesAlquiler">Alquiler de Coches</a>
				<input type="search" placeholder="Encuentra vuelos, hoteles..." size="30px" />
			</div>
			<a href="../index.html" class="menu">MENÚ PRINCIPAL</a>
			
			</nav>
                <table border="4" bgcolor="#ffcc00">
                  <tr>
                    <th >Nombre</th>
                    <th>País</th>
                    <th>Provincia</th>
                    <th>Capacidad</th>
                    <th>N.Aviones</th>
                    <th>Imagenes de Aeropuertos</th>
                  </tr>
                    <xsl:for-each select="aeropuertos/aeropuerto">
                        <tr>
                             <td>
                                <xsl:value-of select="nombre"/>
                            </td>
                            <td>
                                <xsl:value-of select="pais"/>
                            </td>
                            <td>
                                <xsl:value-of select="provincia"/>
                            </td>
                            <td>
                                <xsl:value-of select="capacidad"/>
                            </td>
                            <td>
                                <xsl:value-of select="n.aviones"/>
                            </td>
                            <td><img class="imag">
                                <xsl:attribute name="src">
                                    <xsl:value-of select="foto"/>
                                </xsl:attribute>
                                </img>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </main>
        </body>

        </html>
	</xsl:template>
</xsl:stylesheet>

