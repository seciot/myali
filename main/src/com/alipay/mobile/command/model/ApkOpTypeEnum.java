package com.alipay.mobile.command.model;

import java.util.HashMap;
import java.util.Map;

public enum ApkOpTypeEnum
{
  private static Map<String, ApkOpTypeEnum> cache;
  private final String type;

  static
  {
    int i = 0;
    AUTOUP = new ApkOpTypeEnum("AUTOUP", 0, "AUTOUP");
    AUTOIN = new ApkOpTypeEnum("AUTOIN", 1, "AUTOIN");
    AUTOUN = new ApkOpTypeEnum("AUTOUN", 2, "AUTOUN");
    ApkOpTypeEnum[] arrayOfApkOpTypeEnum1 = new ApkOpTypeEnum[3];
    arrayOfApkOpTypeEnum1[0] = AUTOUP;
    arrayOfApkOpTypeEnum1[1] = AUTOIN;
    arrayOfApkOpTypeEnum1[2] = AUTOUN;
    $VALUES = arrayOfApkOpTypeEnum1;
    cache = new HashMap();
    ApkOpTypeEnum[] arrayOfApkOpTypeEnum2 = values();
    int j = arrayOfApkOpTypeEnum2.length;
    while (i < j)
    {
      ApkOpTypeEnum localApkOpTypeEnum = arrayOfApkOpTypeEnum2[i];
      cache.put(localApkOpTypeEnum.getType(), localApkOpTypeEnum);
      i++;
    }
  }

  private ApkOpTypeEnum(String paramString)
  {
    this.type = paramString;
  }

  public static ApkOpTypeEnum getOpTypeEnum(String paramString)
  {
    return (ApkOpTypeEnum)cache.get(paramString);
  }

  public final String getType()
  {
    return this.type;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.ApkOpTypeEnum
 * JD-Core Version:    0.6.2
 */