package com.alipay.mobile.framework.service.ext.openplatform.domain;

import com.j256.ormlite.field.DatabaseField;

public class MyAppEntity
{
  public static final String COL_APPDISPLAYPLACE = "appDisplayPlace";
  public static final String COL_APPID = "appId";
  public static final String COL_USERRANK = "userRank";

  @DatabaseField(canBeNull=false)
  private int appDisplayPlace = 1;

  @DatabaseField(canBeNull=false, index=true, unique=true)
  private String appId;

  @DatabaseField(generatedId=true)
  private int id;

  @DatabaseField(canBeNull=false)
  private long userRank = -4611686018427387904L;

  public MyAppEntity()
  {
  }

  public MyAppEntity(String paramString, int paramInt, long paramLong)
  {
    this.appId = paramString;
    this.appDisplayPlace = paramInt;
    this.userRank = paramLong;
  }

  public int getAppDisplayPlace()
  {
    return this.appDisplayPlace;
  }

  public String getAppId()
  {
    return this.appId;
  }

  public int getId()
  {
    return this.id;
  }

  public long getUserRank()
  {
    return this.userRank;
  }

  public void setAppDisplayPlace(int paramInt)
  {
    this.appDisplayPlace = paramInt;
  }

  public void setAppId(String paramString)
  {
    this.appId = paramString;
  }

  public void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public void setUserRank(long paramLong)
  {
    this.userRank = paramLong;
  }

  public String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("appId:" + this.appId + ",");
    localStringBuffer.append("userRank:" + this.userRank + ",");
    localStringBuffer.append("appDisplayPlace:" + this.appDisplayPlace + ",");
    return localStringBuffer.toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.openplatform.domain.MyAppEntity
 * JD-Core Version:    0.6.2
 */