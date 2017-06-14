<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../base/common/base-header.xsl"/>
    <xsl:import href="../base/common/base-body.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent "/>



    <!--<xsl:template match="/"></xsl:template>-->
    <!--<Message>-->



        <xsl:template match="/message/header">

            <Message>
                <!--<xsl:call-template name="base-header"/>-->

                <Body>
                    <xsl:call-template name="base-body-fields"/>
                </Body>

            </Message>

        </xsl:template>




</xsl:stylesheet>