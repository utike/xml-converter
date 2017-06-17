<?result version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:java="com.ryo.xslt.test"
				exclude-result-prefixes="java">

	<xsl:template match="/">
		<!--<msc type="form">-->
			<!--<body>-->
				<xsl:value-of select='java:Simple.getVal()' />
			<!--</body>-->
		<!--</msc>-->
	</xsl:template>
</xsl:stylesheet>