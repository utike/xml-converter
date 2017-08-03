<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="../../common/xml/common/base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent "/>


    <xsl:template match="/" name="route-dialogQuote-outrightRepo">

        <Quote>

            <!--header-->
            <xsl:call-template name="header"/>

            <!--master-quote-->
            <Master>
                <xsl:call-template name="master-dialogQuote-withRate"/>
            </Master>

            <Slave>
                <!--parties-noContact-->
                <xsl:call-template name="slave-parties-withoutContact"/>

                <!--Underlyings-->
                <xsl:call-template name="slave-noUnderlyings-withStipValue"/>

            </Slave>

        </Quote>

    </xsl:template>


</xsl:stylesheet>