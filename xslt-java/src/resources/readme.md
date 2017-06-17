开始不要着急抽象复用。现将功能做出来。

ExecutionReport/Quote
首先写 【对话报价】、【成交报价】

注意：暂时的转换 放在一个独立结构体的有问题。！！！(直接放在body节点中)

http://blog.163.com/jiamei_lx/blog/static/120972534201153103342725/



# 信用拆借

ExecutionReport(MsgType=8)_INTER_BANK_OFFERING_
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/3.result (√) recheck
=====

Quote(MsgType=S)_INTER_BANK_OFFERING_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/5.result   (√) recheck
=====

Quote(MsgType=S)_INTER_BANK_OFFERING_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/23.result
=====

# 质押式回购

Quote(MsgType=S)_COLLATERAL_REPO_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/2.result (√) recheck
=====

ExecutionReport(MsgType=8)_COLLATERAL_REPO_
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/25.result (√)
=====
Quote(MsgType=S)_COLLATERAL_REPO_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/26.result
=====
Quote(MsgType=S)_COLLATERAL_REPO_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/27.result
=====
Quote(MsgType=S)_COLLATERAL_REPO_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/29.result
=====

ExecutionReport(MsgType=8)_COLLATERAL_REPO_
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/30.result
=====


# 买断式回购

Quote(MsgType=S)_OUTRIGHT_REPO_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/4.result  (√)
=====

ExecutionReport(MsgType=8)_OUTRIGHT_REPO_
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/6.result
=====

ExecutionReport(MsgType=8)_OUTRIGHT_REPO_
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/28.result
=====

Quote(MsgType=S)_OUTRIGHT_REPO_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/1.result
=====

Quote(MsgType=S)_COLLATERAL_REPO_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/12.result
=====

# 现券买卖

NoStipulations 直接拉平。(信息量不是很大。)

Quote(MsgType=S)_CASH_BOND_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/13.result （√）
=====
Quote(MsgType=S)_CASH_BOND_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/14.result
=====
Quote(MsgType=S)_CASH_BOND_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/15.result
=====

ExecutionReport(MsgType=8)_CASH_BOND_
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/16.result
=====
ExecutionReport(MsgType=8)_CASH_BOND_
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/10.result
=====
ExecutionReport(MsgType=8)_CASH_BOND_
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/11.result
=====
Quote(MsgType=S)_CASH_BOND_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/7.result
=====
Quote(MsgType=S)_CASH_BOND_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/8.result
=====
Quote(MsgType=S)_CASH_BOND_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/9.result
=====


# 6.5.8 债券借贷

ExecutionReport(MsgType=8)_SECURITY_LENDING_
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/17.result 
=====
ExecutionReport(MsgType=8)_SECURITY_LENDING_
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/18.result
=====
Quote(MsgType=S)_SECURITY_LENDING_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/19.result (√)
=====

Quote(MsgType=S)_SECURITY_LENDING_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/20.result
=====
ExecutionReport(MsgType=8)_SECURITY_LENDING_
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/21.result
=====
Quote(MsgType=S)_SECURITY_LENDING_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/22.result
=====

Quote(MsgType=S)_SECURITY_LENDING_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\result-converter\src\main\resources\original/24.result
=====



# 都写完。













