<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text" version="1.0" encoding="gb2312"
                indent="yes" cdata-section-elements="DataContent" />

    <xsl:template match="/">


        INSERT INTO [dbo].[cfets_quotes]
        (
            <xsl:for-each select="Message/Header/*">
                '<xsl:value-of select="name()"/>',
            </xsl:for-each>

            <xsl:for-each select="Message/Body/*[position() = 1]">
                '<xsl:value-of select="name()"/>'
            </xsl:for-each>
            <xsl:for-each select="Message/Body/*[position() != 1 and name() != 'INITIATOR' and name() != 'COUNTERPARTY']">
                ,'<xsl:value-of select="name()"/>'
            </xsl:for-each>
        ) VALES (
        <xsl:for-each select="Message/Header/*">
            '<xsl:value-of select="string()"/>,'
        </xsl:for-each>

        <xsl:for-each select="Message/Body/*[position() = 1]">
            '<xsl:value-of select="string()"/>'
        </xsl:for-each>
        <xsl:for-each select="Message/Body/*[position() != 1 and name() != 'INITIATOR' and name() != 'COUNTERPARTY']">
            ,'<xsl:value-of select="string()"/>'
        </xsl:for-each>
        );


        <!--INITIATOR-->
        INSERT INTO [dbo].[details_parties]
        (
        <xsl:for-each select="Message/Body/INITIATOR/*[position() = 1]">
            '<xsl:value-of select="name()"/>'
        </xsl:for-each>
        <xsl:for-each
                select="Message/Body/INITIATOR/*[position() != 1 and name() != 'INITIATOR' and name() != 'COUNTERPARTY']">
            ,'<xsl:value-of select="name()"/>'
        </xsl:for-each>
        ) VALES (
        <xsl:for-each select="Message/Body/INITIATOR/*[position() = 1]">
            '<xsl:value-of select="string()"/>'
        </xsl:for-each>
        <xsl:for-each
                select="Message/Body/INITIATOR/*[position() != 1 and name() != 'INITIATOR' and name() != 'COUNTERPARTY']">
            ,'<xsl:value-of select="string()"/>'
        </xsl:for-each>
        );

        <!--COUNTERPARTY-->
        INSERT INTO [dbo].[details_parties]
        (
        <xsl:for-each select="Message/Body/COUNTERPARTY/*[position() = 1]">
            '<xsl:value-of select="name()"/>'
        </xsl:for-each>
        <xsl:for-each
                select="Message/Body/COUNTERPARTY/*[position() != 1]">
            ,'<xsl:value-of select="name()"/>'
        </xsl:for-each>
        ) VALES (
        <xsl:for-each select="Message/Body/COUNTERPARTY/*[position() = 1]">
            '<xsl:value-of select="string()"/>'
        </xsl:for-each>
        <xsl:for-each
                select="Message/Body/COUNTERPARTY/*[position() != 1]">
            ,'<xsl:value-of select="string()"/>'
        </xsl:for-each>
        );

    </xsl:template>

</xsl:stylesheet>