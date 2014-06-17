package com.alipay.mobile.alipassapp.biz.bean;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable(tableName="alipassdetailcache")
public class AlipassDetailCache
  implements Serializable
{
  public static final String BIZTYPE = "bizType";
  public static final String CUSTOMERID = "customerId";
  public static final String GMTMODIFIED = "gmtModified";
  public static final String PASSID = "passId";
  public static final String USERID = "userId";
  private static final long serialVersionUID = 1L;

  @DatabaseField
  private String bizType;

  @DatabaseField
  private String customerId;

  @DatabaseField
  private String gmtModified;

  @DatabaseField(generatedId=true)
  private int id;

  @DatabaseField
  private int isClicked;

  @DatabaseField
  private String passId;

  @DatabaseField
  private String passInfo;

  @DatabaseField
  private String userId;

  public String getBizType()
  {
    return this.bizType;
  }

  public String getCustomerId()
  {
    return this.customerId;
  }

  public String getGmtModified()
  {
    return this.gmtModified;
  }

  public int getId()
  {
    return this.id;
  }

  public int getIsClicked()
  {
    return this.isClicked;
  }

  public String getPassId()
  {
    return this.passId;
  }

  public String getPassInfo()
  {
    return this.passInfo;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setBizType(String paramString)
  {
    this.bizType = paramString;
  }

  public void setCustomerId(String paramString)
  {
    this.customerId = paramString;
  }

  public void setGmtModified(String paramString)
  {
    this.gmtModified = paramString;
  }

  public void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public void setIsClicked(int paramInt)
  {
    this.isClicked = paramInt;
  }

  public void setPassId(String paramString)
  {
    this.passId = paramString;
  }

  public void setPassInfo(String paramString)
  {
    this.passInfo = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }

  public String toString()
  {
    return "bizType=" + this.bizType + ", passId=" + this.passId + ", gmtModified=" + this.gmtModified + ", userId=" + this.userId + ", passInfo=" + this.passInfo + "isClicked=" + this.isClicked;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.bean.AlipassDetailCache
 * JD-Core Version:    0.6.2
 */