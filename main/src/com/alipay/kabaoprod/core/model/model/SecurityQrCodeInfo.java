package com.alipay.kabaoprod.core.model.model;

import com.alipay.kabaoprod.service.facade.model.ToString;

public class SecurityQrCodeInfo extends ToString
{
  public String qrcode;
  public String qrcodeImageUrl;

  public String getQrcode()
  {
    return this.qrcode;
  }

  public String getQrcodeImageUrl()
  {
    return this.qrcodeImageUrl;
  }

  public void setQrcode(String paramString)
  {
    this.qrcode = paramString;
  }

  public void setQrcodeImageUrl(String paramString)
  {
    this.qrcodeImageUrl = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.core.model.model.SecurityQrCodeInfo
 * JD-Core Version:    0.6.2
 */