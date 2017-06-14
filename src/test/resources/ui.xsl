<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template name="topic_title">
        <xsl:param name="editable"/>
        <xsl:param name="value"/>
        <H2>
            <xsl:attribute name="CONTENTEDITABLE">
                <xsl:value-of select="$editable"/>
            </xsl:attribute>
            <xsl:value-of select="$value"/>
        </H2>
    </xsl:template>

    <xsl:template name="para_title">
        <xsl:param name="value"/>
        <xsl:param name="editable"/>
        <DIV STYLE="font-size:16;
                font-family:Arial;
                font-weight:bold;
                font-style:italic"
             CONTENTEDITABLE="{$editable}">
            <xsl:value-of select="$value"/>
        </DIV>
    </xsl:template>

    <xsl:template name="text">
        <xsl:param name="value"/>
        <xsl:param name="editable"/>
        <SPAN CONTENTEDITABLE="{$editable}">
            <xsl:value-of select="$value"/>
        </SPAN>
    </xsl:template>


</xsl:stylesheet>