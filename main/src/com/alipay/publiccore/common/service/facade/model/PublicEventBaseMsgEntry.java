package com.alipay.publiccore.common.service.facade.model;

import java.io.Serializable;

public class PublicEventBaseMsgEntry extends ToString
  implements Serializable
{
  public String agreementId;
  public boolean isClieckedDelete;
  public boolean isCouldDelete;
  public boolean isReaded;
  public String msgId;
  public String msgType;
  public String thirdAccountId;
  public String time;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.common.service.facade.model.PublicEventBaseMsgEntry
 * JD-Core Version:    0.6.2
 */