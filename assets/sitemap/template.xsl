<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
	xmlns="http://schema.slothsoft.net/farah/sitemap"
	xmlns:sfd="http://schema.slothsoft.net/farah/dictionary"
	xmlns:sfm="http://schema.slothsoft.net/farah/module"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/*">
		<domain name="historischer-spieleabend.slothsoft.net"
			vendor="slothsoft" module="historischer-spieleabend.slothsoft.net"
			ref="pages/company" status-active="" status-public=""
			sfd:languages="en-us" version="1.1">
			<page name="CursedBroom" ref="pages/game" status-active=""
				status-public="" />

			<page name="downloads" redirect=".." status-active="">
				<xsl:for-each
					select="*[@name = 'downloads']/*/sfm:manifest-info">
					<file name="{@name}" ref="{@url}" status-active="" />
				</xsl:for-each>
			</page>

			<page name="sitemap" ref="//slothsoft@farah/sitemap-generator"
				status-active="" />
				
			<file name="favicon.ico" ref="static/favicon"/>

			<xsl:for-each
				select="*[@name = 'manifest']//*[@name = 'static']/sfm:resource">
				<file name="{@name}" ref="static/{@name}" status-active="" />
			</xsl:for-each>
		</domain>
	</xsl:template>
</xsl:stylesheet>
				