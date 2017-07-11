<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/Base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <xsl:template match="/" name="route-cashBond-MarketDataSnapshotFullRefreshSql">

        <Quote>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <!--master-quote-->
                <xsl:call-template name="master-dialogQuote-withoutRate"/>

                <!--master-quote-NoStipulations-->
                <xsl:call-template name="master-dialogQuote-NoStipulations"/>
            </Master>

            <Slave>
                <!--parties-noContact-->
                <xsl:call-template name="slave-parties-withoutContact"/>
            </Slave>

        </Quote>

    </xsl:template>

</xsl:stylesheet>