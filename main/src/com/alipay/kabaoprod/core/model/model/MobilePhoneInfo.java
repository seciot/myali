package com.alipay.kabaoprod.core.model.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class MobilePhoneInfo extends ToString
{
  public String bindedMobile;
  public String cityName;
  public String provinceName;
  public String vendor;

  public String getBindedMobile()
  {
    return this.bindedMobile;
  }

  public String getCityName()
  {
    return this.cityName;
  }

  public String getProvinceName()
  {
    return this.provinceName;
  }

  public String getVendor()
  {
    return this.vendor;
  }

  public void setBindedMobile(String paramString)
  {
    this.bindedMobile = paramString;
  }

  public void setCityName(String paramString)
  {
    this.cityName = paramString;
  }

  public void setProvinceName(String paramString)
  {
    this.provinceName = paramString;
  }

  public void setVendor(String paramString)
  {
    this.vendor = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.core.model.model.MobilePhoneInfo
 * JD-Core Version:    0.6.2
 */