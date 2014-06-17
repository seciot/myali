package com.alipay.publiccore.client.req;

import com.alipay.publiccore.common.service.facade.model.ToString;
import java.io.Serializable;

public class OfficialSmartRecommendReq extends ToString
  implements Serializable
{
  private String bizType;
  private long gmtCreate;
  private String tradeNo;

  public String getBizType()
  {
    return this.bizType;
  }

  public long getGmtCreate()
  {
    return this.gmtCreate;
  }

  public String getTradeNo()
  {
    return this.tradeNo;
  }

  public void setBizType(String paramString)
  {
    this.bizType = paramString;
  }

  public void setGmtCreate(long paramLong)
  {
    this.gmtCreate = paramLong;
  }

  public void setTradeNo(String paramString)
  {
    this.tradeNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.req.OfficialSmartRecommendReq
 * JD-Core Version:    0.6.2
 */