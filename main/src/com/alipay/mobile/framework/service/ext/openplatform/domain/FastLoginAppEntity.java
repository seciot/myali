package com.alipay.mobile.framework.service.ext.openplatform.domain;

import com.j256.ormlite.field.DatabaseField;

public class FastLoginAppEntity
{
  public static final String COL_APPID = "appId";

  @DatabaseField(index=true, unique=true)
  private String appId;

  @DatabaseField(generatedId=true)
  private int id;

  public String getAppId()
  {
    return this.appId;
  }

  public int getId()
  {
    return this.id;
  }

  public void setAppId(String paramString)
  {
    this.appId = paramString;
  }

  public void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("appId:" + this.appId + ",");
    return localStringBuffer.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.domain.FastLoginAppEntity
 * JD-Core Version:    0.6.2
 */