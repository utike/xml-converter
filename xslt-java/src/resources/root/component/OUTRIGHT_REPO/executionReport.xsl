<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent "/>


    <xsl:template match="/" name="route-executionReport-outright-repo">

        <Order>

            <!--header-->
            <xsl:for-each select="/">
                <xsl:call-template name="header"/>
            </xsl:for-each>

            <!--master-quote-->
            <xsl:for-each select="/">
                <xsl:call-template name="master-executionReport-withRate"/>
            </xsl:for-each>

            <Slave>
                <!--parties-noContact-->
                <xsl:for-each select="/">
                    <xsl:call-template name="slave-parties-withContact"/>
                </xsl:for-each>

                <!--Underlyings-->
                <xsl:for-each select="/">
                    <xsl:call-template name="noUnderlyings-withStipValue"/>
                </xsl:for-each>
            </Slave>

        </Order>

    </xsl:template>


</xsl:stylesheet>