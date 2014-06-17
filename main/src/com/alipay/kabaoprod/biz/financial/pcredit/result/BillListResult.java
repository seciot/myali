package com.alipay.kabaoprod.biz.financial.pcredit.result;

import com.alipay.kabaoprod.biz.financial.pcredit.model.BillStatement;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonPageResult;
import java.util.List;

public class BillListResult extends KabaoCommonPageResult
{
  public List<BillStatement> billStatementList;

  public List<BillStatement> getBillStatementList()
  {
    return this.billStatementList;
  }

  public void setBillStatementList(List<BillStatement> paramList)
  {
    this.billStatementList = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.result.BillListResult
 * JD-Core Version:    0.6.2
 */