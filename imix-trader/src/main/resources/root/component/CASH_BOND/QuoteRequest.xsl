<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/QuoteRequestBase.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <xsl:template match="/" name="route-cashBond-QuoteRequest">

        <Quote>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <xsl:call-template name="master-QuoteRequest"/>

                <xsl:call-template name="master-QuoteRequest-NoRelatedSym"/>
            </Master>

            <Slave>
                <xsl:call-template name="slave-NoRelatedSym-parties"/>
            </Slave>

        </Quote>

    </xsl:template>

</xsl:stylesheet>