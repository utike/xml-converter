<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:jscript="http://jscript.org">

    <xsl:import href="../base/base.xsl"/>

    <msxsl:script language="JavaScript" implements-prefix="jscript">
        <![CDATA[
        var CONSTANT = {
            "QuoteTransType": "TransType",
            "OrderQty": "Qty"
        };

        function getDefineMap(original) {
            return defineMap(original, CONSTANT);
        }
        ]]>
    </msxsl:script>


</xsl:stylesheet>