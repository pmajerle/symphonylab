<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../utilities/bootstrap.xsl"/>

<xsl:output method="xml"
	doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
	doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"
	omit-xml-declaration="yes"
	encoding="UTF-8"
	indent="yes" />

<xsl:template match="/">

<html lang="en">
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
		<meta name="description" content="" />
		<meta name="author" content="" />

		<xsl:apply-templates mode="page-title" />
		<xsl:apply-templates mode="css" />
		<xsl:apply-templates mode="cc" />
	</head>

	<body>
		<xsl:apply-templates mode="nav" />
		<xsl:apply-templates/>

		<xsl:apply-templates mode="js" />
	</body>
</html>

</xsl:template>

</xsl:stylesheet>