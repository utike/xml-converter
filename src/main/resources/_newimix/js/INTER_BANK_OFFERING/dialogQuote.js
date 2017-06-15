/**
 *
 * @type 枚举常量
 */
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

// 获取格式化后的日期
//@param original 原始的日期字符串
public
function getFormatDate(original) {
    var dateReg = /^[0-9]{8}-[0-9]{2}:[0-9]{2}:[0-9]{2}\.[0-9]{3}$/;
    if (dateReg.test(original)) {
        return original.replace('-', ' ');
    }

    return original;
}

//获取当前金额对应的利率
//@param original 原始金额
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