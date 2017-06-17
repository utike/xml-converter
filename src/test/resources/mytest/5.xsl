<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent "/>



    <xsl:template match="/">
        <Message>
            <xsl:template match="message/header">
                <xsl:call-template name="base-header"/>
            </xsl:template>
        </Message>
    </xsl:template>



    <xsl:template match="message/header" name="base-header">
        <xsl:element name="Header">
            <xsl:for-each select="field">
                <xsl:variable name="nodeName" select="@name"/>
                <xsl:element name="{$nodeName}">
                    <xsl:value-of select="current()"/>
                </xsl:element>
            </xsl:for-each>
        </xsl:element>
    </xsl:template>


</xsl:stylesheet>