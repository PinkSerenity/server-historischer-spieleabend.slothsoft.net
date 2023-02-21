<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:php="http://php.net/xsl" xmlns:lio="http://slothsoft.net" xmlns:func="http://exslt.org/functions" extension-element-prefixes="func">

	<xsl:variable name="eventId" select="//page[@current]/@name" />
	<xsl:variable name="event" select="id($eventId)" />

	<xsl:template match="/*">
		<html>
			<head>
				<title>Historischer Spieleabend</title>
				<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=yes" />
				<link rel="icon" href="/favicon.ico" />
				<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
					integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous" />

				<xsl:copy-of select="." />
			</head>
			<body>
				<xsl:choose>
					<xsl:when test="$event">
						<xsl:apply-templates select="$event" />
					</xsl:when>
					<xsl:otherwise>
						<h1>
							<xsl:text>Error: Failed to find event with ID '</xsl:text>
							<xsl:value-of select="$eventId" />
							<xsl:text>'.</xsl:text>
						</h1>
					</xsl:otherwise>
				</xsl:choose>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="event">
		<h1>
			<xsl:value-of select="@theme" />
		</h1>
	</xsl:template>
</xsl:stylesheet>