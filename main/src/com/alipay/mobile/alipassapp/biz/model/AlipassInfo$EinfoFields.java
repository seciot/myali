package com.alipay.mobile.alipassapp.biz.model;

public final class AlipassInfo$EinfoFields
{
  public static final String TYPE_OPENNATIVE = "openNative";
  public static final String TYPE_OPENSCHEMA = "openSchema";
  public static final String TYPE_OPENWEB = "openWeb";
  String icon;
  String key;
  String label;
  AlipassInfo.More more;
  String type;
  String value;

  public AlipassInfo$EinfoFields()
  {
  }

  public AlipassInfo$EinfoFields(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    this.key = paramString1;
    this.label = paramString2;
    this.value = paramString3;
    this.type = paramString4;
  }

  public final String getIcon()
  {
    return this.icon;
  }

  public final String getKey()
  {
    return this.key;
  }

  public final String getLabel()
  {
    return this.label;
  }

  public final AlipassInfo.More getMore()
  {
    return this.more;
  }

  public final String getType()
  {
    return this.type;
  }

  public final String getValue()
  {
    return this.value;
  }

  public final void setIcon(String paramString)
  {
    this.icon = paramString;
  }

  public final void setKey(String paramString)
  {
    this.key = paramString;
  }

  public final void setLabel(String paramString)
  {
    this.label = paramString;
  }

  public final void setMore(AlipassInfo.More paramMore)
  {
    this.more = paramMore;
  }

  public final void setType(String paramString)
  {
    this.type = paramString;
  }

  public final void setValue(String paramString)
  {
    this.value = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields
 * JD-Core Version:    0.6.2
 */