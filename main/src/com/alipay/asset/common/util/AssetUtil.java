package com.alipay.asset.common.util;

import com.alipay.mobile.common.helper.ReadSettingServerUrl;
import com.alipay.mobile.framework.AlipayApplication;

public final class AssetUtil
{
  private static boolean a;

  static
  {
    boolean bool1 = ReadSettingServerUrl.isDebug(AlipayApplication.getInstance());
    if (!bool1);
    for (boolean bool2 = true; ; bool2 = false)
    {
      a = bool2;
      if (bool1)
      {
        String str = ReadSettingServerUrl.getInstance().getGWFURL(AlipayApplication.getInstance());
        if ((str != null) && (str.indexOf(".alipay.net") > 0))
          a = false;
      }
      return;
    }
  }

  public static final boolean isOnline()
  {
    return a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.asset.common.util.AssetUtil
 * JD-Core Version:    0.6.2
 */