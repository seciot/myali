package com.alipay.mobile.alipassapp.biz.common;

import android.content.Context;
import com.alipay.mobile.common.helper.ReadSettingServerUrl;
import java.net.MalformedURLException;
import java.net.URL;

public final class f
{
  public static final String a(Context paramContext, String paramString)
  {
    if (paramString.equalsIgnoreCase("COUPON"))
    {
      if (ReadSettingServerUrl.isDebug(paramContext))
      {
        String str3 = ReadSettingServerUrl.getValue(paramContext, "content://com.alipay.setting/CmsUrl", "http://d.alipay.com/");
        try
        {
          URL localURL2 = new URL(str3);
          String str4 = localURL2.getProtocol() + "://" + localURL2.getHost() + "/mbresultyy/pcl.htm";
          return str4;
        }
        catch (MalformedURLException localMalformedURLException2)
        {
          new StringBuilder("url = ").append(str3).toString();
        }
      }
      return "http://d.alipay.com/mbresultyy/pcl.htm";
    }
    if (paramString.equalsIgnoreCase("TRAVEL"))
    {
      if (ReadSettingServerUrl.isDebug(paramContext))
      {
        String str1 = ReadSettingServerUrl.getValue(paramContext, "content://com.alipay.setting/CmsUrl", "http://d.alipay.com/");
        try
        {
          URL localURL1 = new URL(str1);
          String str2 = localURL1.getProtocol() + "://" + localURL1.getHost() + "/mbresultyy/ptl.htm";
          return str2;
        }
        catch (MalformedURLException localMalformedURLException1)
        {
          new StringBuilder("url = ").append(str1).toString();
        }
      }
      return "http://d.alipay.com/mbresultyy/ptl.htm";
    }
    return null;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.common.f
 * JD-Core Version:    0.6.2
 */