package com.alipay.kabaoprod.biz.financial.pcredit.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class CheckSignResult extends KabaoCommonResult
{
  public boolean hasSign;
  public String opText;
  public String repayAmount;
  public String signStatus;

  public String getOpText()
  {
    return this.opText;
  }

  public String getRepayAmount()
  {
    return this.repayAmount;
  }

  public String getSignStatus()
  {
    return this.signStatus;
  }

  public boolean isHasSign()
  {
    return this.hasSign;
  }

  public void setHasSign(boolean paramBoolean)
  {
    this.hasSign = paramBoolean;
  }

  public void setOpText(String paramString)
  {
    this.opText = paramString;
  }

  public void setRepayAmount(String paramString)
  {
    this.repayAmount = paramString;
  }

  public void setSignStatus(String paramString)
  {
    this.signStatus = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.result.CheckSignResult
 * JD-Core Version:    0.6.2
 */