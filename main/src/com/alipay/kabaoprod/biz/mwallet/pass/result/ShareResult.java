package com.alipay.kabaoprod.biz.mwallet.pass.result;

import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public class ShareResult extends KabaoCommonResult
{
  public String shareContent;
  public String shareImgDesc;
  public String shareImgUrl;

  public String getShareContent()
  {
    return this.shareContent;
  }

  public String getShareImgDesc()
  {
    return this.shareImgDesc;
  }

  public String getShareImgUrl()
  {
    return this.shareImgUrl;
  }

  public void setShareContent(String paramString)
  {
    this.shareContent = paramString;
  }

  public void setShareImgDesc(String paramString)
  {
    this.shareImgDesc = paramString;
  }

  public void setShareImgUrl(String paramString)
  {
    this.shareImgUrl = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.pass.result.ShareResult
 * JD-Core Version:    0.6.2
 */