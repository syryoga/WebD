<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="teilnehmerliste">
		<html>
			<head>
				<title>Teilnehmerliste IT-AP14</title>
				<style>
					table,td,th{
					border:1px solid black;
					border-collapse: collapse;
					padding: 10px;
					font: bold 16pt verdana;
					}
					th{
					background-color:skyblue;
					color navy;
					width:250px;
					}
					th,td:hover{
					background-color:maroon;
					color:gold;
					}
					td,th:hover{
					background-color:gold;
					color:maroon;
					}
				</style>
			</head>
			<body>
				<h1>Teilnehmer IT-AP14</h1>
				<table>
					<tr>
						<th>Vorname</th>
						<th>Nachname</th>
						<th>Alter</th>
					</tr>
					<xsl:for-each select="teilnehmer">
						<xsl:choose>
							<xsl:when test="@geschlecht='Frau'">
								<tr>
									<td><xsl:value-of select="vorname"/></td>
									<td><xsl:value-of select="nachname"/></td>
									<td><xsl:value-of select="alter"/></td>
								</tr>
							</xsl:when>
						</xsl:choose>
						
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
