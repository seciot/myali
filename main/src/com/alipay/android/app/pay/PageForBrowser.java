package com.alipay.android.app.pay;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.os.Bundle;
import com.alipay.android.app.IAlixPay;
import com.alipay.android.app.IRemoteServiceCallback;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.mini.window.AbsActivity;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;

public class PageForBrowser extends AbsActivity
{
  private String a;
  private IAlixPay b = null;
  private Integer c = Integer.valueOf(0);
  private boolean d = false;
  private Resources.Theme e;
  private int f;
  private ServiceConnection g = new j(this);
  private IRemoteServiceCallback h = new k(this);

  private static String b(String paramString)
  {
    String[] arrayOfString = paramString.split(";");
    if (arrayOfString != null)
      try
      {
        if (arrayOfString.length > 0)
        {
          int i = arrayOfString.length;
          for (int j = 0; j < i; j++)
          {
            new StringBuilder("temp").append(j).append(" = ").append(arrayOfString[j]).toString();
            LogUtils.g();
            int k = arrayOfString[j].indexOf("={");
            String str1 = arrayOfString[j].substring(0, k);
            if (str1.equalsIgnoreCase("callBackUrl"))
            {
              String str2 = arrayOfString[j].substring(k + "={".length(), -1 + arrayOfString[j].length());
              new StringBuilder("temp").append(j).append(" = ").append(str1).append("  s2= ").append(str2).toString();
              LogUtils.g();
              return str2;
            }
          }
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    return null;
  }

  public AssetManager getAssets()
  {
    return getApplication().getAssets();
  }

  public ClassLoader getClassLoader()
  {
    return getClass().getClassLoader();
  }

  public Resources getResources()
  {
    return getApplication().getResources();
  }

  public Resources.Theme getTheme()
  {
    if (this.e == null)
    {
      this.e = getResources().newTheme();
      Resources.Theme localTheme = getApplicationContext().getTheme();
      if (localTheme != null)
        this.e.setTo(localTheme);
      this.e.applyStyle(this.f, true);
    }
    return this.e;
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String str1 = getIntent().getDataString();
    if (str1 == null)
      return;
    new StringBuilder("data= ").append(str1).toString();
    LogUtils.g();
    this.a = str1.replace("alipaymsp://securitypay/?", "");
    new StringBuilder("info= ").append(this.a).toString();
    LogUtils.g();
    bindService(new Intent("com.alipay.android.app.IAlixPay"), this.g, 1);
    try
    {
      String str2 = URLDecoder.decode(this.a, "UTF-8");
      LogUtils.g();
      if (!this.d)
      {
        this.d = true;
        new Thread(new l(this, str2)).start();
      }
      finish();
      return;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      while (true)
        localUnsupportedEncodingException.printStackTrace();
    }
  }

  protected void onDestroy()
  {
    try
    {
      unbindService(this.g);
      super.onDestroy();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public void setTheme(int paramInt)
  {
    super.setTheme(paramInt);
    this.f = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.PageForBrowser
 * JD-Core Version:    0.6.2
 */