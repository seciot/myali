package com.taobao.securityjni.errorcode;

import android.util.SparseArray;

public class SErrMap
{
  public static final int DYNAMIC_NOT_STORE_KEYVALUE = -212;
  public static final int INVALID_PARAM = -2;
  public static final int PUBKEY_NOT_EQUAL = -104;
  public static final int SFILE_VERSION_ERROR = -302;
  public static final int STATIC_EXTRAFUNC_NO_KEY = -110;
  public static final int STATIC_NOT_STORE_VALUE = -111;
  public static final int SYS_ERROR = 1;
  public static final SparseArray SYS_MAP = new SparseArray();
  public static final int USER_ERROR = 2;
  public static final SparseArray USER_MAP = new SparseArray();

  static
  {
    SYS_MAP.put(-104, "Have No Value For Key: May public key error ,so you must recreate filejpg,or replace debugkeystore with right one");
    SYS_MAP.put(-302, "Data NULL: May filejpg version error,recreate new one with the new version of the tool");
    USER_MAP.put(-111, "Get Value NULL: May you don't store this value");
    USER_MAP.put(-110, "Get Extra Data With No Key");
    USER_MAP.put(-2, "Inalid Parameters: May your input is null or illegal");
    USER_MAP.put(-212, "DynamicStore do not store this key-value:May the key you passed is wrong");
  }

  public static String GetErrorDescption(int paramInt)
  {
    String str = (String)USER_MAP.get(paramInt);
    if (str == null)
      str = (String)SYS_MAP.get(paramInt);
    return str;
  }

  public static int GetErrorKind(int paramInt)
  {
    if (SYS_MAP.indexOfKey(paramInt) >= 0)
      return 1;
    if (USER_MAP.indexOfKey(paramInt) >= 0)
      return 2;
    return -1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.securityjni.errorcode.SErrMap
 * JD-Core Version:    0.6.2
 */