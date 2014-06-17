package com.alipay.publiccore.biz.relation.msg.query;

import com.alipay.publiccore.common.service.facade.model.ToString;

public class BaseMessageQuery extends ToString
{
  public String apiVersion;
  public String channelPackage;
  public String clientVersion;
  public String terminal;
  public String userId;

  public String getApiVersion()
  {
    return this.apiVersion;
  }

  public String getChannelPackage()
  {
    return this.channelPackage;
  }

  public String getClientVersion()
  {
    return this.clientVersion;
  }

  public String getTerminal()
  {
    return this.terminal;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setApiVersion(String paramString)
  {
    this.apiVersion = paramString;
  }

  public void setChannelPackage(String paramString)
  {
    this.channelPackage = paramString;
  }

  public void setClientVersion(String paramString)
  {
    this.clientVersion = paramString;
  }

  public void setTerminal(String paramString)
  {
    this.terminal = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.relation.msg.query.BaseMessageQuery
 * JD-Core Version:    0.6.2
 */