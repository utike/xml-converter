<?result version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:import href="base.xsl"/>

<xsl:output method="xml" version="1.0" encoding="UTF-8"
                indent="yes" cdata-section-elements="DataContent "/>



<xsl:template match="/">
  <xsl:apply-imports/>



  <!-- 抽象成为公共的方法 -->
  <NoUnderlyings>

  	<xsl:for-each select="message/body/groups[@name='NoUnderlyings']/group">

		<NoUnderlying>

			<xsl:for-each select="field[@name]">
				<xsl:variable name="nodeName" select="@name" />
				<xsl:element name="{$nodeName}">
					<xsl:value-of select="."/>
				</xsl:element>
			</xsl:for-each>

			<xsl:for-each select="groups/group">
			   <xsl:variable name="enumNodeName" select="field[@enum]/@enum" />
			   <xsl:element name="{$enumNodeName}">
					<xsl:value-of select="field[@name='UnderlyingStipValue']"/>
			   </xsl:element>
			</xsl:for-each>
				

				
		</NoUnderlying>  

    </xsl:for-each>

  </NoUnderlyings>


</xsl:template>

</xsl:stylesheet>