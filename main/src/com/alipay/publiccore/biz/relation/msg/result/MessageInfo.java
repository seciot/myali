package com.alipay.publiccore.biz.relation.msg.result;

import com.alipay.publiccore.common.service.facade.model.ToString;

public class MessageInfo extends ToString
{
  public ConsuBillMsgEntry consuBillMsgEntry = null;
  public ConsuRecordMsgEntry consuMsgEntry = null;
  public ConsuStatistMsgEntry consuStatistMsgEntry = null;
  public ImageMsgEntry imageMsgEntry = null;
  public String msgType = null;
  public String time = null;
  public TodoMsgEntry todoMsgEntry = null;

  public ConsuBillMsgEntry getConsuBillMsgEntry()
  {
    return this.consuBillMsgEntry;
  }

  public ConsuRecordMsgEntry getConsuMsgEntry()
  {
    return this.consuMsgEntry;
  }

  public ConsuStatistMsgEntry getConsuStatistMsgEntry()
  {
    return this.consuStatistMsgEntry;
  }

  public ImageMsgEntry getImageMsgEntry()
  {
    return this.imageMsgEntry;
  }

  public String getMsgType()
  {
    return this.msgType;
  }

  public String getTime()
  {
    return this.time;
  }

  public TodoMsgEntry getTodoMsgEntry()
  {
    return this.todoMsgEntry;
  }

  public void setConsuBillMsgEntry(ConsuBillMsgEntry paramConsuBillMsgEntry)
  {
    this.consuBillMsgEntry = paramConsuBillMsgEntry;
  }

  public void setConsuMsgEntry(ConsuRecordMsgEntry paramConsuRecordMsgEntry)
  {
    this.consuMsgEntry = paramConsuRecordMsgEntry;
  }

  public void setConsuStatistMsgEntry(ConsuStatistMsgEntry paramConsuStatistMsgEntry)
  {
    this.consuStatistMsgEntry = paramConsuStatistMsgEntry;
  }

  public void setImageMsgEntry(ImageMsgEntry paramImageMsgEntry)
  {
    this.imageMsgEntry = paramImageMsgEntry;
  }

  public void setMsgType(String paramString)
  {
    this.msgType = paramString;
  }

  public void setTime(String paramString)
  {
    this.time = paramString;
  }

  public void setTodoMsgEntry(TodoMsgEntry paramTodoMsgEntry)
  {
    this.todoMsgEntry = paramTodoMsgEntry;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.result.MessageInfo
 * JD-Core Version:    0.6.2
 */