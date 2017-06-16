<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    commonbase-header 生成模板-->
    <xsl:template match="/message/header" name="base-header">
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