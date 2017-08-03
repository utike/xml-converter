<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/marketMakingQuoteBase.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <xsl:template match="/" name="route-cashBond-marketMakingQuote">

        <Quote>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <!--master-quote-->
                <!--净价-->
                <xsl:call-template name="master-marketMakingQuote-withoutRate"/>

            </Master>

            <Slave>
                <!--parties-noContact-->
                <xsl:call-template name="slave-parties-withoutContact"/>

                <xsl:call-template name="slave-NoRoutingIDs"/>

                <xsl:call-template name="slave-NoDeliveryTypeOptions"/>

                <xsl:call-template name="slave-NoLegs-withoutRate-withStipValue"/>
            </Slave>

        </Quote>

    </xsl:template>

</xsl:stylesheet>