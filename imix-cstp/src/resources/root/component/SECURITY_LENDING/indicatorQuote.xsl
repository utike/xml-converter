<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/base.xsl"/>
    <xsl:import href="../../common/xml/common/indicatorQuoteBase.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <xsl:template match="/" name="route-indicatorQuote-securityLending">

        <Quote>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <!--master-quote-->
                <xsl:call-template name="master-indicatorQuote-withRate"/>

                <!--master-quote-NoMiscFees-->
                <xsl:call-template name="master-indicatorQuote-NoMiscFees"/>
            </Master>

            <Slave>
                <!--parties-noContact-->
                <xsl:call-template name="slave-parties-withoutContact"/>

                <xsl:call-template name="slave-noUnderlyings-onlyFields"/>

                <xsl:call-template name="slave-NoRoutingIDs"/>

                <xsl:call-template name="slave-NoMarginInfos"/>
            </Slave>

        </Quote>

    </xsl:template>

</xsl:stylesheet>