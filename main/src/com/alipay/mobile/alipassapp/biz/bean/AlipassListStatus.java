package com.alipay.mobile.alipassapp.biz.bean;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable(tableName="alipassliststatus")
public class AlipassListStatus
  implements Serializable
{
  public static final String BIZTYPE = "bizType";
  public static final String USERID = "userId";
  private static final long serialVersionUID = 1L;

  @DatabaseField
  private String bizType;

  @DatabaseField
  private int hasPast;

  @DatabaseField(generatedId=true)
  private int id;

  @DatabaseField
  private String userId;

  public String getBizType()
  {
    return this.bizType;
  }

  public int getHasPast()
  {
    return this.hasPast;
  }

  public int getId()
  {
    return this.id;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setBizType(String paramString)
  {
    this.bizType = paramString;
  }

  public void setHasPast(int paramInt)
  {
    this.hasPast = paramInt;
  }

  public void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.bean.AlipassListStatus
 * JD-Core Version:    0.6.2
 */