<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>

    <!--现券买卖-对话报价-成交(确认/拒绝)-->
    <!--对应 executionReport-->
    <xsl:template match="/" name="route-cashBond-dialogOrder">

        <Order>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <!--master-quote-->
                <xsl:call-template name="master-order-withoutRate"/>

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