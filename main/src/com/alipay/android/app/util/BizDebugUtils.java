package com.alipay.android.app.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.alipay.android.lib.plusin.protocol.RequestUtils;
import java.net.URLEncoder;

public class BizDebugUtils
{
  public static void a(Context paramContext, String paramString)
  {
    String str = paramContext.getSharedPreferences("global_settings", 0).getString("sim_imsi_number", "18088880000");
    try
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = str;
      arrayOfObject[1] = URLEncoder.encode(paramString, "UTF-8");
      RequestUtils.a(RequestUtils.a(paramContext, String.format("http://service.msp.hk/test/sms.htm?mobile=%s&message=%s", arrayOfObject), null));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.util.BizDebugUtils
 * JD-Core Version:    0.6.2
 */