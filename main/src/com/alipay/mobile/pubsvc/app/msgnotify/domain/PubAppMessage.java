package com.alipay.mobile.pubsvc.app.msgnotify.domain;

import com.alibaba.fastjson.JSON;

public class PubAppMessage
{
  public String agreementId;
  public String eventType;
  public String message;
  public String messageType;
  public String publicId;
  public String thirdAccount;
  public String time;
  public String userId;

  public String toString()
  {
    return JSON.toJSONString(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.pubsvc.app.msgnotify.domain.PubAppMessage
 * JD-Core Version:    0.6.2
 */