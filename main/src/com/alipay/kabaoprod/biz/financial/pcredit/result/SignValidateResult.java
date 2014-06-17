package com.alipay.kabaoprod.biz.financial.pcredit.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class SignValidateResult extends KabaoCommonResult
{
  public int remindType;
  public String signSmsViewText;

  public int getRemindType()
  {
    return this.remindType;
  }

  public String getSignSmsViewText()
  {
    return this.signSmsViewText;
  }

  public void setRemindType(int paramInt)
  {
    this.remindType = paramInt;
  }

  public void setSignSmsViewText(String paramString)
  {
    this.signSmsViewText = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.pcredit.result.SignValidateResult
 * JD-Core Version:    0.6.2
 */