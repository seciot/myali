package com.alipay.mobilesecurity.taobao.sso.util;

import android.content.Context;
import android.content.ContextWrapper;
import android.net.Uri;
import android.taobao.service.appdevice.AppDeviceTokenManager;
import android.taobao.service.appdevice.IAppDeviceTokenManager;
import android.taobao.service.appdevice.util.MTopUtils;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.HttpTransportSevice;
import com.taobao.securityjni.GlobalInit;
import com.taobao.securityjni.SecretUtil;
import com.taobao.securityjni.tools.DataContext;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.concurrent.Future;

public class TaobaoSsoLoginUtils
{
  private static String a;
  private static String b;
  private static HttpTransportSevice c;
  private static volatile boolean d = true;
  private static boolean e;

  public static String createSecSign(String paramString1, String paramString2, long paramLong, String paramString3, String paramString4, Context paramContext)
  {
    try
    {
      init(paramContext);
      ContextWrapper localContextWrapper = new ContextWrapper(paramContext);
      LinkedHashMap localLinkedHashMap = new LinkedHashMap();
      localLinkedHashMap.put("SSO", paramString1);
      localLinkedHashMap.put("DEV", paramString2);
      localLinkedHashMap.put("TIME", String.valueOf(paramLong));
      localLinkedHashMap.put("IMEI", paramString3);
      localLinkedHashMap.put("IMSI", paramString4);
      DataContext localDataContext = new DataContext(0, null);
      localDataContext.category = 1;
      localDataContext.type = 0;
      localDataContext.extData = getAppKey(localContextWrapper).getBytes();
      new StringBuilder("生成安全签名,入参,ssoToken:").append(paramString1).append(",taobaoDeviceId:").append(paramString2).append(",timeStamp:").append(paramLong).append(",imei:").append(paramString3).append(",imsi:").append(paramString4).toString();
      String str = new SecretUtil(localContextWrapper).getExternalSign(localLinkedHashMap, localDataContext);
      new StringBuilder("生成安全签名成功:").append(str).toString();
      return str;
    }
    catch (Throwable localThrowable)
    {
      Object[] arrayOfObject = new Object[5];
      arrayOfObject[0] = paramString1;
      arrayOfObject[1] = paramString2;
      arrayOfObject[2] = Long.valueOf(paramLong);
      arrayOfObject[3] = paramString3;
      arrayOfObject[4] = paramString4;
      String.format("生成安全签名失败,ssoToken:%s,taobaoDeviceId:%s,timeStamp:%s,imei:%s,imsi:%s", arrayOfObject);
    }
    return null;
  }

  public static String doHttpRequest(String paramString1, String paramString2)
  {
    if (c == null)
      c = (HttpTransportSevice)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(HttpTransportSevice.class.getName());
    HttpUrlRequest localHttpUrlRequest = new HttpUrlRequest(paramString1);
    Future localFuture = c.execute(localHttpUrlRequest);
    try
    {
      Response localResponse = (Response)localFuture.get();
      if (localResponse == null)
        return null;
      String str = new String(localResponse.getResData(), paramString2);
      return str;
    }
    catch (Exception localException)
    {
      new StringBuilder("http请求出现异常:").append(localException.getMessage()).toString();
    }
    return null;
  }

  public static String getAppKey(Context paramContext)
  {
    return "12501616";
  }

  public static String getParsedNickName()
  {
    return b;
  }

  public static String getParsedSsoToken()
  {
    return a;
  }

  public static void init(Context paramContext)
  {
    if (d);
    try
    {
      GlobalInit.GlobalSecurityInitAsyncSo(new ContextWrapper(paramContext), paramContext.getDir("plugins_lib", 0).getAbsolutePath());
      d = false;
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      d = true;
    }
  }

  public static boolean isTaobaoSsoLogin(Uri paramUri)
  {
    if (paramUri != null)
      return isTaobaoSsoLogin(paramUri.toString());
    return false;
  }

  public static boolean isTaobaoSsoLogin(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
      return paramString.trim().startsWith("alipays://platformapi/startApp?appId=20000034");
    return false;
  }

  public static String obtainTaobaoDeviceId(String paramString, Context paramContext)
  {
    try
    {
      init(paramContext);
      String str1 = getAppKey(paramContext);
      MTopUtils.setMTopUrlType(paramContext, "0");
      AppDeviceTokenManager localAppDeviceTokenManager = AppDeviceTokenManager.getInstance();
      localAppDeviceTokenManager.setDeviceUTDID(paramContext, paramString);
      localAppDeviceTokenManager.setAppTTID(paramContext, str1, "701339@zhifubao_android_7.1.2");
      new StringBuilder("尝试生成淘宝deviceId，入参,utdid:").append(paramString).append(",appKey:").append(str1).append(",mTopUrlType").append("0").append(",ttid:701339@zhifubao_android_7.1.2").toString();
      String str2 = localAppDeviceTokenManager.getAppDeviceToken(paramContext, str1);
      new StringBuilder("获取淘宝deviceId成功:").append(str2).toString();
      return str2;
    }
    catch (Throwable localThrowable)
    {
    }
    return null;
  }

  public static boolean parseTaobaoSsoToken(Context paramContext)
  {
    e = false;
    try
    {
      init(paramContext);
      com.taobao.android.ssologin.a locala = new com.taobao.android.ssologin.a(new a(), paramContext);
      try
      {
        locala.a();
        e = true;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = a;
        arrayOfObject[1] = b;
        String.format("sso token解析完成,sso token:%s,nickName:%s", arrayOfObject);
        return e;
      }
      catch (Throwable localThrowable2)
      {
        while (true)
        {
          new StringBuilder("解析淘系sso token失败").append(localThrowable2.getMessage()).toString();
          e = false;
        }
      }
    }
    catch (Throwable localThrowable1)
    {
      while (true)
      {
        new StringBuilder("解析淘系sso token失败").append(localThrowable1.getMessage()).toString();
        e = false;
      }
    }
  }

  public static long syncTimeStamp()
  {
    try
    {
      JSONObject localJSONObject = JSON.parseObject(doHttpRequest("http://api.wapa.taobao.com/rest/api2.do?v=*&api=mtop.common.getTimestamp", "UTF-8"));
      JSONArray localJSONArray = localJSONObject.getJSONArray("ret");
      if ((localJSONArray != null) && ("SUCCESS::接口调用成功".equals(localJSONArray.getString(0))))
      {
        Long localLong = localJSONObject.getJSONObject("data").getLong("t");
        if ((localLong != null) && (0L < localLong.longValue()))
        {
          long l = localLong.longValue();
          return l;
        }
      }
    }
    catch (Throwable localThrowable)
    {
    }
    return System.currentTimeMillis();
  }

  public static boolean writeSsoToken(String paramString1, String paramString2, Context paramContext)
  {
    try
    {
      init(paramContext);
      boolean bool = new com.taobao.android.ssologin.a(new b(), paramContext).a(paramString2, paramString1);
      Object[] arrayOfObject = new Object[3];
      arrayOfObject[0] = Boolean.valueOf(bool);
      arrayOfObject[1] = paramString1;
      arrayOfObject[2] = paramString2;
      String.format("写入sso token，结果为:%s,nickName:%s,ssoToken:%s", arrayOfObject);
      return bool;
    }
    catch (Throwable localThrowable)
    {
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilesecurity.taobao.sso.util.TaobaoSsoLoginUtils
 * JD-Core Version:    0.6.2
 */