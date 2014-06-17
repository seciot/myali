package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.biz.shared.ccr.domain.BillInfo;
import com.alipay.mobileprod.core.model.ccr.BaseRespVO;

public class SetupDeductResp extends BaseRespVO
{
  public BillInfo billInfo;
  public boolean canImmediatelyWork;
  public String deductDate;

  public BillInfo getBillInfo()
  {
    return this.billInfo;
  }

  public String getDeductDate()
  {
    return this.deductDate;
  }

  public boolean isCanImmediatelyWork()
  {
    return this.canImmediatelyWork;
  }

  public void setBillInfo(BillInfo paramBillInfo)
  {
    this.billInfo = paramBillInfo;
  }

  public void setCanImmediatelyWork(boolean paramBoolean)
  {
    this.canImmediatelyWork = paramBoolean;
  }

  public void setDeductDate(String paramString)
  {
    this.deductDate = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.SetupDeductResp
 * JD-Core Version:    0.6.2
 */