<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent "/>


    <xsl:template match="/">
        <Message>

            <Header>
                <xsl:for-each select="message/header/field[@name]">
                    <xsl:variable name="nodeName" select="@name"/>
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:for-each>
            </Header>

            <Body>

                <xsl:for-each select="message/body/field[@name]">
                    <xsl:variable name="nodeName" select="@name"/>
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:for-each>


                <!--<xsl:for-each select="message/body/groups[@name='NoPartyIDs']/group">-->

                    <!--<xsl:variable name="groupNodeName" select="field[@enum]/@enum"/>-->
                    <!--<xsl:element name="{$groupNodeName}">-->

                        <!--<xsl:for-each select="field[@name]">-->
                            <!--<xsl:variable name="nodeName" select="@name" />-->
                            <!--<xsl:element name="{$nodeName}">-->
                                <!--<xsl:value-of select="."/>-->
                            <!--</xsl:element>-->
                        <!--</xsl:for-each>-->

                        <!--<xsl:for-each select="groups[@name='NoPartySubIDs']/group">-->
                            <!--<xsl:variable name="enumNodeName" select="field[@enum]/@enum" />-->
                            <!--<xsl:element name="{$enumNodeName}">-->
                                <!--<xsl:value-of select="field[@name='PartySubID']"/>-->
                            <!--</xsl:element>-->
                        <!--</xsl:for-each>-->

                    <!--</xsl:element>-->


                <!--</xsl:for-each>-->

            </Body>


            <InitialExGrp>

                <xsl:for-each select="message/InitialExGrp/field[@name]">
                    <xsl:variable name="nodeName" select="@name"/>
                    <xsl:element name="{$nodeName}">
                        <xsl:value-of select="."/>
                    </xsl:element>
                </xsl:for-each>



            </InitialExGrp>

        </Message>

    </xsl:template>


</xsl:stylesheet>