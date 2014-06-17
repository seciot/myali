package com.alipay.mobile.browser.handler;

import android.net.Uri;
import android.os.Bundle;
import android.webkit.WebView;
import com.alipay.mobile.browser.HtmlActivityV2;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import java.util.concurrent.atomic.AtomicInteger;

public class CMSHtmlActivityHandler extends HtmlActivityHandler
{
  private static int b = 2;
  private AtomicInteger a = new AtomicInteger(0);

  protected void afterGotoApp(HtmlActivityV2 paramHtmlActivityV2, WebView paramWebView, String paramString1, String paramString2)
  {
  }

  protected int beforeFinishActivity(HtmlActivityV2 paramHtmlActivityV2, WebView paramWebView, String paramString)
  {
    return 0;
  }

  protected int beforeGotoApp(HtmlActivityV2 paramHtmlActivityV2, WebView paramWebView, String paramString1, String paramString2)
  {
    return 0;
  }

  public String callBackProccessRequestUrl(String paramString)
  {
    return paramString;
  }

  public int callBackWhenURLLoding(HtmlActivityV2 paramHtmlActivityV2, WebView paramWebView, String paramString)
  {
    if (processScheme(paramHtmlActivityV2, paramWebView, paramString))
      return 1;
    return 0;
  }

  public void finishActivity(HtmlActivityV2 paramHtmlActivityV2, WebView paramWebView, String paramString)
  {
    if (beforeFinishActivity(paramHtmlActivityV2, paramWebView, paramString) == 1)
      return;
    paramHtmlActivityV2.finishActivity();
  }

  public void forceLoginAndLoadUrl(HtmlActivityV2 paramHtmlActivityV2, WebView paramWebView, String paramString)
  {
    paramHtmlActivityV2.forceLoginAndLoadUrl();
  }

  public void gotoApp(HtmlActivityV2 paramHtmlActivityV2, WebView paramWebView, String paramString1, String paramString2, Bundle paramBundle)
  {
    MicroApplicationContext localMicroApplicationContext = super.getMicroApplicationContext();
    try
    {
      if (beforeGotoApp(paramHtmlActivityV2, paramWebView, paramString1, paramString2) == 1)
        return;
      localMicroApplicationContext.startApp(getmApp().getAppId(), paramString2, paramBundle);
      afterGotoApp(paramHtmlActivityV2, paramWebView, paramString1, paramString2);
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("gotoApp exception. target=[").append(paramString2).append("]").toString();
      paramHtmlActivityV2.finishActivity();
    }
  }

  public boolean processScheme(HtmlActivityV2 paramHtmlActivityV2, WebView paramWebView, String paramString)
  {
    int m;
    if (paramString != null)
    {
      m = paramString.indexOf("alipay://");
      if (m == -1);
    }
    String str3;
    String str4;
    String str5;
    String str6;
    for (paramString = paramString.substring(m); ; paramString = "")
    {
      Uri localUri = Uri.parse(paramString);
      boolean bool1 = false;
      if (paramString != null)
      {
        String str1 = localUri.getScheme();
        bool1 = false;
        if (str1 != null)
          if (!localUri.getScheme().equals("alipay"))
          {
            boolean bool4 = localUri.getScheme().equalsIgnoreCase("alipays");
            bool1 = false;
            if (!bool4);
          }
          else
          {
            String str2 = localUri.getHost();
            bool1 = false;
            if (str2 != null)
            {
              boolean bool2 = localUri.getHost().equals("platformapi");
              bool1 = false;
              if (bool2)
              {
                new StringBuilder("url=[").append(paramString).append("]").toString();
                if (!localUri.getPath().endsWith("function"))
                  break label285;
                str3 = localUri.getQueryParameter("functionName");
                str4 = localUri.getQueryParameter("isSuccess");
                str5 = localUri.getQueryParameter("AppsId");
                str6 = localUri.getQueryParameter("actionType");
                if (!str3.equalsIgnoreCase("reLogin"))
                  break label287;
                int i = this.a.incrementAndGet();
                int j = b;
                int k = 0;
                if (i <= j)
                  k = 1;
                if (k != 0)
                  break;
                paramHtmlActivityV2.alert("", "系统错误，请稍后再试！", "重试", new CMSHtmlActivityHandler.1(this, paramHtmlActivityV2, paramWebView, paramString), "返回", new CMSHtmlActivityHandler.2(this, paramHtmlActivityV2));
                bool1 = true;
              }
            }
          }
      }
      return bool1;
    }
    forceLoginAndLoadUrl(paramHtmlActivityV2, paramWebView, paramString);
    while (true)
    {
      label285: return true;
      label287: if ((!str3.equalsIgnoreCase("experienceMoney")) || (!str4.equalsIgnoreCase("YES")))
        if (str3.equalsIgnoreCase("exitWapPage"))
        {
          finishActivity(paramHtmlActivityV2, paramWebView, paramString);
        }
        else if (str3.equalsIgnoreCase("goto"))
        {
          Bundle localBundle = null;
          if (str6 != null)
          {
            boolean bool3 = "".equalsIgnoreCase(str6);
            localBundle = null;
            if (!bool3)
            {
              localBundle = new Bundle();
              localBundle.putString("actionType", str6);
            }
          }
          gotoApp(paramHtmlActivityV2, paramWebView, paramString, str5, localBundle);
        }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.browser.handler.CMSHtmlActivityHandler
 * JD-Core Version:    0.6.2
 */