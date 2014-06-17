package com.alipay.android.widget.security.ui;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.RelativeLayout.LayoutParams;
import com.alipay.mobile.common.misc.ExtViewUtil;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ViewById;
import java.io.File;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

@EActivity(resName="security_webview")
public class SecurityWebviewActivity extends BaseActivity
{

  @ViewById(resName="titleBar")
  protected APTitleBar a;

  @ViewById(resName="relativeLayout_webview")
  protected APRelativeLayout b;
  protected WebView c;
  private String d = "SecurityWebviewActivity";
  private WebUrlHelper e;
  private String f;
  private String g;

  private static Set<String> a(Uri paramUri)
  {
    if (paramUri.isOpaque())
      throw new UnsupportedOperationException("This isn't a hierarchical URI.");
    String str = paramUri.getEncodedQuery();
    if (str == null)
      return Collections.emptySet();
    LinkedHashSet localLinkedHashSet = new LinkedHashSet();
    int i = 0;
    do
    {
      int j = str.indexOf('&', i);
      if (j == -1)
        j = str.length();
      int k = str.indexOf('=', i);
      if ((k > j) || (k == -1))
        k = j;
      localLinkedHashSet.add(Uri.decode(str.substring(i, k)));
      i = j + 1;
    }
    while (i < str.length());
    return Collections.unmodifiableSet(localLinkedHashSet);
  }

  private boolean a(WebView paramWebView, String paramString)
  {
    if (WebUrlHelper.e(paramString))
    {
      if (!TextUtils.isEmpty(this.g))
      {
        Bundle localBundle2 = new Bundle();
        localBundle2.putString("securityId", this.g);
        setResult(273, getIntent().putExtras(localBundle2));
      }
      finish();
    }
    Uri localUri2;
    if (this.e.a(paramString))
    {
      localUri2 = Uri.parse(paramString);
      if (WebUrlHelper.b(paramString))
        ((SchemeService)this.mApp.getMicroApplicationContext().findServiceByInterface(SchemeService.class.getName())).process(localUri2);
    }
    String str1;
    String str3;
    do
    {
      return true;
      try
      {
        startActivity(new Intent("android.intent.action.VIEW", localUri2));
        return true;
      }
      catch (Exception localException)
      {
        new StringBuilder("启动uri异常").append(localUri2.getScheme()).toString();
        return true;
      }
      if (!WebUrlHelper.c(paramString))
        break;
      Uri localUri1 = Uri.parse(paramString);
      if (Build.VERSION.SDK_INT >= 11);
      for (Set localSet = localUri1.getQueryParameterNames(); localSet == null; localSet = a(localUri1))
      {
        new StringBuilder("URL加载失败，参数解析失败：").append(paramString).toString();
        return true;
      }
      Iterator localIterator = localSet.iterator();
      str1 = "";
      String str2 = "";
      str3 = "";
      Bundle localBundle1 = null;
      while (localIterator.hasNext())
      {
        String str4 = (String)localIterator.next();
        if (str4.equals("action"))
        {
          str1 = localUri1.getQueryParameter(str4);
        }
        else if (str4.equals("appId"))
        {
          str2 = localUri1.getQueryParameter(str4);
        }
        else if (str4.equals("androidTopic"))
        {
          str3 = localUri1.getQueryParameter(str4);
        }
        else
        {
          if (localBundle1 == null)
            localBundle1 = new Bundle();
          localBundle1.putString(str4, localUri1.getQueryParameter(str4));
        }
      }
      if (str1.equals("startApp"))
        try
        {
          new StringBuilder("to start app : ").append(str2).toString();
          this.mApp.getMicroApplicationContext().startApp(null, str2, localBundle1);
          return true;
        }
        catch (AppLoadException localAppLoadException)
        {
          localAppLoadException.printStackTrace();
          return true;
        }
    }
    while (!str1.equals("broadcast"));
    new StringBuilder("to send broadcast : ").append(str3).toString();
    Intent localIntent = new Intent(str3);
    if (str3.startsWith("com.alipay"))
    {
      LocalBroadcastManager.getInstance(AlipayApplication.getInstance().getMicroApplicationContext().getApplicationContext()).sendBroadcast(localIntent);
      return true;
    }
    sendBroadcast(localIntent);
    return true;
    paramWebView.loadUrl(paramString);
    this.e.d(paramString);
    return true;
  }

  private static String b(String paramString)
  {
    String str1;
    if (paramString == null)
      str1 = "";
    while (true)
    {
      return str1;
      try
      {
        str1 = Uri.parse(paramString).getPath();
        int i = str1.lastIndexOf("/");
        if (i != -1)
        {
          String str2 = str1.substring(i + 1);
          return str2;
        }
      }
      catch (Exception localException)
      {
      }
    }
    return "";
  }

  @AfterViews
  protected final void a()
  {
    this.b.addView(this.c);
    this.c.setVerticalScrollbarOverlay(true);
    if (getIntent().getExtras().getBoolean("ShowCloseButton", true))
      this.a.setGenericButtonListener(new SecurityWebviewActivity.2(this));
    while (true)
    {
      WebSettings localWebSettings1 = this.c.getSettings();
      localWebSettings1.setSupportMultipleWindows(false);
      localWebSettings1.setJavaScriptEnabled(true);
      localWebSettings1.setSavePassword(false);
      localWebSettings1.setJavaScriptCanOpenWindowsAutomatically(false);
      localWebSettings1.setDomStorageEnabled(true);
      localWebSettings1.setAppCachePath(getApplicationContext().getDir("cache", 0).getPath());
      localWebSettings1.setAllowFileAccess(true);
      localWebSettings1.setAppCacheEnabled(true);
      localWebSettings1.setCacheMode(-1);
      localWebSettings1.setBuiltInZoomControls(false);
      if (Build.VERSION.SDK_INT >= 7);
      try
      {
        Class localClass = this.c.getSettings().getClass();
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = Boolean.TYPE;
        Method localMethod = localClass.getMethod("setDomStorageEnabled", arrayOfClass);
        if (localMethod != null)
        {
          WebSettings localWebSettings2 = this.c.getSettings();
          Object[] arrayOfObject = new Object[1];
          arrayOfObject[0] = Boolean.valueOf(true);
          localMethod.invoke(localWebSettings2, arrayOfObject);
        }
        label210: this.c.setDownloadListener(new SecurityWebviewActivity.5(this));
        this.c.setWebChromeClient(new SecurityWebviewActivity.3(this));
        this.c.setWebViewClient(new SecurityWebviewActivity.4(this));
        String str = this.f;
        if (!StringUtils.isBlank(str))
          this.c.loadUrl(str);
        return;
        this.a.setGenericButtonVisiable(false);
      }
      catch (Exception localException)
      {
        break label210;
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    showProgressDialog("");
    this.f = getIntent().getExtras().getString("URL");
    this.g = getIntent().getExtras().getString("securityId");
    this.e = new WebUrlHelper();
    this.c = new SecurityWebviewActivity.1(this, this);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.bottomMargin = ((int)ExtViewUtil.convertDpToPixel(-1.0F, this));
    this.c.setLayoutParams(localLayoutParams);
  }

  class WebUrlHelper
  {
    private String b;

    public WebUrlHelper()
    {
    }

    public static boolean b(String paramString)
    {
      Uri localUri = Uri.parse(paramString);
      return (!StringUtils.isEmpty(localUri.getScheme())) && (StringUtils.equalsIgnoreCase(localUri.getScheme(), "alipays"));
    }

    public static boolean c(String paramString)
    {
      Uri localUri = Uri.parse(paramString);
      return (localUri.getAuthority() + localUri.getPath()).equals("www.alipay.com/webviewbridge");
    }

    public static boolean e(String paramString)
    {
      return paramString.equals("https://www.alipay.com/webviewbridge?action=quit");
    }

    public final boolean a(String paramString)
    {
      Uri localUri = Uri.parse(paramString);
      SecurityWebviewActivity.a(SecurityWebviewActivity.this);
      localUri.getScheme();
      return (!TextUtils.isEmpty(localUri.getScheme())) && (!StringUtils.equalsIgnoreCase(localUri.getScheme(), "http")) && (!StringUtils.equalsIgnoreCase(localUri.getScheme(), "https"));
    }

    public final void d(String paramString)
    {
      this.b = paramString;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityWebviewActivity
 * JD-Core Version:    0.6.2
 */