package com.alipay.publiccore.biz.relation.msg.result;

import com.alipay.publiccore.common.service.facade.model.ToString;

public class BaseMsgEntry extends ToString
{
  public String agreementId;
  public boolean clieckedDelete;
  public boolean couldDelete;
  public String msgId;
  public String msgType;
  public boolean readed;
  public String thirdAccountId;
  public String time;

  public String getAgreementId()
  {
    return this.agreementId;
  }

  public String getMsgId()
  {
    return this.msgId;
  }

  public String getMsgType()
  {
    return this.msgType;
  }

  public String getThirdAccountId()
  {
    return this.thirdAccountId;
  }

  public String getTime()
  {
    return this.time;
  }

  public boolean isClieckedDelete()
  {
    return this.clieckedDelete;
  }

  public boolean isCouldDelete()
  {
    return this.couldDelete;
  }

  public boolean isReaded()
  {
    return this.readed;
  }

  public void setAgreementId(String paramString)
  {
    this.agreementId = paramString;
  }

  public void setClieckedDelete(boolean paramBoolean)
  {
    this.clieckedDelete = paramBoolean;
  }

  public void setCouldDelete(boolean paramBoolean)
  {
    this.couldDelete = paramBoolean;
  }

  public void setMsgId(String paramString)
  {
    this.msgId = paramString;
  }

  public void setMsgType(String paramString)
  {
    this.msgType = paramString;
  }

  public void setReaded(boolean paramBoolean)
  {
    this.readed = paramBoolean;
  }

  public void setThirdAccountId(String paramString)
  {
    this.thirdAccountId = paramString;
  }

  public void setTime(String paramString)
  {
    this.time = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.result.BaseMsgEntry
 * JD-Core Version:    0.6.2
 */