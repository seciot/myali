package com.alipay.kabaoprod.biz.financial.account.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import java.util.Map;

public class AssetAccountInfoResult extends KabaoCommonResult
{
  public double availableBalance;
  public String bindingMobileNo;
  public Map<String, String> contextMap;
  public boolean freezePhone = false;
  public boolean freezeTravel = false;
  public boolean freezeVoucher = false;
  public boolean hiddenPhone = false;
  public boolean hiddenTravel = false;
  public boolean hiddenVoucher = false;
  public boolean isShowRefreshBtn = false;
  public boolean markPhone = false;
  public boolean markTravel = false;
  public boolean markVoucher = false;
  public String phoneTitle;
  public double totalAmount;
  public String travelTitle;
  public String voucherTitle;

  public double getAvailableBalance()
  {
    return this.availableBalance;
  }

  public String getBindingMobileNo()
  {
    return this.bindingMobileNo;
  }

  public Map<String, String> getContextMap()
  {
    return this.contextMap;
  }

  public String getPhoneTitle()
  {
    return this.phoneTitle;
  }

  public double getTotalAmount()
  {
    return this.totalAmount;
  }

  public String getTravelTitle()
  {
    return this.travelTitle;
  }

  public String getVoucherTitle()
  {
    return this.voucherTitle;
  }

  public boolean isFreezePhone()
  {
    return this.freezePhone;
  }

  public boolean isFreezeTravel()
  {
    return this.freezeTravel;
  }

  public boolean isFreezeVoucher()
  {
    return this.freezeVoucher;
  }

  public boolean isHiddenPhone()
  {
    return this.hiddenPhone;
  }

  public boolean isHiddenTravel()
  {
    return this.hiddenTravel;
  }

  public boolean isHiddenVoucher()
  {
    return this.hiddenVoucher;
  }

  public boolean isMarkPhone()
  {
    return this.markPhone;
  }

  public boolean isMarkTravel()
  {
    return this.markTravel;
  }

  public boolean isMarkVoucher()
  {
    return this.markVoucher;
  }

  public boolean isShowRefreshBtn()
  {
    return this.isShowRefreshBtn;
  }

  public void setAvailableBalance(double paramDouble)
  {
    this.availableBalance = paramDouble;
  }

  public void setBindingMobileNo(String paramString)
  {
    this.bindingMobileNo = paramString;
  }

  public void setContextMap(Map<String, String> paramMap)
  {
    this.contextMap = paramMap;
  }

  public void setFreezePhone(boolean paramBoolean)
  {
    this.freezePhone = paramBoolean;
  }

  public void setFreezeTravel(boolean paramBoolean)
  {
    this.freezeTravel = paramBoolean;
  }

  public void setFreezeVoucher(boolean paramBoolean)
  {
    this.freezeVoucher = paramBoolean;
  }

  public void setHiddenPhone(boolean paramBoolean)
  {
    this.hiddenPhone = paramBoolean;
  }

  public void setHiddenTravel(boolean paramBoolean)
  {
    this.hiddenTravel = paramBoolean;
  }

  public void setHiddenVoucher(boolean paramBoolean)
  {
    this.hiddenVoucher = paramBoolean;
  }

  public void setMarkPhone(boolean paramBoolean)
  {
    this.markPhone = paramBoolean;
  }

  public void setMarkTravel(boolean paramBoolean)
  {
    this.markTravel = paramBoolean;
  }

  public void setMarkVoucher(boolean paramBoolean)
  {
    this.markVoucher = paramBoolean;
  }

  public void setPhoneTitle(String paramString)
  {
    this.phoneTitle = paramString;
  }

  public void setShowRefreshBtn(boolean paramBoolean)
  {
    this.isShowRefreshBtn = paramBoolean;
  }

  public void setTotalAmount(double paramDouble)
  {
    this.totalAmount = paramDouble;
  }

  public void setTravelTitle(String paramString)
  {
    this.travelTitle = paramString;
  }

  public void setVoucherTitle(String paramString)
  {
    this.voucherTitle = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.account.result.AssetAccountInfoResult
 * JD-Core Version:    0.6.2
 */