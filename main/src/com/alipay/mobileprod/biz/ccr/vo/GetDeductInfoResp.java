package com.alipay.mobileprod.biz.ccr.vo;

import com.alipay.mobileprod.biz.shared.ccr.domain.ShortcutCardInfo;
import com.alipay.mobileprod.core.model.ccr.BaseRespVO;
import java.util.List;

public class GetDeductInfoResp extends BaseRespVO
{
  public boolean allowSignBalanceBaoDeduct;
  public String bindingMobilePhoneNo;
  public String debitType;
  public String debitTypeConfig;
  public String deductId;
  public boolean opendedBalanceBao;
  public String remindMobilePhoneNo;
  public boolean selectedBalance;
  public boolean selectedBalanceBao;
  public boolean selectedShortcutCard;
  public ShortcutCardInfo shortcutCardInfo;
  public List<ShortcutCardInfo> shortcutCardList;
  public boolean signedBalanceBaoDeduct;
  public String signedDate;

  public String getBindingMobilePhoneNo()
  {
    return this.bindingMobilePhoneNo;
  }

  public String getDebitType()
  {
    return this.debitType;
  }

  public String getDebitTypeConfig()
  {
    return this.debitTypeConfig;
  }

  public String getDeductId()
  {
    return this.deductId;
  }

  public String getRemindMobilePhoneNo()
  {
    return this.remindMobilePhoneNo;
  }

  public ShortcutCardInfo getShortcutCardInfo()
  {
    return this.shortcutCardInfo;
  }

  public List<ShortcutCardInfo> getShortcutCardList()
  {
    return this.shortcutCardList;
  }

  public String getSignedDate()
  {
    return this.signedDate;
  }

  public boolean isAllowSignBalanceBaoDeduct()
  {
    return this.allowSignBalanceBaoDeduct;
  }

  public boolean isOpendedBalanceBao()
  {
    return this.opendedBalanceBao;
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

  public boolean isSignedBalanceBaoDeduct()
  {
    return this.signedBalanceBaoDeduct;
  }

  public void setAllowSignBalanceBaoDeduct(boolean paramBoolean)
  {
    this.allowSignBalanceBaoDeduct = paramBoolean;
  }

  public void setBindingMobilePhoneNo(String paramString)
  {
    this.bindingMobilePhoneNo = paramString;
  }

  public void setDebitType(String paramString)
  {
    this.debitType = paramString;
  }

  public void setDebitTypeConfig(String paramString)
  {
    this.debitTypeConfig = paramString;
  }

  public void setDeductId(String paramString)
  {
    this.deductId = paramString;
  }

  public void setOpendedBalanceBao(boolean paramBoolean)
  {
    this.opendedBalanceBao = paramBoolean;
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

  public void setShortcutCardInfo(ShortcutCardInfo paramShortcutCardInfo)
  {
    this.shortcutCardInfo = paramShortcutCardInfo;
  }

  public void setShortcutCardList(List<ShortcutCardInfo> paramList)
  {
    this.shortcutCardList = paramList;
  }

  public void setSignedBalanceBaoDeduct(boolean paramBoolean)
  {
    this.signedBalanceBaoDeduct = paramBoolean;
  }

  public void setSignedDate(String paramString)
  {
    this.signedDate = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.ccr.vo.GetDeductInfoResp
 * JD-Core Version:    0.6.2
 */