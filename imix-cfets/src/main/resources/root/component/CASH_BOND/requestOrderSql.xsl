<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="../../common/sql/common/base.xsl"/>
    <xsl:output method="text" version="1.0" encoding="gb2312"
                indent="yes" cdata-section-elements="DataContent" />

    <!--现券买卖-请求报价-成交(确认/拒绝)-sql-->
    <xsl:template match="/" name="route-cashBond-requestOrderSql">

        <xsl:call-template name="sql-order"/>

        <xsl:call-template name="sql-order-party"/>

    </xsl:template>

</xsl:stylesheet>