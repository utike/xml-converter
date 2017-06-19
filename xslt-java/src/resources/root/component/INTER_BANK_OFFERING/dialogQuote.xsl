<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <xsl:template match="/" name="route-dialogQuote-ibo">

        <Quote>

            <!--header-->
            <xsl:for-each select="/">
                <xsl:call-template name="header"/>
            </xsl:for-each>

            <Master>
                <!--master-quote-->
                <xsl:for-each select="/">
                    <xsl:call-template name="master-dialogQuote-withRate"/>
                </xsl:for-each>
            </Master>

            <Slave>
                <!--parties-noContact-->
                <xsl:for-each select="/">
                    <xsl:call-template name="slave-parties-noContact"/>
                </xsl:for-each>
            </Slave>

        </Quote>

    </xsl:template>

</xsl:stylesheet>