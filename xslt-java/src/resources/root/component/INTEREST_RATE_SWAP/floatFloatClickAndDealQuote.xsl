<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/base.xsl"/>
    <xsl:import href="../../common/xml/common/clickAndDealQuoteBase.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <xsl:template match="/" name="route-clickAndDealQuote-interestRateSwap-floatFloat">

        <Quote>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <!--master-quote-->
                <!--价格为净价-->
                <xsl:call-template name="master-clickAndDealQuote-withoutRate"/>

            </Master>

            <Slave>
                <!--parties-noContact-->
                <xsl:call-template name="slave-parties-withoutContact"/>

                <xsl:call-template name="slave-NoRoutingIDs"/>

                <xsl:call-template name="slave-NoLegs"/>
            </Slave>

        </Quote>

    </xsl:template>

</xsl:stylesheet>