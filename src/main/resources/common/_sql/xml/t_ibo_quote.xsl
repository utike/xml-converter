<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="gb2312"
                indent="yes" cdata-section-elements="DataContent" />


    <xsl:template match="/">
        <xsl:call-template name="fields"/>
    </xsl:template>




    <xsl:template name="fields">
        <xsl:for-each select="/Message/Body/*[position() = 1]">
            '<xsl:value-of select="name()"/>'
        </xsl:for-each>
        <xsl:for-each select="/Message/Body/*[position() != 1 and name() != 'INITIATOR' and name() != 'COUNTERPARTY']">
            ,'<xsl:value-of select="name()"/>'
        </xsl:for-each>
    </xsl:template>


</xsl:stylesheet>