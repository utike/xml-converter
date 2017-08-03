<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/executionReportBase.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <xsl:template match="/" name="route-collateralRepo-executionReport">

        <Order>

            <!--header-->
            <xsl:call-template name="header"/>

            <!--master-quote-->
            <Master>
                <xsl:call-template name="master-executionReport-withRate"/>
            </Master>

        </Order>

    </xsl:template>

</xsl:stylesheet>