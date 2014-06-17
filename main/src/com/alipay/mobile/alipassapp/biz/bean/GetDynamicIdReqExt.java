package com.alipay.mobile.alipassapp.biz.bean;

public class GetDynamicIdReqExt
{
  private String bizType;

  public GetDynamicIdReqExt(String paramString)
  {
    this.bizType = paramString;
  }

  public String getBizType()
  {
    return this.bizType;
  }

  public void setBizType(String paramString)
  {
    this.bizType = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.bean.GetDynamicIdReqExt
 * JD-Core Version:    0.6.2
 */