package com.alipay.publiccore.client.req;

import com.alipay.publiccore.common.service.facade.model.ToString;

public class OfficialQueryByInstIdReq extends ToString
{
  private String cardType;
  private String instId;

  public String getCardType()
  {
    return this.cardType;
  }

  public String getInstId()
  {
    return this.instId;
  }

  public void setCardType(String paramString)
  {
    this.cardType = paramString;
  }

  public void setInstId(String paramString)
  {
    this.instId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.req.OfficialQueryByInstIdReq
 * JD-Core Version:    0.6.2
 */