<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/master.xsl"/>

<xsl:template match="data">
	<h1>Symphony Greets the World</h1>
	<ul>
		<xsl:apply-templates select="greetings/entry"/>
	</ul>
</xsl:template>

<xsl:template match="greetings/entry">
	<li><xsl:value-of select="greeting-text"/></li>
</xsl:template>

</xsl:stylesheet>