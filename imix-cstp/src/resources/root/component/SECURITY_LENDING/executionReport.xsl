<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
>

    <xsl:import href="../../common/xml/common/base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <xsl:template match="/" name="route-executionReport-securityLending">

        <Order>

            <!--header-->
            <xsl:call-template name="header"/>

            <Master>
                <!--master-executionReport-withRate-->
                <xsl:call-template name="master-executionReport-withRate"/>

                <!--master-executionReport-NoMiscFees-->
                <xsl:call-template name="master-executionReport-NoMiscFees"/>
            </Master>

            <Slave>
                <!--parties-withContact-->
                <xsl:call-template name="slave-parties-withContact"/>

                <!--slave-noUnderlyings-onlyFields-->
                <xsl:call-template name="slave-noUnderlyings-onlyFields"/>

                <!--slave-NoMarginInfos-->
                <xsl:call-template name="slave-NoMarginInfos"/>
            </Slave>

        </Order>

    </xsl:template>

</xsl:stylesheet>