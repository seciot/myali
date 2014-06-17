package com.alipay.kabaoprod.biz.financial.fund.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class ImgInfo extends ToString
{
  public String imgDesc;
  public String imgTitle;
  public String imgUrl;

  public String getImgDesc()
  {
    return this.imgDesc;
  }

  public String getImgTitle()
  {
    return this.imgTitle;
  }

  public String getImgUrl()
  {
    return this.imgUrl;
  }

  public void setImgDesc(String paramString)
  {
    this.imgDesc = paramString;
  }

  public void setImgTitle(String paramString)
  {
    this.imgTitle = paramString;
  }

  public void setImgUrl(String paramString)
  {
    this.imgUrl = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.model.ImgInfo
 * JD-Core Version:    0.6.2
 */