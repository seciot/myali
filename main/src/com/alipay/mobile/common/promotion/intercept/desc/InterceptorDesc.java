package com.alipay.mobile.common.promotion.intercept.desc;

public class InterceptorDesc
{
  public String appId;
  public boolean isSwallow = false;
  public String pageId;
  public String triggerId;
  public String type;

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    InterceptorDesc localInterceptorDesc;
    do
    {
      return true;
      if (!(paramObject instanceof InterceptorDesc))
        break;
      localInterceptorDesc = (InterceptorDesc)paramObject;
    }
    while ((this.appId != null) && (this.appId.equals(localInterceptorDesc.appId)) && (this.pageId != null) && (this.pageId.equals(localInterceptorDesc.pageId)) && (this.type != null) && (this.type.equals(localInterceptorDesc.type)) && (this.isSwallow == localInterceptorDesc.isSwallow) && (this.triggerId != null) && (this.triggerId.equals(localInterceptorDesc.triggerId)));
    return false;
  }

  public String toString()
  {
    return "InterceptDesc: appId:" + this.appId + ",pageId:" + this.pageId + ",triggerId:" + this.triggerId + ",type:" + this.type + ",isSwallow:" + this.isSwallow;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.desc.InterceptorDesc
 * JD-Core Version:    0.6.2
 */