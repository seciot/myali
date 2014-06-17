package com.alipay.mobile.framework.service.ext.security.bean;

import com.j256.ormlite.field.DatabaseField;

public class TaoBaoUserInfo
  implements Cloneable
{

  @DatabaseField(generatedId=true)
  private int id;

  @DatabaseField
  String loginTime;

  @DatabaseField(unique=true)
  String taoBaoUserId;

  @DatabaseField
  String userId;

  public Object clone()
  {
    try
    {
      Object localObject = super.clone();
      return localObject;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public String getLoginTime()
  {
    return this.loginTime;
  }

  public String getTaoBaoUserId()
  {
    return this.taoBaoUserId;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setLoginTime(String paramString)
  {
    this.loginTime = paramString;
  }

  public void setTaoBaoUserId(String paramString)
  {
    this.taoBaoUserId = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }

  public String toString()
  {
    return this.taoBaoUserId;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.ext.security.bean.TaoBaoUserInfo
 * JD-Core Version:    0.6.2
 */