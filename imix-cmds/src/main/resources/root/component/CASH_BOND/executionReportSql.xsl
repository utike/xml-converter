<?result version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="../../common/sql/common/base.xsl"/>
    <xsl:output method="text" version="1.0" encoding="gb2312"
                indent="yes" cdata-section-elements="DataContent" />

    <xsl:template match="/" name="route-cashBond-executionReportSql">

        <xsl:call-template name="sql-master-order"/>

    </xsl:template>

</xsl:stylesheet>