<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <!--对话报价-利率互换-固定动态-->
    <xsl:template match="/" name="route-dialogQuote-interestRateSwap-floatFloat">

        <Quote>

            <!--header-->
            <xsl:call-template name="header"/>


            <!--master-quote-->
            <Master>
                <xsl:call-template name="master-dialogQuote-withoutRate"/>
            </Master>

            <Slave>
                <!--parties-noContact-->
                <xsl:call-template name="slave-parties-withoutContact"/>

                <!--slave-NoLegs-->
                <xsl:call-template name="slave-NoLegs"/>
            </Slave>

        </Quote>

    </xsl:template>

</xsl:stylesheet>