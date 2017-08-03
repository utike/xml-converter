<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <xsl:template match="/" name="route-dialogQuote-bondForward">

        <Quote>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <!--master-quote-->
                <!--没有price字段，所以不涉及利率-->
                <xsl:call-template name="master-dialogQuote-withoutRate"/>
            </Master>

            <Slave>
                <!--parties-noContact-->
                <xsl:call-template name="slave-parties-withoutContact"/>

                <xsl:call-template name="slave-noUnderlyings-withStipValue"/>
            </Slave>

        </Quote>

    </xsl:template>

</xsl:stylesheet>