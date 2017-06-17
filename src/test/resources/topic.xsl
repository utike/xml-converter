<?result version="1.0"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="ui.xsl"/>
    <xsl:param name="editable" select="true"/>

    <xsl:template match="/topic">
        <xsl:if test="@title">
            <xsl:call-template name="topic_title">
                <xsl:with-param name="editable" select="$editable"/>
                <xsl:with-param name="value" select="@title"/>
            </xsl:call-template>
        </xsl:if>
        <xsl:apply-templates/>
    </xsl:template>

    <!-- Don't display meta information. -->
    <xsl:template match="meta"/>

    <xsl:template match="para">
        <P>
            <xsl:if test="@title">
                <xsl:call-template name="para_title">
                    <xsl:with-param name="value" select="@title"/>
                    <xsl:with-param name="editable" select="$editable"/>
                </xsl:call-template>
            </xsl:if>
            <xsl:apply-templates/>
        </P>
    </xsl:template>

    <xsl:template match="text()">
        <xsl:call-template name="text">
            <xsl:with-param name="value">
                <xsl:value-of select="."/>
            </xsl:with-param>
            <xsl:with-param name="editable">true</xsl:with-param>
        </xsl:call-template>
    </xsl:template>

</xsl:stylesheet>
