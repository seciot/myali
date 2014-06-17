package com.alipay.mobile.browser;

import android.annotation.SuppressLint;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseActivity;

public class HtmlActivity extends BaseActivity
{
  protected static final String ALIPAY_ACTION_FUNCTION = "function";
  protected static final String ALIPAY_ACTION_FUNCTIONNAME = "functionName";
  protected static final String ALIPAY_CMD_EXITPAGE = "exitWapPage";
  protected static final String ALIPAY_CMD_GOTO = "goto";
  protected static final String ALIPAY_CMD_GOTO_APPID = "AppsId";
  protected static final String ALIPAY_CMD_LOGIN = "reLogin";
  protected static final String ALIPAY_CMD_LOGIN_TO_URL = "wapurl";
  protected static final String ALIPAY_CMD_STARTAPP = "startapp";
  protected static final String ALIPAY_HOST = "platformapi";
  protected static final String ALIPAY_SCHEME = "alipay";
  protected static final String TAG = "wap_station";
  public static String TITLE = "title";
  public static String URL = "url";
  protected ProgressBar mProgressBar;
  protected APTitleBar mTitleBar;
  protected WebView webView;

  protected void closeWebView()
  {
    runOnUiThread(new HtmlActivity.4(this));
  }

  protected void doLogin(Uri paramUri, WebView paramWebView)
  {
    new HtmlActivity.3(this, paramUri, paramWebView).start();
  }

  protected String getAppId(Uri paramUri)
  {
    String str = paramUri.getQueryParameter("appid");
    if ((str != null) && (!"".equals(str)));
    do
    {
      return str;
      str = paramUri.getQueryParameter("appId");
    }
    while (!TextUtils.isEmpty(str));
    return paramUri.getQueryParameter("saId");
  }

  protected String getParam(Uri paramUri, String paramString1, String paramString2)
  {
    String str = paramUri.getQueryParameter(paramString1);
    if ((str == null) || (str.length() == 0))
      return paramString2;
    return str;
  }

  protected void gotoApp(Uri paramUri)
  {
    try
    {
      AlipayApplication.getInstance().getMicroApplicationContext().startApp("10000113", getParam(paramUri, "AppsId", null), null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.getLocalizedMessage();
      return;
    }
    finally
    {
      closeWebView();
    }
  }

  @SuppressLint({"SetJavaScriptEnabled"})
  protected void initWebView()
  {
    this.webView.setVerticalScrollBarEnabled(false);
    WebSettings localWebSettings = this.webView.getSettings();
    localWebSettings.setSupportZoom(false);
    localWebSettings.setDefaultTextEncodingName("utf-8");
    localWebSettings.setJavaScriptEnabled(true);
    registerShouldOverrideUrlLoading();
    setWebChromeClient();
  }

  protected void injectionAllViewBean()
  {
    this.mTitleBar = ((APTitleBar)findViewById(R.id.title_bar));
    this.mTitleBar.setVisibility(0);
    this.mProgressBar = ((ProgressBar)findViewById(R.id.progress_bar));
    this.webView = ((WebView)findViewById(R.id.htmlView));
  }

  protected boolean isEmpty(String paramString)
  {
    return (paramString == null) || ("".equals(paramString));
  }

  protected void loadUrl()
  {
    this.webView.loadUrl(getIntent().getStringExtra(URL));
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.htmlwapactivity);
    injectionAllViewBean();
    initWebView();
    String str = getIntent().getStringExtra(TITLE);
    if (!isEmpty(str))
      setTitles(str);
    loadUrl();
  }

  protected String preprocessUrl(String paramString)
  {
    if (paramString != null)
    {
      int i = paramString.indexOf("alipay://");
      if (i != -1)
        paramString = paramString.substring(i);
    }
    return paramString;
  }

  protected boolean processCustomLogic(WebView paramWebView, String paramString)
  {
    Uri localUri = Uri.parse(preprocessUrl(paramString));
    if ((localUri != null) && (localUri.getScheme().equals("alipay")) && (localUri.getHost().equals("platformapi")))
    {
      String str1 = localUri.getPath().substring(1);
      if (str1.equalsIgnoreCase("function"))
      {
        str2 = getParam(localUri, "functionName", null);
        if (str2.equals("reLogin"))
          doLogin(localUri, paramWebView);
      }
      while (!"startapp".equalsIgnoreCase(str1))
      {
        String str2;
        do
        {
          return true;
          if (str2.equals("goto"))
          {
            gotoApp(localUri);
            return true;
          }
        }
        while (!str2.equals("exitWapPage"));
        closeWebView();
        return true;
      }
      startApp(localUri);
      return true;
    }
    if ((localUri != null) && (!localUri.getScheme().equals("http")) && (!localUri.getScheme().equals("https")) && (!localUri.getScheme().equals("file")))
      try
      {
        Intent localIntent = new Intent("android.intent.action.VIEW", localUri);
        this.mMicroApplicationContext.startActivity(this.mApp, localIntent);
        closeWebView();
        return true;
      }
      catch (Exception localException)
      {
      }
    return false;
  }

  protected void registerShouldOverrideUrlLoading()
  {
    this.webView.setWebViewClient(new HtmlActivity.2(this));
  }

  protected void setTitles(String paramString)
  {
    this.mTitleBar.setTitleText(paramString);
  }

  protected void setWebChromeClient()
  {
    this.webView.setWebChromeClient(new HtmlActivity.1(this));
  }

  protected void startApp(Uri paramUri)
  {
    String str = getAppId(paramUri);
    try
    {
      AlipayApplication.getInstance().getMicroApplicationContext().startApp("10000113", str, null);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.getLocalizedMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.browser.HtmlActivity
 * JD-Core Version:    0.6.2
 */