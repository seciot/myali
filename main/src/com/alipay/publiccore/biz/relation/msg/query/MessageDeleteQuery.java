package com.alipay.publiccore.biz.relation.msg.query;

import com.alipay.publiccore.common.service.facade.model.ToString;

public class MessageDeleteQuery extends ToString
{
  public String msgId;
  public String msgType;
  public String operationType;
  public String userId;

  public String getMsgId()
  {
    return this.msgId;
  }

  public String getMsgType()
  {
    return this.msgType;
  }

  public String getOperationType()
  {
    return this.operationType;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setMsgId(String paramString)
  {
    this.msgId = paramString;
  }

  public void setMsgType(String paramString)
  {
    this.msgType = paramString;
  }

  public void setOperationType(String paramString)
  {
    this.operationType = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.query.MessageDeleteQuery
 * JD-Core Version:    0.6.2
 */