<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:for-each select="field[@name]">
        <xsl:variable name="nodeName" select="@name" />
        <xsl:element name="{$nodeName}">
            <xsl:value-of select="."/>
        </xsl:element>
    </xsl:for-each>

</xsl:stylesheet>
