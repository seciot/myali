package com.alipay.mobilesecurity.core.model.account;

import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class GetUserHeaderImgUrlResult extends MobileSecurityResult
{
  public String headImgUrl;
  public String userId;

  public String getHeadImgUrl()
  {
    return this.headImgUrl;
  }

  public String getUserId()
  {
    return this.userId;
  }

  public void setHeadImgUrl(String paramString)
  {
    this.headImgUrl = paramString;
  }

  public void setUserId(String paramString)
  {
    this.userId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.core.model.account.GetUserHeaderImgUrlResult
 * JD-Core Version:    0.6.2
 */