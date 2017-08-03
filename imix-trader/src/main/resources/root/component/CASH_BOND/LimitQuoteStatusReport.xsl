<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/LimitQuoteStatusReportBase.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <!--限价报价的 新增/撤销 反馈-->
    <xsl:template match="/" name="route-cashBond-LimitQuoteStatusReport">

        <Quote>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <xsl:call-template name="master-LimitQuoteStatusReport"/>

                <xsl:call-template name="master-NoDeliveryTypeOption"/>
            </Master>

            <Slave>
                <!--parties-noContact-->
                <xsl:call-template name="slave-parties-withoutContact"/>
            </Slave>

        </Quote>

    </xsl:template>

</xsl:stylesheet>