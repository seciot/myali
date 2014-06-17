package com.alipay.mobile.alipassapp.biz.model;

import java.io.Serializable;

public final class AlipassInfo$Params
  implements Serializable
{
  private static final long serialVersionUID = 1L;
  String action;
  String cardNo;
  String component;
  AlipassInfo.DataParams dataParams;
  String dataUrl;
  String operation;
  String pageType;
  String submit;

  public final String getAction()
  {
    return this.action;
  }

  public final String getCardNo()
  {
    return this.cardNo;
  }

  public final String getComponent()
  {
    return this.component;
  }

  public final AlipassInfo.DataParams getDataParams()
  {
    return this.dataParams;
  }

  public final String getDataUrl()
  {
    return this.dataUrl;
  }

  public final String getOperation()
  {
    return this.operation;
  }

  public final String getPageType()
  {
    return this.pageType;
  }

  public final String getSubmit()
  {
    return this.submit;
  }

  public final void setAction(String paramString)
  {
    this.action = paramString;
  }

  public final void setCardNo(String paramString)
  {
    this.cardNo = paramString;
  }

  public final void setComponent(String paramString)
  {
    this.component = paramString;
  }

  public final void setDataParams(AlipassInfo.DataParams paramDataParams)
  {
    this.dataParams = paramDataParams;
  }

  public final void setDataUrl(String paramString)
  {
    this.dataUrl = paramString;
  }

  public final void setOperation(String paramString)
  {
    this.operation = paramString;
  }

  public final void setPageType(String paramString)
  {
    this.pageType = paramString;
  }

  public final void setSubmit(String paramString)
  {
    this.submit = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Params
 * JD-Core Version:    0.6.2
 */