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
    <xsl:param name="includeAnalytics" select="false()"/>
    <xsl:param name="includeToolbox" select="false()"/>

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
							<header id="header">
									<a href="index.html" class="logo"><strong>Le Dit du berceau au tombeau</strong> </a>
									
								</header>
						<xsl:if test="$includeToolbox = true()">
							<xsl:call-template name="teibpToolbox"/>
						</xsl:if>
						<div id="tei_wrapper">
							<xsl:apply-templates/>
						</div>
						<xsl:copy-of select="$htmlFooter"/>
					</div>
				</div>
								<!-- Sidebar -->
					<div id="sidebar">
						<div class="inner">

							<!-- Menu -->
								<nav id="menu">
									<header class="major">
										<h2>Menu</h2>
									</header>
									<ul>
										<li><a href="/Dits-du-Moyen-Age/index.html">Accueil</a></li>
										<li><a href="/Dits-du-Moyen-Age/presentation.html">Presentation</a></li>
										<li><a href="/Dits-du-Moyen-Age/colloque.html">Colloque</a></li>
										<li><a href="/Dits-du-Moyen-Age/blog.html">Blog</a></li>
                                        <li>
                                            <span class="opener">Textes</span>
											<ul>
                                                <li><a href="/Dits-du-Moyen-Age/textes.html">Liste des textes</a></li>
												<li><a href="/Dits-du-Moyen-Age/wardecors.html">Baudouin de Condé, <cite>Dit du wardecors</cite> / <cite>Dit du Garde-Corps</cite></a></li>
												<li><a href="/Dits-du-Moyen-Age/dragon.html">Baudouin de Condé, <cite>Dit du dragon</cite></a></li>
												<li><a href="/Dits-du-Moyen-Age/gentillesse.html">Baudouin de Condé, <cite>Conte de gentilleche</cite></a></li>
												<li><a href="/Dits-du-Moyen-Age/olifant.html">Baudouin de Condé, <cite>Conte de l’olifant</cite></a></li>
                                                <li><a href="/Dits-du-Moyen-Age/roseBaudouin.html">Baudouin de Condé, <cite>Dit de la Rose</cite></a></li>
												<li><a href="/Dits-du-Moyen-Age/roseChristine.html">Christine de Pizan, <cite>Dit de la Rose</cite></a></li>
                                                <li><a href="/Dits-du-Moyen-Age/remede.html">Guillaume de Machaut, <cite>Remède de Fortune</cite></a></li>
                                                <li><a href="/Dits-du-Moyen-Age/helinand.html">Hélinand de Froidmont, <cite>Vers de la mort</cite></a></li>
                                                 <li><a href="/Dits-du-Moyen-Age/conges.html">Jean Bodel, <cite>Congés</cite></a></li>
												<li><a href="/Dits-du-Moyen-Age/entendement.html">Jean de Condé, <cite>Dit d’entendement</cite></a></li>
                                                <li><a href="/Dits-du-Moyen-Age/deuxcompaignons.html">Jean de Condé, <cite>Dit de deus loiaus compaignons</cite></a></li>
												<li><a href="/Dits-du-Moyen-Age/franchise.html">Jean de Condé, <cite>Dit de Franchise</cite></a></li>
                                                <li><a href="/Dits-du-Moyen-Age/roi.html">Jean de Condé, <cite>Dit du roi et des ermites</cite></a></li>
												<li><a href="/Dits-du-Moyen-Age/messe.html">Jean de Condé, <cite>La messe des oiseaux</cite></a></li>
                                                <li><a href="/Dits-du-Moyen-Age/jacobins.html">Jean de Condé, <cite>Dit des Jacobins et des Fremeneurs</cite></a></li>
                                                <li><a href="/Dits-du-Moyen-Age/clerc.html">Jean de Condé, <cite>Du clerc qui fut repus deriere l’escring</cite></a></li>
                                                 <li><a href="/Dits-du-Moyen-Age/buef.html">Jean de Saint-Quentin, <cite>Dit du buef</cite></a></li>
                                                <li><a href="/Dits-du-Moyen-Age/chanoinnes.html">Jean de Saint-Quentin, <cite>Dit des trois chanoinnes</cite></a></li>
                                                <li><a href="/Dits-du-Moyen-Age/escoufle.html">Jean Renart, <cite>L’Escoufle</cite></a></li>
                                                <li><a href="/Dits-du-Moyen-Age/panthere.html">Nicole de Margival, <cite>Dit de la panthère d’amour</cite></a></li>
                                                 <li><a href="/Dits-du-Moyen-Age/houdenc_eles.html">Raoul de Houdenc, <cite>Le Roman des eles</cite></a></li>
                                                 <li><a href="/Dits-du-Moyen-Age/houdenc_enfer.html">Raoul de Houdenc, <cite>Songe d’Enfer</cite></a></li>
                                                 <li><a href="/Dits-du-Moyen-Age/houdenc_dit.html">Raoul de Houdenc, <cite>Dit</cite></a></li>
                                                 <li><a href="/Dits-du-Moyen-Age/houdenc_paradis.html">Raoul de Houdenc, <cite>Voie de Paradis</cite></a></li>
                                                <li><a href="/Dits-du-Moyen-Age/thibaut.html">Thibaut de Marly, <cite>Vers</cite></a></li>
                                                <li><a href="/Dits-du-Moyen-Age/cinousdit.html"><cite>Ci nous dit</cite></a></li>
                                                <li><a href="/Dits-du-Moyen-Age/hiverete.html"><cite>Débat de l’hiver et de l’été</cite></a></li>
                                                <li><a href="/Dits-du-Moyen-Age/romandesromans.html"><cite>Roman des romans</cite></a></li>
                                                
											</ul>
                                        </li>
                                        <li><a href="/Dits-du-Moyen-Age/dist/content/mss.xml">Liste des manuscrits</a></li>
                                        <li><a href="/Dits-du-Moyen-Age/bibliographie.html">Bibliographie</a></li>
									</ul>
								</nav>

				
								

							<!-- Footer -->
								<footer id="footer">
									<p class="copyright">Ce projet est publié sous licence <a href="http://creativecommons.org/licenses/by-sa/4.0/deed.fr">Creative
                                        Commons Attribution, Partage dans les mêmes conditions 4.0</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
								</footer>

						</div>
					</div>

			</div>
			<script src="{$teibpJS}"></script>
			<script src="../../assets/js/jquery.min.js"></script>
			<script src="../../assets/js/browser.min.js"></script>
			<script src="../../assets/js/breakpoints.min.js"></script>
			<script src="../../assets/js/util.js"></script>
			<script src="../../assets/js/main.js"></script>
		</body>
	</html>
    </xsl:template>

</xsl:stylesheet>
