package com.alipay.mobile.common.logagent;

import java.util.HashMap;

public class StorageStateInfo
{
  private static StorageStateInfo a;
  private HashMap b = new HashMap();

  public static StorageStateInfo getInstance()
  {
    try
    {
      if (a == null)
        a = new StorageStateInfo();
      StorageStateInfo localStorageStateInfo = a;
      return localStorageStateInfo;
    }
    finally
    {
    }
  }

  public void clearValue()
  {
    String str1 = getValue("productID");
    String str2 = getValue("productVersion");
    String str3 = getValue("clientID");
    String str4 = getValue("uuID");
    String str5 = getValue("modelVersion");
    this.b.clear();
    this.b.put("productID", str1);
    this.b.put("productVersion", str2);
    this.b.put("clientID", str3);
    this.b.put("uuID", str4);
    this.b.put("modelVersion", str5);
  }

  public String getValue(String paramString)
  {
    String str = (String)this.b.get(paramString);
    if (str == null)
      str = "";
    return str;
  }

  public boolean isRegisted()
  {
    return !this.b.isEmpty();
  }

  public void putValue(String paramString1, String paramString2)
  {
    this.b.put(paramString1, paramString2);
  }

  public void registClient(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    this.b.put("productID", paramString1);
    this.b.put("productVersion", paramString2);
    this.b.put("modelVersion", paramString5);
    this.b.put("clientID", paramString3);
    this.b.put("uuID", paramString4);
  }

  public void removeValue(String paramString)
  {
    this.b.remove(paramString);
  }

  public void unRegistClient()
  {
    this.b.clear();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logagent.StorageStateInfo
 * JD-Core Version:    0.6.2
 */