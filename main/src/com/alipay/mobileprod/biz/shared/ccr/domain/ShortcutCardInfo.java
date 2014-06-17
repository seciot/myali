package com.alipay.mobileprod.biz.shared.ccr.domain;

import java.io.Serializable;

public class ShortcutCardInfo extends BaseModel
  implements Serializable
{
  public String cardNoTail;
  public String holderName;
  public String instId;
  public String instName;
  public String signChannelType;
  public String signId;

  public String getCardNoTail()
  {
    return this.cardNoTail;
  }

  public String getHolderName()
  {
    return this.holderName;
  }

  public String getInstId()
  {
    return this.instId;
  }

  public String getInstName()
  {
    return this.instName;
  }

  public String getSignChannelType()
  {
    return this.signChannelType;
  }

  public String getSignId()
  {
    return this.signId;
  }

  public void setCardNoTail(String paramString)
  {
    this.cardNoTail = paramString;
  }

  public void setHolderName(String paramString)
  {
    this.holderName = paramString;
  }

  public void setInstId(String paramString)
  {
    this.instId = paramString;
  }

  public void setInstName(String paramString)
  {
    this.instName = paramString;
  }

  public void setSignChannelType(String paramString)
  {
    this.signChannelType = paramString;
  }

  public void setSignId(String paramString)
  {
    this.signId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.shared.ccr.domain.ShortcutCardInfo
 * JD-Core Version:    0.6.2
 */