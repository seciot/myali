package com.alipay.mobile.alipassapp.biz.bean;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable(tableName="alipassoffline")
public class AlipassOffline
  implements Serializable
{
  public static final String BIZTYPE = "bizType";
  public static final String ID = "id";
  public static final String PARTNERID = "partnerId";
  public static final String PASSBASEINFO = "passBaseInfo";
  public static final String PASSID = "passId";
  public static final String PATH_PASS = "passPath";
  public static final String SERIALNUMBER = "serialNumber";
  public static final String STATUS = "status";
  public static final int STATUS_DELETED = 4;
  public static final int STATUS_FOR_DELETE = 3;
  public static final int STATUS_NORMAL = 1;
  public static final int STATUS_UPLOADED = 2;
  public static final String TIMESTAMP = "timestamp";
  public static final String USERID = "userId";
  private static final long serialVersionUID = 1L;

  @DatabaseField
  private String bizType;

  @DatabaseField(generatedId=true)
  private int id;

  @DatabaseField
  private String partnerId;

  @DatabaseField
  private String passBaseInfo;

  @DatabaseField
  private String passId;

  @DatabaseField
  private String passPath;

  @DatabaseField
  private String serialNumber;

  @DatabaseField
  private int status = 1;

  @DatabaseField
  private long timestamp;

  @DatabaseField
  private String userId;

  public String getBizType()
  {
    return this.bizType;
  }

  public int getId()
  {
    return this.id;
  }

  public String getPartnerId()
  {
    return this.partnerId;
  }

  public String getPassBaseInfo()
  {
    return this.passBaseInfo;
  }

  public String getPassId()
  {
    return this.passId;
  }

  public String getPassPath()
  {
    return this.passPath;
  }

  public String getSerialNumber()
  {
    return this.serialNumber;
  }

  public int getStatus()
  {
    return this.status;
  }

  public long getTimestamp()
  {
    return this.timestamp;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setBizType(String paramString)
  {
    this.bizType = paramString;
  }

  public void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public void setPartnerId(String paramString)
  {
    this.partnerId = paramString;
  }

  public void setPassBaseInfo(String paramString)
  {
    this.passBaseInfo = paramString;
  }

  public void setPassId(String paramString)
  {
    this.passId = paramString;
  }

  public void setPassPath(String paramString)
  {
    this.passPath = paramString;
  }

  public void setSerialNumber(String paramString)
  {
    this.serialNumber = paramString;
  }

  public void setStatus(int paramInt)
  {
    this.status = paramInt;
  }

  public void setTimestamp(long paramLong)
  {
    this.timestamp = paramLong;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }

  public String toString()
  {
    return "bizType=" + this.bizType + ", passPath=" + this.passPath + ", status=" + this.status + ", userId=" + this.userId + ", passBaseInfo=" + this.passBaseInfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.bean.AlipassOffline
 * JD-Core Version:    0.6.2
 */