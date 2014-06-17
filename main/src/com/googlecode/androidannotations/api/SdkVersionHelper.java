package com.googlecode.androidannotations.api;

import android.os.Build.VERSION;

public class SdkVersionHelper
{
  public static int getSdkInt()
  {
    if (Build.VERSION.RELEASE.startsWith("1.5"))
      return 3;
    return SdkVersionHelper.HelperInternal.access$000();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.googlecode.androidannotations.api.SdkVersionHelper
 * JD-Core Version:    0.6.2
 */