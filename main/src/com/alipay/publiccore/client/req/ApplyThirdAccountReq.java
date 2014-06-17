package com.alipay.publiccore.client.req;

import com.alipay.publiccore.common.service.facade.model.ToString;

public class ApplyThirdAccountReq extends ToString
{
  public String publicId;
  public String userId;

  public String getPublicId()
  {
    return this.publicId;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setPublicId(String paramString)
  {
    this.publicId = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.req.ApplyThirdAccountReq
 * JD-Core Version:    0.6.2
 */