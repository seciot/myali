package com.alipay.kabaoprod.biz.financial.bankcard.request;

public class CcrRemindSetReq
{
  public String cardIndexNo;
  public String holderName;
  public String instId;
  public String remindDate;
  public String remindDbId;
  public String remindSwith;

  public String getCardIndexNo()
  {
    return this.cardIndexNo;
  }

  public String getHolderName()
  {
    return this.holderName;
  }

  public String getInstId()
  {
    return this.instId;
  }

  public String getRemindDate()
  {
    return this.remindDate;
  }

  public String getRemindDbId()
  {
    return this.remindDbId;
  }

  public String getRemindSwith()
  {
    return this.remindSwith;
  }

  public void setCardIndexNo(String paramString)
  {
    this.cardIndexNo = paramString;
  }

  public void setHolderName(String paramString)
  {
    this.holderName = paramString;
  }

  public void setInstId(String paramString)
  {
    this.instId = paramString;
  }

  public void setRemindDate(String paramString)
  {
    this.remindDate = paramString;
  }

  public void setRemindDbId(String paramString)
  {
    this.remindDbId = paramString;
  }

  public void setRemindSwith(String paramString)
  {
    this.remindSwith = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.bankcard.request.CcrRemindSetReq
 * JD-Core Version:    0.6.2
 */