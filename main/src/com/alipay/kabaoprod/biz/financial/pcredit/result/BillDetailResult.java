package com.alipay.kabaoprod.biz.financial.pcredit.result;

import com.alipay.kabaoprod.biz.financial.pcredit.model.PcreditBillStatement;
import com.alipay.kabaoprod.biz.financial.pcredit.model.PcreditPageListLog;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class BillDetailResult extends KabaoCommonResult
{
  public PcreditBillStatement pcreditBillStatement;
  public PcreditPageListLog pcreditPageListLog;

  public PcreditBillStatement getPcreditBillStatement()
  {
    return this.pcreditBillStatement;
  }

  public PcreditPageListLog getPcreditPageListLog()
  {
    return this.pcreditPageListLog;
  }

  public void setPcreditBillStatement(PcreditBillStatement paramPcreditBillStatement)
  {
    this.pcreditBillStatement = paramPcreditBillStatement;
  }

  public void setPcreditPageListLog(PcreditPageListLog paramPcreditPageListLog)
  {
    this.pcreditPageListLog = paramPcreditPageListLog;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.result.BillDetailResult
 * JD-Core Version:    0.6.2
 */