<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:jscript="http://jscript.org">

    <xsl:import href="../../js/INTER_BANK_OFFERING/dialogQuote.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent"/>



    <xsl:template match="/">

        <Quote>

            <Header>
                <xsl:for-each select="message/header/field[@name]">
                    <xsl:variable name="nodeName" select="@name"/>
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="jscript:getFormatDateAndRate($nodeName, current())"/>
                    </xsl:element>
                </xsl:for-each>
            </Header>

            <Master>

                <xsl:for-each select="message/body/field[@name]">
                    <xsl:variable name="nodeName" select="jscript:getDefineMap(@name)"/>
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="jscript:getFormatDateAndRate($nodeName, current())"/>
                    </xsl:element>
                </xsl:for-each>

            </Master>


            <Slave>
                <Parties>

                    <xsl:for-each select="message/body/groups[@name='NoPartyIDs']/group">
                        <Party>
                            <xsl:for-each select="field[@name]">
                                <xsl:variable name="nodeName" select="@name"/>
                                <xsl:if test="@tag != 802 and @tag != 453">
                                    <xsl:element name="{$nodeName}">
                                        <xsl:value-of select="."/>
                                    </xsl:element>
                                </xsl:if>

                            </xsl:for-each>

                            <xsl:for-each select="groups[@name='NoPartySubIDs']/group">
                                <xsl:variable name="enumNodeName" select="jscript:getDefineMap(field[@enum]/@enum)"/>
                                <xsl:element name="{$enumNodeName}">
                                    <xsl:value-of select="field[@name='PartySubID']"/>
                                </xsl:element>
                            </xsl:for-each>
                        </Party>
                    </xsl:for-each>

                </Parties>
            </Slave>


        </Quote>

    </xsl:template>

</xsl:stylesheet>