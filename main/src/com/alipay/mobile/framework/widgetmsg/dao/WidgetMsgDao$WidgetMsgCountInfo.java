package com.alipay.mobile.framework.widgetmsg.dao;

public class WidgetMsgDao$WidgetMsgCountInfo
{
  public int descendantCount = 0;
  public String msgStyle = null;
  public boolean needAck = false;
  public int persistenceCount = 0;
  public int temporaryMsgCount = 0;
  public String widgetMsgId;

  public String toString()
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.widgetMsgId;
    arrayOfObject[1] = Integer.valueOf(this.temporaryMsgCount);
    arrayOfObject[2] = Integer.valueOf(this.persistenceCount);
    arrayOfObject[3] = Integer.valueOf(this.descendantCount);
    return String.format("(id:%s, t:%d, p:%d, d:%d)", arrayOfObject);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetmsg.dao.WidgetMsgDao.WidgetMsgCountInfo
 * JD-Core Version:    0.6.2
 */