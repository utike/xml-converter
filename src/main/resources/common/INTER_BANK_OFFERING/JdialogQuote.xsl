<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:jscript="http://jscript.org">

    <xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent" exclude-result-prefixes="msxsl jscript"/>


    <msxsl:script language="JavaScript" implements-prefix="jscript">
        <![CDATA[
            var CONSTANT = {
                "TRADER_NAME": "TraderName",
                "FULL_LEGAL_CHINESE_NAME_OF_FIRM": "FirmFullChineseName",
                "SHORT_LEGAL_CHINESE_NAME_OF_FIRM": "FirmShortChineseName",
                "SETTLEMENT_BANK_NAME": "SettlementBankName",
                "CASH_ACCOUNT_NUMBER": "CashAccountNumber",
                "ELIGIBLE_COUNTERPARTY": "EligibleCounterParty"
            };

            public function map(original)
            {
                var result = CONSTANT[original];
                if(!!result
                    && result != "") {
                    return result;
                }
                return original;
            }
        ]]>
    </msxsl:script>

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


                <xsl:for-each select="message/body/groups[@name='NoPartyIDs']/group">

                    <xsl:variable name="groupNodeName" select="field[@enum]/@enum"/>
                    <xsl:element name="{$groupNodeName}">

                        <xsl:for-each select="field[@name]">
                            <xsl:variable name="nodeName" select="@name" />
                            <xsl:if test="@tag != 802">
                                <xsl:element name="{$nodeName}">
                                    <xsl:value-of select="."/>
                                </xsl:element>
                            </xsl:if>

                        </xsl:for-each>

                        <xsl:for-each select="groups[@name='NoPartySubIDs']/group">
                            <xsl:variable name="enumNodeName" select="jscript:map(field[@enum]/@enum)" />
                            <xsl:element name="{$enumNodeName}">
                                <xsl:value-of select="field[@name='PartySubID']"/>
                            </xsl:element>
                        </xsl:for-each>

                    </xsl:element>


                </xsl:for-each>

            </Body>

        </Message>

    </xsl:template>


</xsl:stylesheet>