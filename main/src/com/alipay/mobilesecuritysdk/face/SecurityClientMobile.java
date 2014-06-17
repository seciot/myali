package com.alipay.mobilesecuritysdk.face;

import android.content.Context;
import com.alipay.mobilesecuritysdk.deviceID.DeviceIdManager;
import java.util.Map;

public class SecurityClientMobile
{
  private static boolean a = false;
  private static boolean b = false;

  public static String a(Context paramContext, Map paramMap)
  {
    try
    {
      String str = new DeviceIdManager(paramContext).a(paramMap);
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecuritysdk.face.SecurityClientMobile
 * JD-Core Version:    0.6.2
 */