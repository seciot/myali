package com.alipay.mobile.framework.widgetmsg.dao;

import com.j256.ormlite.field.DatabaseField;
import com.j256.ormlite.table.DatabaseTable;
import java.io.Serializable;

@DatabaseTable(tableName="widget_msg_table")
public class WidgetMsgTable
  implements Serializable
{
  public static final String USER_ID = "userId";
  public static final String WIDGET_ID = "widgetId";
  private static final long serialVersionUID = 1L;

  @DatabaseField(generatedId=true)
  private int id;

  @DatabaseField
  private int persistenceCount;

  @DatabaseField
  private String style;

  @DatabaseField
  private int temporaryCount;

  @DatabaseField
  private String userId;

  @DatabaseField
  private String widgetId;

  public int getPersistenceCount()
  {
    return this.persistenceCount;
  }

  public String getStyle()
  {
    return this.style;
  }

  public int getTemporaryCount()
  {
    return this.temporaryCount;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public String getWidgetId()
  {
    return this.widgetId;
  }

  public void setPersistenceCount(int paramInt)
  {
    this.persistenceCount = paramInt;
  }

  public void setStyle(String paramString)
  {
    this.style = paramString;
  }

  public void setTemporaryCount(int paramInt)
  {
    this.temporaryCount = paramInt;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }

  public void setWidgetId(String paramString)
  {
    this.widgetId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetmsg.dao.WidgetMsgTable
 * JD-Core Version:    0.6.2
 */