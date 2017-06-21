<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/base.xsl"/>
    <xsl:import href="../../common/xml/common/indicatorQuoteBase.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <xsl:template match="/" name="route-indicatorQuote-interestRateSwap-fixFloat">

        <Quote>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <!--master-quote-->
                <!--不涉及price-->
                <xsl:call-template name="master-indicatorQuote-noRate"/>
            </Master>

            <Slave>
                <!--parties-noContact-->
                <xsl:call-template name="slave-parties-noContact"/>

                <!--slave-NoLegs-->
                <xsl:call-template name="slave-NoLegs"/>

                <!--slave-NoRoutingIDs-->
                <xsl:call-template name="slave-NoRoutingIDs"/>
            </Slave>

        </Quote>

    </xsl:template>

</xsl:stylesheet>