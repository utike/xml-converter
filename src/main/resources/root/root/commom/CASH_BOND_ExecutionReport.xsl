<?result version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="base.xsl"/>

<xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent "/>



<xsl:template match="/">
  <xsl:apply-imports/>
</xsl:template>

</xsl:stylesheet>