<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet
        version="2.0"
        xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
        xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns:jscript="http://jscript.org">

    <msxsl:script language="JavaScript" implements-prefix="jscript">
        <![CDATA[
        var CONSTANT = {
            "TRADER_NAME": "TraderName",
            "FULL_LEGAL_CHINESE_NAME_OF_FIRM": "FirmFullChineseName",
            "SHORT_LEGAL_CHINESE_NAME_OF_FIRM": "FirmShortChineseName",
            "SETTLEMENT_BANK_NAME": "SettlementBankName",
            "CASH_ACCOUNT_NUMBER": "CashAccountNumber",
            "ELIGIBLE_COUNTERPARTY": "EligibleCounterParty",
            "QuoteTransType": "TransType",
            "OrderQty": "Qty"
        };

        public
        function map(original) {
            var result = CONSTANT[original];
            if (!!result
                    && result != "") {
                return result;
            }
            return original;
        }

        public
        function getFormatDate(original) {
            var dateReg = /^[0-9]{8}-[0-9]{2}:[0-9]{2}:[0-9]{2}\.[0-9]{3}$/;
            if (dateReg.test(original)) {
                return original.replace('-', ' ');
            }

            return original;
        }

        public
        function getRate(original) {
            return original / 100.0;
        }

        public
        function getActualVal(nodeName, original) {
            if ("Price" == nodeName) {
                return original / 100.0;
            } else {
                return getFormatDate(original);
            }
        }
        ]]>
    </msxsl:script>


</xsl:stylesheet>