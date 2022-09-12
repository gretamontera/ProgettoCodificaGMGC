<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:tei="http://www.tei-c.org/ns/1.0"
	xmlns="http://www.w3.org/1999/xhtml">
<xsl:output method="html" encoding="UTF-8" omit-xml-declaration= "yes" indent="yes"/>
<xsl:template match="/">
	<html>
			<head>
				<title>Prolusioni 1 di F.De Saussure - Progetto di Codifica dei Testi</title>
				<link href="prog.css" rel="stylesheet" type="text/css"/>
				<xsl:value-of select="tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"></xsl:value-of>
				 
				
			</head>
		<body>
				<img id="background" src="img/sfondocarta.jpeg"/>
				<header>
					<h1>Prolusioni 1, Ferdinand De Saussure</h1>
					<img id="tit_img" src="img/saussure_a.jpeg"/>
				</header>
				<nav id="navbar">
					<ul>
						<li>
							<a href= "#Infogen"> Informazioni generali </a>
						</li>
						<li>
							<a href= "#Pag15"> Pagina 15</a>
						</li>
						<li>
							<a href= "#Pag16">Pagina 16</a>
						</li>
						<li>
							<a href= "#elemTerm">glossario</a>
						</li>
					</ul>
				</nav>
				<div class="container" id="Infogen">
					<h3 id="introduzione"> Introduzione generale</h3>
					<p>Manoscritto ad opera di 
						
						
						<b>
							<xsl:value-of select="//tei:titleStmt//tei:author"></xsl:value-of>
						</b>.
					
					
					</p>
					<xsl:value-of select="//tei:history"></xsl:value-of>
					<p>È possibile consultare il manoscritto codificato presso l'archivio online dell'
						
						
						<xsl:value-of select="//tei:publicationStmt/tei:publisher"></xsl:value-of>.
					
					
					</p>
					<p>Fruizione:
						
						
						<xsl:value-of select="//tei:publicationStmt/tei:availability"></xsl:value-of>
					</p>
				</div>
				<div>
					<h3>Materiale e supporto</h3>
					<p>Materiale e dimensione: 
						
						
						<xsl:value-of select="//tei:supportDesc"></xsl:value-of>
					</p>
					<p>Caratteri: 
						
						
						<xsl:value-of select="//tei:typeDesc"></xsl:value-of>
					</p>
					<p>Lunghezza: 
						
						
						<xsl:value-of select="//tei:layoutDesc"></xsl:value-of>
					</p>
				</div>
				<div>
					<h3>Collocazione</h3>
					<xsl:apply-templates select="//tei:settingDesc"/>
					<p>Identificativo: 
						
						
						<xsl:value-of select="//tei:sourceDesc/tei:msDesc/tei:msIdentifier//tei:idno"/>
					</p>
				</div>
				<!-- Trascrizione pagina 15 in francese, poi traduzione-->
				<div class="container-p15" id="Pag15">
					<div class="titolo">
						<h3>Pagina 15</h3>
						<img id="pagina15" src="img/15.jpeg"/>
					</div>
					<div class="img-wrapper">
						<xsl:element name="img">
							<xsl:attribute name="src">
								<xsl:value-of select="//tei:graphic[@xml:id='imm44']/@url"/>
							</xsl:attribute>
							<xsl:attribute name="id">Pagina 15</xsl:attribute>
						</xsl:element>
					</div>
					<div class="trascrizione1">
						<xsl:apply-templates select="//tei:text//tei:div[@n = '15']"/>
					</div>
				</div>
				<div class="traduzione1">
					<h4> Traduzione in italiano </h4>
					<span id='testoTraduzione' class='show'>
						<xsl:value-of select="//tei:text//tei:div[@n = '1']"></xsl:value-of>
					</span>
				</div>
				<!-- pagina vuota tra la 15 e la 16-->
				<div class="paginavuota" id="PagVuota">
					<div class="emptypage">
						<h3>Pagina vuota</h3>
						<img id="paginavuota" src="img/vuota.jpeg"/>
					</div>
					<div class="img-wrapper">
						<xsl:element name="img">
							<xsl:attribute name="src">
								<xsl:value-of select="//tei:graphic[@xml:id='imm46']/@url"/>
							</xsl:attribute>
							<xsl:attribute name="id">PagVuota</xsl:attribute>
						</xsl:element>
					</div>
				</div>

				<!--pagin 16-->
				<div class="container-p16" id="Pag16">
					<div class="titolo">
						<h3>Pagina 16</h3>
						<img id="pagina16" src="img/16.jpeg"/>
					</div>
					<div class="img-wrapper">
						<xsl:element name="img">
							<xsl:attribute name="src">
								<xsl:value-of select="//tei:graphic[@xml:id='imm45']/@url"/>
							</xsl:attribute>
							<xsl:attribute name="id">Pagina 16</xsl:attribute>
						</xsl:element>
					</div>
					<div class="trascrizione2">
						<xsl:apply-templates select="//tei:text//tei:div[@n = '16']"/>
					</div>
				</div>
				<div class="traduzione2">
					<h4> Traduzione in italiano </h4>
					<span id='testoTraduzione' class='show'>
						<xsl:value-of select="//tei:text//tei:div[@n = '2']"></xsl:value-of>
					</span>
				</div>
				<h3 id="elemTerm"> Elementi terminologici</h3>
				<div class="container-term">
					<xsl:apply-templates select="//tei:back/tei:list"/>
				</div>
				<div class="container-bibliog" id="Info">
					<h3 id="bibliografia"> Bibliografia </h3>
					<xsl:apply-templates select="//tei:listBibl"/>
				</div>
				<div class="container-about">
					<h3 id="about"> Riferimenti </h3>
					<xsl:apply-templates select="//tei:editionStmt"/>
					<p>Traduzione di: 
					<xsl:value-of select="//tei:fileDesc/tei:titleStmt/tei:respStmt/tei:name[@xml:id='EF']"></xsl:value-of>
					</p>
				</div>
		     
		</body>
	</html>
</xsl:template>
	




				<!--Glossario-->
	<xsl:template match="//tei:back/tei:list/tei:label">
					<xsl:for-each select="current()/tei:term">
						<xsl:element name="ol">
						</xsl:element>
					</xsl:for-each>
	</xsl:template>
				<!--elementi terminologici-->
	<xsl:template match="//tei:term">
					<span class="elemTerm">
						<xsl:value-of select="."/>
					</span>
	</xsl:template>
				<!--Cancellazioni-->
	<xsl:template match="//tei:del">
					<span class="cancellazioni">
						<xsl:value-of select="."/>
					</span>
	</xsl:template>
				<!-- Elementi mancanti -->
	<xsl:template match="tei:gap">
					<span class="gap"></span>
	</xsl:template>
				<!--Aggiunte-->
	<xsl:template match="//tei:add">
					<span class="aggiunte">
						<xsl:value-of select="."/>
					</span>
	</xsl:template>
				<!--Sostituzioni trascrizione-->
	<xsl:template match="tei:choice">
					<xsl:element name="span">
						<xsl:attribute name="class">choice</xsl:attribute>
						<xsl:element name="span">
							<xsl:attribute name="class">sic</xsl:attribute>
							<xsl:value-of select="tei:sic" />
						</xsl:element>
						<xsl:element name="span">
							<xsl:attribute name="class">corr</xsl:attribute>
							<xsl:value-of select="tei:corr" />
						</xsl:element>
					</xsl:element>
	</xsl:template>
				<!--Abbreviazioni-->
	<xsl:template match="tei:abbr">
					<span class="abbreviazioni">
						<xsl:value-of select="."/>
					</span>
	</xsl:template>
				<!--Espansioni-->
	<xsl:template match="tei:expan">
					<span class="espansioni">
						<xsl:value-of select="."/>
					</span>
	</xsl:template>
				<!--Bibliografia-->
	<xsl:template match="tei:listBibl">
					<xsl:for-each select="current()/tei:biblStruct">
						<xsl:element name="li">
							<xsl:for-each select="current()//tei:author">
								<xsl:element name="span">
									<xsl:for-each select="current()//tei:forename">
										<xsl:apply-templates />
									</xsl:for-each>
									<xsl:text></xsl:text>
									<xsl:for-each select="current()//tei:surname">
										<xsl:apply-templates />
									</xsl:for-each>
								</xsl:element>
								<xsl:text>, </xsl:text>
							</xsl:for-each>
							<xsl:element name="span">
								<xsl:element name="i">
									<xsl:for-each select="current()//tei:title">
										<xsl:apply-templates />
										<xsl:text>, </xsl:text>
									</xsl:for-each>
								</xsl:element>
							</xsl:element>
							<xsl:element name="span">
								<xsl:for-each select="current()//tei:pubPlace">
									<xsl:apply-templates />
									<xsl:text>- </xsl:text>
								</xsl:for-each>
							</xsl:element>
							<xsl:element name="span">
								<xsl:apply-templates select="current()//tei:date" />
								<xsl:text>. </xsl:text>
							</xsl:element>
						</xsl:element>
					</xsl:for-each>
	</xsl:template>
				<!--Riferimenti editoriali-->
	<xsl:template match="tei:editionStmt">
					<p>
						<xsl:value-of select="current()/tei:edition"></xsl:value-of>
					</p>
					<p>Progetto a cura di: 
					
					
						<xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='GM']"></xsl:value-of> 
					
					
						<xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='GC']"></xsl:value-of>
					</p>
					<p>Coordinato da: 
					
					
						<xsl:value-of select="current()/tei:respStmt/tei:name[@xml:id='AMDG']"></xsl:value-of>
					</p>
	</xsl:template>




</xsl:stylesheet>



