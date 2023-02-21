<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://schema.slothsoft.net/farah/sitemap" xmlns:sfd="http://schema.slothsoft.net/farah/dictionary"
	xmlns:sfm="http://schema.slothsoft.net/farah/module" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/*">
		<domain name="historischer-spieleabend.slothsoft.net" vendor="slothsoft" module="historischer-spieleabend.slothsoft.net" ref="pages/home"
			status-active="" status-public="" sfd:languages="de-de" version="1.1">

			<page name="sitemap" ref="//slothsoft@farah/sitemap-generator" status-active="" />

			<file name="favicon.ico" ref="/logos/logo-small.png" />

			<page name="Manual" redirect="/">
				<xsl:for-each select="//@manual[. != '']">
					<file name="{.}" ref="/manuals/{.}" />
				</xsl:for-each>
			</page>

			<page name="GFX" redirect="/">
				<xsl:for-each select="//@gfx[. != '']">
					<file name="{.}" ref="/gfx/{.}" />
				</xsl:for-each>
			</page>

			<page name="logo-small.svg" ref="/logos/logo-small.svg" />
		</domain>
	</xsl:template>
</xsl:stylesheet>
				