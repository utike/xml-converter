<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <xsl:template match="/" name="route-cashBond-ExecutionReport">

        <Order>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <!--master-quote-->
                <xsl:call-template name="master-executionReport-withoutRate"/>

                <!--master-quote-NoStipulations-->
                <xsl:call-template name="master-executionReport-NoStipulations"/>
            </Master>

            <Slave>
                <!--parties-withContact-->
                <xsl:call-template name="slave-parties-withoutContact"/>
            </Slave>

        </Order>

    </xsl:template>

</xsl:stylesheet>