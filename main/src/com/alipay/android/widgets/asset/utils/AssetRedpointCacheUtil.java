package com.alipay.android.widgets.asset.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.alipay.mobile.common.helper.UserInfoHelper;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.util.HashMap;

public class AssetRedpointCacheUtil
{
  private static HashMap<String, String> a = new HashMap();

  private static SharedPreferences a(Context paramContext, String paramString)
  {
    return paramContext.getSharedPreferences("asset_redpoint_" + paramString, 0);
  }

  private static String a()
  {
    UserInfo localUserInfo = UserInfoHelper.getInstance().getUserInfo(AlipayApplication.getInstance().getMicroApplicationContext());
    if (localUserInfo != null)
      return localUserInfo.getUserId();
    return null;
  }

  public static String a(String paramString)
  {
    AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
    String str1 = a();
    String str2;
    if (str1 == null)
      str2 = null;
    do
    {
      return str2;
      str2 = (String)a.get(b(paramString));
    }
    while ((str2 != null) && (!"".equals(str2)));
    try
    {
      String str3 = a(localAlipayApplication, str1).getString(paramString, null);
      try
      {
        a.put(b(paramString), str3);
        return str3;
      }
      catch (Exception localException2)
      {
        return str3;
      }
    }
    catch (Exception localException1)
    {
    }
    return null;
  }

  public static boolean a(String paramString1, String paramString2)
  {
    AlipayApplication localAlipayApplication = AlipayApplication.getInstance();
    try
    {
      String str = a();
      if (str == null)
        return false;
      a(localAlipayApplication, str).edit().putString(paramString1, paramString2).commit();
      a.put(b(paramString1), paramString2);
      return true;
    }
    catch (Exception localException)
    {
    }
    return false;
  }

  private static String b(String paramString)
  {
    return a() + paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.utils.AssetRedpointCacheUtil
 * JD-Core Version:    0.6.2
 */