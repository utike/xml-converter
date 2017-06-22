<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <xsl:template match="/" name="route-executionReport-interestRateSwap-fixFloat">

        <Order>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <!--master-quote-->
                <!--不涉及Price字段。-->
                <xsl:call-template name="master-executionReport-withoutRate"/>
            </Master>

            <Slave>
                <!--parties-withContact-->
                <xsl:call-template name="slave-parties-withContact"/>

                <!--slave-NoLegs-->
                <xsl:call-template name="slave-NoLegs-withRate"/>
            </Slave>

        </Order>

    </xsl:template>

</xsl:stylesheet>