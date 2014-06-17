package com.alipay.mobile.alipassapp.biz.bean;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable(tableName="alipasslistcache")
public class AlipassListCache
  implements Serializable
{
  public static final String BIZTYPE = "bizType";
  public static final String DATE = "date";
  public static final String ID = "id";
  public static final String PASSBASEINFO = "passBaseInfo";
  public static final String PASSID = "passId";
  public static final String STATUS = "status";
  public static final int STATUS_DELETED = 4;
  public static final int STATUS_FOR_DELETE = 3;
  public static final int STATUS_NORMAL = 0;
  public static final String USERID = "userId";
  private static final long serialVersionUID = 1L;

  @DatabaseField
  private String bizType;

  @DatabaseField
  private String date;

  @DatabaseField
  private String gmtModified;

  @DatabaseField(generatedId=true)
  private int id;

  @DatabaseField
  private String passBaseInfo;

  @DatabaseField
  private String passId;

  @DatabaseField
  private int status = 0;

  @DatabaseField
  private String userId;

  public String getBizType()
  {
    return this.bizType;
  }

  public String getDate()
  {
    return this.date;
  }

  public String getGmtModified()
  {
    return this.gmtModified;
  }

  public int getId()
  {
    return this.id;
  }

  public String getPassBaseInfo()
  {
    return this.passBaseInfo;
  }

  public String getPassId()
  {
    return this.passId;
  }

  public int getStatus()
  {
    return this.status;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setBizType(String paramString)
  {
    this.bizType = paramString;
  }

  public void setDate(String paramString)
  {
    this.date = paramString;
  }

  public void setGmtModified(String paramString)
  {
    this.gmtModified = paramString;
  }

  public void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public void setPassBaseInfo(String paramString)
  {
    this.passBaseInfo = paramString;
  }

  public void setPassId(String paramString)
  {
    this.passId = paramString;
  }

  public void setStatus(int paramInt)
  {
    this.status = paramInt;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }

  public String toString()
  {
    return "bizType=" + this.bizType + ", date=" + this.date + ", passId=" + this.passId + ", userId=" + this.userId + ", passBaseInfo=" + this.passBaseInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.bean.AlipassListCache
 * JD-Core Version:    0.6.2
 */