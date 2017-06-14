<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:import href="../base/common/common.xsl"/>

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent "/>


    <xsl:template match="/">

        <Message>

            <xsl:call-template name="base-header"/>

            <Body>

                <xsl:call-template name="base-body-fields"/>

                <xsl:call-template name="base-dialogQuote-NoPartyIDs"/>

                <NoUnderlyings>

                    <xsl:for-each select="message/body/groups[@name='NoUnderlyings']/group">

                        <NoUnderlying>

                            <xsl:include href="../base/include/NoUnderlyingsFields.xsl" />

                            <!--这里的根据实际情况修改-->
                            <xsl:include href="../base/include/NoUnderlyingStips.xsl" />

                        </NoUnderlying>

                    </xsl:for-each>

                </NoUnderlyings>

            </Body>

        </Message>

    </xsl:template>


</xsl:stylesheet>