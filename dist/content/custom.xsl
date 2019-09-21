<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="1.0" 
    xmlns:eg="http://www.tei-c.org/ns/Examples"
    xmlns:tei="http://www.tei-c.org/ns/1.0" 
    xmlns:xd="http://www.oxygenxml.com/ns/doc/xsl"
    xmlns:exsl="http://exslt.org/common"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt"
    xmlns:fn="http://www.w3.org/2005/xpath-functions"
    extension-element-prefixes="exsl msxsl"
    xmlns="http://www.w3.org/1999/xhtml" 
    xmlns:html="http://www.w3.org/1999/xhtml" 
    exclude-result-prefixes="xsl tei xd eg fn #default">
    
    <!-- import teibp.xsl, which allows templates, 
         variables, and parameters from teibp.xsl 
         to be overridden here. -->
    <xsl:import href="teibp.xsl"/>
 
    <xsl:param name="filePrefix" select="'../../assets'"/>

    <xsl:template name="htmlHead">
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../../assets/css/main.css" />
		<link id="maincss" rel="stylesheet" type="text/css" href="{$teibpCSS}"/>
		<link id="customcss" rel="stylesheet" type="text/css" href="{$customCSS}"/>
		<xsl:call-template name="tagUsage2style"/>
		<xsl:call-template name="rendition2style"/>
	</head>
    </xsl:template>
  
    <xsl:template match="/" name="htmlShell" priority="99">
	<html>
		<xsl:call-template name="htmlHead"/>
		<body class="is-preload">
			<div id="wrapper">
				<div id="main">
					<div class="inner">
						@@include('../../fragments/header.html')
						<xsl:if test="$includeToolbox = true()">
							<xsl:call-template name="teibpToolbox"/>
						</xsl:if>
						<div id="tei_wrapper">
							<xsl:apply-templates/>
						</div>
						<xsl:copy-of select="$htmlFooter"/>
						<script type="text/javascript" src="{$teibpJS}"></script>
						<script src="../../assets/js/jquery.min.js"></script>
						<script src="../../assets/js/browser.min.js"></script>
						<script src="../../assets/js/breakpoints.min.js"></script>
						<script src="../../assets/js/util.js"></script>
						<script src="../../assets/js/main.js"></script>
					</div>
				</div>
				@@include('../../fragments/sidebar.html')
			</div>
		</body>
	</html>
    </xsl:template>

</xsl:stylesheet>
