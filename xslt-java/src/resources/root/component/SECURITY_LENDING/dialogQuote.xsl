<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="Note"/>


    <xsl:template match="/" name="route-dialogQuote-securityLending">

        <Quote>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <!--master-quote-->
                <xsl:call-template name="master-dialogQuote-withRate"/>

                <!--master-quote-NoMiscFees-->
                <xsl:call-template name="master-dialogQuote-NoMiscFees"/>
            </Master>

            <Slave>
                <!--parties-noContact-->
                <xsl:call-template name="slave-parties-withoutContact"/>

                <!--slave-noUnderlyings-onlyFields-->
                <xsl:call-template name="slave-noUnderlyings-onlyFields"/>

                <!--slave-NoMarginInfos-->
                <xsl:call-template name="slave-NoMarginInfos"/>
            </Slave>

        </Quote>

    </xsl:template>

</xsl:stylesheet>