package com.alipay.mobile.alipassapp.biz.model;

public final class AlipassInfo$DisplayInfo
{
  String backgroundColor;
  String exp;
  String icon;
  String logo;
  String strip;

  public final String getBackgroundColor()
  {
    return this.backgroundColor;
  }

  public final String getExp()
  {
    return this.exp;
  }

  public final String getIcon()
  {
    return this.icon;
  }

  public final String getLogo()
  {
    return this.logo;
  }

  public final int getResolveBackgroundColor(int paramInt)
  {
    return AlipassInfo.resolveColor(this.backgroundColor, paramInt);
  }

  public final String getStrip()
  {
    return this.strip;
  }

  public final void setBackgroundColor(String paramString)
  {
    this.backgroundColor = paramString;
  }

  public final void setExp(String paramString)
  {
    this.exp = paramString;
  }

  public final void setIcon(String paramString)
  {
    this.icon = paramString;
  }

  public final void setLogo(String paramString)
  {
    this.logo = paramString;
  }

  public final void setStrip(String paramString)
  {
    this.strip = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo
 * JD-Core Version:    0.6.2
 */