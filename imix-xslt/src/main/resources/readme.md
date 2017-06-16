http://developer.51cto.com/art/201105/262664.htm


开始不要着急抽象复用。现将功能做出来。

ExecutionReport/Quote
首先写 【对话报价】、【成交报价】

注意：暂时的转换 放在一个独立结构体的有问题。！！！(直接放在body节点中)

http://blog.163.com/jiamei_lx/blog/static/120972534201153103342725/



# 信用拆借

ExecutionReport(MsgType=8)_INTER_BANK_OFFERING_
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/3.xml (√) recheck
=====

Quote(MsgType=S)_INTER_BANK_OFFERING_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/5.xml   (√) recheck
=====

Quote(MsgType=S)_INTER_BANK_OFFERING_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/23.xml
=====

# 质押式回购

Quote(MsgType=S)_COLLATERAL_REPO_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/2.xml (√) recheck
=====

ExecutionReport(MsgType=8)_COLLATERAL_REPO_
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/25.xml (√)
=====
Quote(MsgType=S)_COLLATERAL_REPO_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/26.xml
=====
Quote(MsgType=S)_COLLATERAL_REPO_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/27.xml
=====
Quote(MsgType=S)_COLLATERAL_REPO_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/29.xml
=====

ExecutionReport(MsgType=8)_COLLATERAL_REPO_
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/30.xml
=====


# 买断式回购

Quote(MsgType=S)_OUTRIGHT_REPO_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/4.xml  (√)
=====

ExecutionReport(MsgType=8)_OUTRIGHT_REPO_
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/6.xml
=====

ExecutionReport(MsgType=8)_OUTRIGHT_REPO_
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/28.xml
=====

Quote(MsgType=S)_OUTRIGHT_REPO_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/1.xml
=====

Quote(MsgType=S)_COLLATERAL_REPO_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/12.xml
=====

# 现券买卖

NoStipulations 直接拉平。(信息量不是很大。)

Quote(MsgType=S)_CASH_BOND_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/13.xml （√）
=====
Quote(MsgType=S)_CASH_BOND_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/14.xml
=====
Quote(MsgType=S)_CASH_BOND_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/15.xml
=====

ExecutionReport(MsgType=8)_CASH_BOND_
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/16.xml
=====
ExecutionReport(MsgType=8)_CASH_BOND_
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/10.xml
=====
ExecutionReport(MsgType=8)_CASH_BOND_
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/11.xml
=====
Quote(MsgType=S)_CASH_BOND_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/7.xml
=====
Quote(MsgType=S)_CASH_BOND_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/8.xml
=====
Quote(MsgType=S)_CASH_BOND_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/9.xml
=====


# 6.5.8 债券借贷

ExecutionReport(MsgType=8)_SECURITY_LENDING_
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/17.xml 
=====
ExecutionReport(MsgType=8)_SECURITY_LENDING_
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/18.xml
=====
Quote(MsgType=S)_SECURITY_LENDING_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/19.xml (√)
=====

Quote(MsgType=S)_SECURITY_LENDING_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/20.xml
=====
ExecutionReport(MsgType=8)_SECURITY_LENDING_
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/21.xml
=====
Quote(MsgType=S)_SECURITY_LENDING_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/22.xml
=====

Quote(MsgType=S)_SECURITY_LENDING_TRADEABLE(QuoteType=1)
E:\CODE_GEN\Fork\xml-converter\src\main\resources\original/24.xml
=====



# 都写完。













