<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:import href="../../common/sql/common/base.xsl"/>
    <xsl:output method="text" version="1.0" encoding="gb2312"
                indent="yes" cdata-section-elements="DataContent" />

    <xsl:template match="/" name="route-executionReportSql-collateral-repo">


        INSERT INTO [dbo].[cfets_orders]
        (
            <xsl:for-each select="Order/Master/*">
                <xsl:call-template name="fields"/>
            </xsl:for-each>
            ,[SysID]
            ,[SysOriMsg]
            ,[SysDirect]
            ,[SysStatus]
            ,[SysSenderApp]
            ,[SysSender]
        ) VALUES (
            <xsl:for-each select="Order/Master/*">
                <xsl:call-template name="values"/>
            </xsl:for-each>
            ,'%s'
            ,'%s'
            ,'%s'
            ,'%s'
            ,'%s'
            ,'%s'
        );



        <xsl:for-each select="Order/Slave/Parties/Party">

            INSERT INTO [dbo].[details_parties]
            (
                <xsl:for-each select="*">
                    <xsl:call-template name="fields"/>
                </xsl:for-each>
                ,[FkID]
            ) VALUES
            (
                <xsl:for-each select="*">
                    <xsl:call-template name="values"/>
                </xsl:for-each>
                ,NEWID()
            );

        </xsl:for-each>

    </xsl:template>

</xsl:stylesheet>