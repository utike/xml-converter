<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>

    <!--质押式回购-对话报价-成交(确认/拒绝)-->
    <xsl:template match="/" name="route-collateralRepo-dialogOrder">

        <Order>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <!--master-quote-->
                <xsl:call-template name="master-order-withRate"/>

                <!--master-quote-NoStipulations-->
                <xsl:call-template name="master-order-NoStipulations"/>
            </Master>

            <Slave>
                <!--parties-withContact-->
                <xsl:call-template name="slave-parties-withContact"/>
            </Slave>

        </Order>

    </xsl:template>

</xsl:stylesheet>