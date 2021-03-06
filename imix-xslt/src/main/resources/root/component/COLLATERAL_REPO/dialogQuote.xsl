<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:jscript="http://jscript.org">

    <xsl:import href="../../common/js/common/base.xsl"/>
    <xsl:import href="../../common/xml/common/base.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>


    <xsl:template match="/" name="route-dialogQuote-collateral-repo">

        <Quote>

            <!--header-->
            <xsl:for-each select="/">
                <xsl:call-template name="header"/>
            </xsl:for-each>

            <!--master-quote-->
            <xsl:for-each select="/">
                <xsl:call-template name="master-dialogQuote-withRate"/>
            </xsl:for-each>

            <Slave>
                <!--parties-noContact-->
                <xsl:for-each select="/">
                    <xsl:call-template name="slave-parties-noContact"/>
                </xsl:for-each>

                <!--Underlyings-->
                <Underlyings>

                    <xsl:for-each select="message/body/groups[@name='NoUnderlyings']/group">

                        <NoUnderlying>

                            <xsl:for-each select="field[@name]">
                                <xsl:variable name="nodeName" select="@name" />
                                <xsl:element name="{$nodeName}">
                                    <xsl:value-of select="."/>
                                </xsl:element>
                            </xsl:for-each>

                            <xsl:for-each select="groups/group">
                                <xsl:variable name="enumNodeName" select="field[@enum]/@enum" />
                                <xsl:element name="{$enumNodeName}">
                                    <xsl:value-of select="field[@name='UnderlyingStipValue']"/>
                                </xsl:element>
                            </xsl:for-each>
                        </NoUnderlying>

                    </xsl:for-each>

                </Underlyings>

            </Slave>

        </Quote>

    </xsl:template>

</xsl:stylesheet>