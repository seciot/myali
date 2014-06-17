package com.alipay.mobile.common.promotion.intercept.desc;

public class JumpInterceptorDesc extends InterceptorDesc
{
  public String targetAppId;
  public String targetPageId;

  public boolean equals(Object paramObject)
  {
    if (this == paramObject);
    JumpInterceptorDesc localJumpInterceptorDesc;
    do
    {
      return true;
      if (!(paramObject instanceof JumpInterceptorDesc))
        break;
      localJumpInterceptorDesc = (JumpInterceptorDesc)paramObject;
    }
    while ((this.appId != null) && (this.appId.equals(localJumpInterceptorDesc.appId)) && (this.pageId != null) && (this.pageId.equals(localJumpInterceptorDesc.pageId)) && (this.targetPageId != null) && (this.targetPageId.equals(localJumpInterceptorDesc.targetPageId)) && (this.targetAppId != null) && (this.targetAppId.equals(localJumpInterceptorDesc.targetAppId)) && (this.triggerId != null) && (this.triggerId.equals(localJumpInterceptorDesc.triggerId)));
    return false;
  }

  public String toString()
  {
    return super.toString() + ", targetAppId: " + this.targetAppId + ", targetPageId: " + this.targetPageId;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.promotion.intercept.desc.JumpInterceptorDesc
 * JD-Core Version:    0.6.2
 */