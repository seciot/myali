package com.alipay.mobile.lib.model;

public class MessageActionParams
{
  public String actionParam;
  public String actionType;
  public boolean couldDelete;
  public int index = 0;
  public boolean longClickDelete;
  public ResponseBaseMessage msgBean;

  public MessageActionParams(String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, ResponseBaseMessage paramResponseBaseMessage, int paramInt)
  {
    this.actionType = paramString1;
    this.actionParam = paramString2;
    this.couldDelete = paramBoolean1;
    this.longClickDelete = paramBoolean2;
    this.msgBean = paramResponseBaseMessage;
    this.index = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.lib.model.MessageActionParams
 * JD-Core Version:    0.6.2
 */