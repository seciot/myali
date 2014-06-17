package com.aps;

public final class av
{
  protected static final String[] a = { "android.permission.READ_PHONE_STATE", "android.permission.ACCESS_WIFI_STATE", "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.CHANGE_WIFI_STATE", "android.permission.ACCESS_NETWORK_STATE" };

  protected static boolean a(String[] paramArrayOfString, String paramString)
  {
    boolean bool = false;
    if (paramArrayOfString != null)
    {
      bool = false;
      if (paramString == null);
    }
    for (int i = 0; ; i++)
    {
      int j = paramArrayOfString.length;
      bool = false;
      if (i < j)
      {
        if (paramArrayOfString[i].equals(paramString))
          bool = true;
      }
      else
        return bool;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.aps.av
 * JD-Core Version:    0.6.2
 */