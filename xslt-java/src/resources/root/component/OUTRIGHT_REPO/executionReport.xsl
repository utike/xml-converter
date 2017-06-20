<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent "/>


    <xsl:template match="/" name="route-executionReport-outright-repo">

        <Order>

            <!--header-->
            <xsl:call-template name="header"/>

            <!--master-quote-->
            <Master>
                <xsl:call-template name="master-executionReport-withRate"/>
            </Master>

            <Slave>
                <!--parties-noContact-->
                <xsl:call-template name="slave-parties-withContact"/>

                <!--Underlyings-->
                <xsl:call-template name="slave-noUnderlyings-withStipValue"/>
            </Slave>

        </Order>

    </xsl:template>


</xsl:stylesheet>