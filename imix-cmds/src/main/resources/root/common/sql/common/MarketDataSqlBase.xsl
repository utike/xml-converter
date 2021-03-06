<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="base.xsl"/>
    <xsl:output method="text" version="1.0" encoding="gb2312"
                indent="yes" cdata-section-elements="DataContent"/>

    <xsl:template match="/" name="route-MarketDataSql-Base">

        <xsl:call-template name="sql-master-marketData"/>
        <xsl:call-template name="sql-slave-Entries"/>
        <xsl:call-template name="sql-slave-mdParty"/>
        <xsl:call-template name="sql-slave-mdUnderlying"/>
        <xsl:call-template name="sql-slave-mdLegs"/>
        <xsl:call-template name="sql-slave-benchmarks"/>


    </xsl:template>

</xsl:stylesheet>