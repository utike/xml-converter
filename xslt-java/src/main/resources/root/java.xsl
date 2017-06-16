<xsl:stylesheet
version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:fo="http://www.w3.org/1999/XSL/Format"
xmlns:xs="http://www.w3.org/2001/XMLSchema"
xmlns:fn="http://www.w3.org/2005/xpath-functions"
xmlns:pf = "java:com.ryo.xslt.test?path=jar:file:E:\CODE_GEN\Fork\xml-converter\xslt-java\src\main\resources\root\xslt-java.jar!/" >
<!-- only the java prefix is declared, the class must be in the current directory
or it has to be in a package relative to the current directory -->

<xsl:output indent="yes" exclude-result-prefixes="fn pf xsl fo xs"/>

<xsl:template match="/">
    <!--<test>-->
        <!--<staticMethod><xsl:value-of select="pf:Simple.getDateStr()"/></staticMethod>-->
    <!--</test>-->

        <xsl:variable name="myLemon" select="pf:Simple.new('yellow')" />

        <test>
            <instanceMethod><xsl:value-of select="pf:Simple.getName($myLemon)"/></instanceMethod>
            <!--<staticMethod><xsl:value-of select="pf:Simple.getDateStr()"/></staticMethod>-->
        </test>


</xsl:template>

</xsl:stylesheet>
