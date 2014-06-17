package com.alipay.mobile.about.ui;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.commonui.widget.APWebView;
import com.alipay.mobile.framework.app.ui.BaseActivity;

@SuppressLint({"SetJavaScriptEnabled"})
public class AboutTheVersionActivity extends BaseActivity
{
  APWebView a;
  private String b = "http://d.alipay.com/version/android.htm?version=";

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.V);
    this.a = ((APWebView)findViewById(R.id.j));
    String str1 = AppInfo.getInstance().getmProductVersion();
    String str2 = str1.substring(0, str1.indexOf(".", 2));
    this.b += str2;
    a locala = new a((byte)0);
    locala.shouldOverrideUrlLoading(this.a, this.b);
    this.a.setWebViewClient(locala);
  }

  private final class a extends WebViewClient
  {
    private a()
    {
    }

    public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
    {
      paramWebView.loadUrl(paramString);
      return true;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.AboutTheVersionActivity
 * JD-Core Version:    0.6.2
 */