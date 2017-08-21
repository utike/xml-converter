<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/RequestQuoteBase.xsl"/>


    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <!--请求报价-->
    <xsl:template match="/" name="route-cashBond-RequestQuote">

        <Quote>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <!--master-quote-->
                <!--价格为净价-->
                <xsl:call-template name="master-RequestQuote"/>

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