<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:param name="bootstrap-path" select="concat($workspace, '/bootstrap')" />

<xsl:template match="data" mode="page-title">
	<xsl:param name="site-name" select="$website-name" />
	<title>
		<!-- If not the homepage -->
		<xsl:if test="$current-path != '/'">
			<xsl:value-of select="$page-title" />
			<xsl:text> | </xsl:text>
		</xsl:if>
		<xsl:value-of select="$site-name"/>
	</title>
</xsl:template>

<xsl:template match="data" mode="css">
	<xsl:comment> Le styles </xsl:comment>
	<link rel="stylesheet" href="{$bootstrap-path}/css/bootstrap.css" />
	<link rel="stylesheet" href="{$bootstrap-path}/css/bootstrap-responsive.css" />
</xsl:template>

<xsl:template match="data" mode="cc">
	<xsl:comment> Le HTML5 shim, for IE6-8 support of HTML5 elements </xsl:comment>
	<xsl:comment><![CDATA[[if lt IE 9]><script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]]]></xsl:comment>
</xsl:template>

<xsl:template match="data" mode="js">
	<xsl:comment> Le javascript </xsl:comment>
	<script src="http://code.jquery.com/jquery-1.7.1.min.js"></script>
	<script src="{$bootstrap-path}/js/bootstrap.min.js"></script>
</xsl:template>

<xsl:template match="data" mode="nav">
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="#"><xsl:value-of select="$page-title"/></a>
				<div class="nav-collapse">
					<ul class="nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#about">About</a></li>
						<li><a href="#contact">Contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</xsl:template>

</xsl:stylesheet>