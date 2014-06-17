package com.androidquery.util;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Build.VERSION;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;

public class WebImage extends WebViewClient
{
  private static String g;
  private Object a;
  private WebView b;
  private String c;
  private boolean d;
  private boolean e;
  private int f;

  public WebImage(WebView paramWebView, String paramString, Object paramObject, boolean paramBoolean1, boolean paramBoolean2, int paramInt)
  {
    this.b = paramWebView;
    this.c = paramString;
    this.a = paramObject;
    this.d = paramBoolean1;
    this.e = paramBoolean2;
    this.f = paramInt;
  }

  private void delaySetup()
  {
    this.b.setPictureListener(new WebImage.1(this));
    this.b.loadData("<html></html>", "text/html", "utf-8");
    this.b.setBackgroundColor(this.f);
  }

  private static void disableZoomControl(WebView paramWebView)
  {
    if (Build.VERSION.SDK_INT < 11)
      return;
    WebSettings localWebSettings = paramWebView.getSettings();
    Class[] arrayOfClass = new Class[1];
    arrayOfClass[0] = Boolean.TYPE;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(false);
    AQUtility.invokeHandler(localWebSettings, "setDisplayZoomControls", false, false, arrayOfClass, arrayOfObject);
  }

  private void done(WebView paramWebView)
  {
    if (this.a != null)
    {
      paramWebView.setVisibility(0);
      Common.showProgress(this.a, this.c, false);
    }
    paramWebView.setWebViewClient(null);
  }

  private static void fixWebviewTip(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("WebViewSettings", 0);
    if (localSharedPreferences.getInt("double_tap_toast_count", 1) > 0)
      localSharedPreferences.edit().putInt("double_tap_toast_count", 0).commit();
  }

  private static String getSource(Context paramContext)
  {
    if (g == null);
    try
    {
      g = new String(AQUtility.toBytes(paramContext.getClassLoader().getResourceAsStream("com/androidquery/util/web_image.html")));
      return g;
    }
    catch (Exception localException)
    {
      while (true)
        AQUtility.debug(localException);
    }
  }

  private void setup()
  {
    String str = getSource(this.b.getContext()).replace("@src", this.c).replace("@color", Integer.toHexString(this.f));
    this.b.setWebViewClient(this);
    this.b.loadDataWithBaseURL(null, str, "text/html", "utf-8", null);
    this.b.setBackgroundColor(this.f);
  }

  public void load()
  {
    if (this.c.equals(this.b.getTag(1090453505)))
      return;
    this.b.setTag(1090453505, this.c);
    if (Build.VERSION.SDK_INT <= 10)
      this.b.setDrawingCacheEnabled(true);
    fixWebviewTip(this.b.getContext());
    WebSettings localWebSettings = this.b.getSettings();
    localWebSettings.setSupportZoom(this.d);
    localWebSettings.setBuiltInZoomControls(this.d);
    if (!this.e)
      disableZoomControl(this.b);
    localWebSettings.setJavaScriptEnabled(true);
    this.b.setBackgroundColor(this.f);
    if (this.a != null)
      Common.showProgress(this.a, this.c, true);
    if (this.b.getWidth() > 0)
    {
      setup();
      return;
    }
    delaySetup();
  }

  public void onPageFinished(WebView paramWebView, String paramString)
  {
    done(paramWebView);
  }

  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    done(paramWebView);
  }

  public void onScaleChanged(WebView paramWebView, float paramFloat1, float paramFloat2)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.util.WebImage
 * JD-Core Version:    0.6.2
 */