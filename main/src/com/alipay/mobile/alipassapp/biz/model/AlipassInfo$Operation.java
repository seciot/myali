package com.alipay.mobile.alipassapp.biz.model;

import java.io.Serializable;

public class AlipassInfo$Operation
  implements Serializable
{
  private static final long serialVersionUID = 8190551883393903081L;
  String altText;
  String format;
  String messageEncoding;

  public String getAltText()
  {
    return this.altText;
  }

  public String getFormat()
  {
    return this.format;
  }

  public String getMessageEncoding()
  {
    return this.messageEncoding;
  }

  public void setAltText(String paramString)
  {
    this.altText = paramString;
  }

  public void setFormat(String paramString)
  {
    this.format = paramString;
  }

  public void setMessageEncoding(String paramString)
  {
    this.messageEncoding = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation
 * JD-Core Version:    0.6.2
 */