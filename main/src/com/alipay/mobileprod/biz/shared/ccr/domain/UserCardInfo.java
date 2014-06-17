package com.alipay.mobileprod.biz.shared.ccr.domain;

import java.io.Serializable;

public class UserCardInfo extends BaseModel
  implements Serializable
{
  public boolean canDeduct;
  public String cardId;
  public String cardIndexNo;
  public String deductId;
  public String deductMemo;
  public String deductSignedDate;
  public String fastPay;
  public String holderName;
  public String openedBillQuery;
  public boolean openedEmailBillQuery;
  public String remindDate;
  public String remindDay;
  public String remindDayRemind;
  public String remindStatus;
  public String tail;

  public String getCardId()
  {
    return this.cardId;
  }

  public String getCardIndexNo()
  {
    return this.cardIndexNo;
  }

  public String getDeductId()
  {
    return this.deductId;
  }

  public String getDeductMemo()
  {
    return this.deductMemo;
  }

  public String getDeductSignedDate()
  {
    return this.deductSignedDate;
  }

  public String getFastPay()
  {
    return this.fastPay;
  }

  public String getHolderName()
  {
    return this.holderName;
  }

  public String getOpenedBillQuery()
  {
    return this.openedBillQuery;
  }

  public String getRemindDate()
  {
    return this.remindDate;
  }

  public String getRemindDay()
  {
    return this.remindDay;
  }

  public String getRemindDayRemind()
  {
    return this.remindDayRemind;
  }

  public String getRemindStatus()
  {
    return this.remindStatus;
  }

  public String getTail()
  {
    return this.tail;
  }

  public boolean isCanDeduct()
  {
    return this.canDeduct;
  }

  public boolean isOpenedEmailBillQuery()
  {
    return this.openedEmailBillQuery;
  }

  public void setCanDeduct(boolean paramBoolean)
  {
    this.canDeduct = paramBoolean;
  }

  public void setCardId(String paramString)
  {
    this.cardId = paramString;
  }

  public void setCardIndexNo(String paramString)
  {
    this.cardIndexNo = paramString;
  }

  public void setDeductId(String paramString)
  {
    this.deductId = paramString;
  }

  public void setDeductMemo(String paramString)
  {
    this.deductMemo = paramString;
  }

  public void setDeductSignedDate(String paramString)
  {
    this.deductSignedDate = paramString;
  }

  public void setFastPay(String paramString)
  {
    this.fastPay = paramString;
  }

  public void setHolderName(String paramString)
  {
    this.holderName = paramString;
  }

  public void setOpenedBillQuery(String paramString)
  {
    this.openedBillQuery = paramString;
  }

  public void setOpenedEmailBillQuery(boolean paramBoolean)
  {
    this.openedEmailBillQuery = paramBoolean;
  }

  public void setRemindDate(String paramString)
  {
    this.remindDate = paramString;
  }

  public void setRemindDay(String paramString)
  {
    this.remindDay = paramString;
  }

  public void setRemindDayRemind(String paramString)
  {
    this.remindDayRemind = paramString;
  }

  public void setRemindStatus(String paramString)
  {
    this.remindStatus = paramString;
  }

  public void setTail(String paramString)
  {
    this.tail = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.shared.ccr.domain.UserCardInfo
 * JD-Core Version:    0.6.2
 */