<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <!--<xsl:import href=commonbase/comcommonbase-header.xsl"/>-->
    <!--<xsl:import href=commonbase/comcommonbase-body.xsl"/>-->

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent "/>



    <!--<xsl:template match="/"></xsl:template>-->
    <!--<Message>-->



        <!--<xsl:template match="/message/header">-->

            <!--<Message>-->
                <!--&lt;!&ndash;<xsl:call-template nacommonbase-header"/>&ndash;&gt;-->

                <!--<Body>-->
                    <!--<xsl:call-template nacommonbase-body-fields"/>-->
                <!--</Body>-->

            <!--</Message>-->

        <!--</xsl:template>-->


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

        </Message>

    </xsl:template>





</xsl:stylesheet>