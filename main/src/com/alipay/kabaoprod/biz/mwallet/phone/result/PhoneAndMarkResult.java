package com.alipay.kabaoprod.biz.mwallet.phone.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class PhoneAndMarkResult extends KabaoCommonResult
{
  public boolean isPhoneMark = false;
  public boolean isShowRefreshBtn = false;
  public boolean isSupportNumber = true;
  public String phoneTitle;
  public String vendor;

  public String getPhoneTitle()
  {
    return this.phoneTitle;
  }

  public String getVendor()
  {
    return this.vendor;
  }

  public boolean isPhoneMark()
  {
    return this.isPhoneMark;
  }

  public boolean isShowRefreshBtn()
  {
    return this.isShowRefreshBtn;
  }

  public boolean isSupportNumber()
  {
    return this.isSupportNumber;
  }

  public void setPhoneMark(boolean paramBoolean)
  {
    this.isPhoneMark = paramBoolean;
  }

  public void setPhoneTitle(String paramString)
  {
    this.phoneTitle = paramString;
  }

  public void setShowRefreshBtn(boolean paramBoolean)
  {
    this.isShowRefreshBtn = paramBoolean;
  }

  public void setSupportNumber(boolean paramBoolean)
  {
    this.isSupportNumber = paramBoolean;
  }

  public void setVendor(String paramString)
  {
    this.vendor = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.phone.result.PhoneAndMarkResult
 * JD-Core Version:    0.6.2
 */