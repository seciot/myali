package com.alipay.mobile.alipassapp.biz.common.oldcoupon;

import java.util.List;

public final class AlipassInfoA$EvoucherInfo
{
  String description;
  String disclaimer;
  AlipassInfoA.Einfo eInfo;
  String endDate;
  String goodsId;
  List<AlipassInfoA.Locations> locations;
  String product;
  String startDate;
  String title;
  String type;

  public final String getDescription()
  {
    return this.description;
  }

  public final String getDisclaimer()
  {
    return this.disclaimer;
  }

  public final String getEndDate()
  {
    if ((this.endDate != null) && (this.endDate.length() > 10))
      return this.endDate.substring(0, 10);
    return this.endDate;
  }

  public final String getGoodsId()
  {
    return this.goodsId;
  }

  public final List<AlipassInfoA.Locations> getLocations()
  {
    return this.locations;
  }

  public final String getProduct()
  {
    return this.product;
  }

  public final String getStartDate()
  {
    if ((this.startDate != null) && (this.startDate.length() > 10))
      return this.startDate.substring(0, 10);
    return this.startDate;
  }

  public final String getTitle()
  {
    return this.title;
  }

  public final String getType()
  {
    return this.type;
  }

  public final AlipassInfoA.Einfo geteInfo()
  {
    return this.eInfo;
  }

  public final void setDescription(String paramString)
  {
    this.description = paramString;
  }

  public final void setDisclaimer(String paramString)
  {
    this.disclaimer = paramString;
  }

  public final void setEndDate(String paramString)
  {
    this.endDate = paramString;
  }

  public final void setGoodsId(String paramString)
  {
    this.goodsId = paramString;
  }

  public final void setLocations(List<AlipassInfoA.Locations> paramList)
  {
    this.locations = paramList;
  }

  public final void setProduct(String paramString)
  {
    this.product = paramString;
  }

  public final void setStartDate(String paramString)
  {
    this.startDate = paramString;
  }

  public final void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public final void setType(String paramString)
  {
    this.type = paramString;
  }

  public final void seteInfo(AlipassInfoA.Einfo paramEinfo)
  {
    this.eInfo = paramEinfo;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.common.oldcoupon.AlipassInfoA.EvoucherInfo
 * JD-Core Version:    0.6.2
 */