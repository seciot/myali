package com.alipay.mobile.framework.service.ext.security.bean;

import com.j256.ormlite.field.DatabaseField;

public class DeviceInfoSecurity
{

  @DatabaseField(generatedId=true)
  private int id;

  @DatabaseField
  String walletTid;

  public int getId()
  {
    return this.id;
  }

  public String getWalletTid()
  {
    return this.walletTid;
  }

  public void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public void setWalletTid(String paramString)
  {
    this.walletTid = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.bean.DeviceInfoSecurity
 * JD-Core Version:    0.6.2
 */