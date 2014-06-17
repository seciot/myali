package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.core.model.ccr.BaseReqVO;

public class SetupDeductReq extends BaseReqVO
{
  public String actionType;
  public String cardId;
  public String debitType;
  public String paymentPassword;
  public String remindMobilePhoneNo;
  public boolean selectedBalance;
  public boolean selectedBalanceBao;
  public boolean selectedShortcutCard;
  public String shortcutCardSignChannelType;
  public String shortcutCardSignId;

  public String getActionType()
  {
    return this.actionType;
  }

  public String getCardId()
  {
    return this.cardId;
  }

  public String getDebitType()
  {
    return this.debitType;
  }

  public String getPaymentPassword()
  {
    return this.paymentPassword;
  }

  public String getRemindMobilePhoneNo()
  {
    return this.remindMobilePhoneNo;
  }

  public String getShortcutCardSignChannelType()
  {
    return this.shortcutCardSignChannelType;
  }

  public String getShortcutCardSignId()
  {
    return this.shortcutCardSignId;
  }

  public boolean isSelectedBalance()
  {
    return this.selectedBalance;
  }

  public boolean isSelectedBalanceBao()
  {
    return this.selectedBalanceBao;
  }

  public boolean isSelectedShortcutCard()
  {
    return this.selectedShortcutCard;
  }

  public void setActionType(String paramString)
  {
    this.actionType = paramString;
  }

  public void setCardId(String paramString)
  {
    this.cardId = paramString;
  }

  public void setDebitType(String paramString)
  {
    this.debitType = paramString;
  }

  public void setPaymentPassword(String paramString)
  {
    this.paymentPassword = paramString;
  }

  public void setRemindMobilePhoneNo(String paramString)
  {
    this.remindMobilePhoneNo = paramString;
  }

  public void setSelectedBalance(boolean paramBoolean)
  {
    this.selectedBalance = paramBoolean;
  }

  public void setSelectedBalanceBao(boolean paramBoolean)
  {
    this.selectedBalanceBao = paramBoolean;
  }

  public void setSelectedShortcutCard(boolean paramBoolean)
  {
    this.selectedShortcutCard = paramBoolean;
  }

  public void setShortcutCardSignChannelType(String paramString)
  {
    this.shortcutCardSignChannelType = paramString;
  }

  public void setShortcutCardSignId(String paramString)
  {
    this.shortcutCardSignId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.SetupDeductReq
 * JD-Core Version:    0.6.2
 */