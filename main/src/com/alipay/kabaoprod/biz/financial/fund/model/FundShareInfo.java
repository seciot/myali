package com.alipay.kabaoprod.biz.financial.fund.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class FundShareInfo extends ToString
{
  public String content;
  public String imgUrl;
  public String targetUrl;
  public String title;

  public String getContent()
  {
    return this.content;
  }

  public String getImgUrl()
  {
    return this.imgUrl;
  }

  public String getTargetUrl()
  {
    return this.targetUrl;
  }

  public String getTitle()
  {
    return this.title;
  }

  public void setContent(String paramString)
  {
    this.content = paramString;
  }

  public void setImgUrl(String paramString)
  {
    this.imgUrl = paramString;
  }

  public void setTargetUrl(String paramString)
  {
    this.targetUrl = paramString;
  }

  public void setTitle(String paramString)
  {
    this.title = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.financial.fund.model.FundShareInfo
 * JD-Core Version:    0.6.2
 */