<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="gb2312"
                indent="yes" cdata-section-elements="DataContent" />

    <xsl:template match="/">


        INSERT INTO [dbo].[cfets_quotes]
        (
            <xsl:for-each select="Quote/Master/*">
                <xsl:call-template name="fields"/>
            </xsl:for-each>
        ) VALUES (
            <xsl:for-each select="Quote/Master/*">
                <xsl:call-template name="values"/>
            </xsl:for-each>
        );



        <xsl:for-each select="Quote/Slave/Parties/Party">

            INSERT INTO [dbo].[details_parties]
            (
                <xsl:for-each select="*">
                    <xsl:call-template name="fields"/>
                </xsl:for-each>
                ,[GUID]
            ) VALUES
            (
                <xsl:for-each select="*">
                    <xsl:call-template name="values"/>
                </xsl:for-each>
                ,GUID()
            );
        </xsl:for-each>


    </xsl:template>


    <xsl:template name="fields">
        <xsl:choose>
            <xsl:when test="position() = 1">
                [<xsl:value-of select="name()"/>]
            </xsl:when>
            <xsl:otherwise>
                ,[<xsl:value-of select="name()"/>]
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>

    <xsl:template name="values">
        <xsl:choose>
            <xsl:when test="position() = 1">
                '<xsl:value-of select="current()"/>'
            </xsl:when>
            <xsl:otherwise>
                ,'<xsl:value-of select="current()"/>'
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>



</xsl:stylesheet>