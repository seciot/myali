package com.alipay.publiccore.client.req;

import com.alipay.publiccore.common.service.facade.model.ToString;

public class GlobalRecommendReq extends ToString
{
  private int pageSize;
  private String publicId;

  public int getPageSize()
  {
    return this.pageSize;
  }

  public String getPublicId()
  {
    return this.publicId;
  }

  public void setPageSize(int paramInt)
  {
    this.pageSize = paramInt;
  }

  public void setPublicId(String paramString)
  {
    this.publicId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.req.GlobalRecommendReq
 * JD-Core Version:    0.6.2
 */