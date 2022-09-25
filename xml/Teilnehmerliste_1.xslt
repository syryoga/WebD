<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="teilnehmerliste">
		<html>
			<head>
				<title>Teilnehmerliste IT-AP14</title>
			</head>
			<body>
				<h1>Teilnehmer IT-AP14</h1>
				<ol>
					<xsl:apply-templates/>
				</ol>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="teilnehmer">
		<li>
			<xsl:value-of select="vorname"/>
			<xsl:text> </xsl:text>
			<xsl:value-of select="nachname"/>
		</li>
	</xsl:template>

</xsl:stylesheet>
