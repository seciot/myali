package com.alipay.mobile.browser;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ProgressBar;
import android.widget.Toast;
import com.alipay.mobile.base.commonbiz.R.drawable;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.base.commonbiz.R.string;
import com.alipay.mobile.browser.handler.CMSHtmlActivityHandler;
import com.alipay.mobile.browser.handler.HtmlActivityHandler;
import com.alipay.mobile.browser.handler.HtmlActivityHandlerRegister;
import com.alipay.mobile.browser.vo.HtmlActivityRequest;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;

@EActivity
public class HtmlActivityV2 extends BaseActivity
{
  public static final String PARAM_HANDLER_REGISTER_KEY = "HandlerRegisterKey";
  public static final String PARAM_REQUEST = "HARequest";
  private HtmlActivityRequest a;
  private HtmlActivityHandler b;
  private boolean c = false;
  protected String loadUrl;
  protected ProgressBar mProgressBar;
  protected WebView mWebView;
  protected APTitleBar titleBar;

  private void a()
  {
    try
    {
      String str = getIntent().getStringExtra("HandlerRegisterKey");
      if (StringUtils.isNotBlank(str))
        this.b = HtmlActivityHandlerRegister.getInstance().unRegisterHandler(str);
      if (this.b == null)
        switch (this.a.getHandlerType())
        {
        default:
        case 1:
        }
      for (this.b = new HtmlActivityHandler(); ; this.b = new CMSHtmlActivityHandler())
        return;
    }
    finally
    {
    }
  }

  private void a(String paramString)
  {
    super.alert("", paramString, getString(R.string.back), new HtmlActivityV2.3(this), null, null);
  }

  @Background
  public void doLoginAndLoadUrl()
  {
    while (true)
    {
      try
      {
        UserInfo localUserInfo1 = this.b.getUserInfo();
        if (!this.b.doLogin())
        {
          finishActivity();
          return;
        }
        UserInfo localUserInfo2 = this.b.getUserInfo();
        if ((localUserInfo1 != null) && (!StringUtils.isEmpty(localUserInfo1.getUserId())) && (!StringUtils.equals(localUserInfo2.getUserId(), localUserInfo1.getUserId())))
        {
          i = 1;
          if (i == 0)
            break;
          this.mMicroApplicationContext.startApp("09999999", "20000001", null);
          return;
        }
      }
      catch (Exception localException)
      {
        finishActivity();
        return;
      }
      int i = 0;
    }
    loadUrl();
  }

  @UiThread
  public void finishActivity()
  {
    dismissProgressDialog();
    this.c = true;
    setResult(-1, new Intent());
    finish();
  }

  public void forceLoginAndLoadUrl()
  {
    SimpleToast.makeToast(this, R.drawable.simple_toast_false, "登录中...", 0).show();
    doLoginAndLoadUrl();
  }

  public APTitleBar getTitleBar()
  {
    return this.titleBar;
  }

  public ProgressBar getmProgressBar()
  {
    return this.mProgressBar;
  }

  public WebView getmWebView()
  {
    return this.mWebView;
  }

  protected void init()
  {
    this.a = ((HtmlActivityRequest)getIntent().getSerializableExtra("HARequest"));
    String str2;
    if (this.a == null)
      str2 = getString(R.string.missing_required_params);
    while (StringUtils.isNotBlank(str2))
    {
      a(str2);
      return;
      if (StringUtils.isEmpty(this.a.getRequestUrl()))
      {
        str2 = getString(R.string.missing_request_url);
      }
      else
      {
        String str1 = this.a.getTitle();
        if (StringUtils.isNotBlank(str1))
          this.titleBar.setTitleText(str1);
        str2 = "";
      }
    }
    a();
    this.b.setRequest(this.a);
    this.b.setHtmlActivityV2(this);
    this.b.setmApp(this.mApp);
    if (!this.b.init());
    for (String str3 = getString(R.string.app_init_fail); StringUtils.isNotBlank(str3); str3 = "")
    {
      a(str3);
      return;
    }
    this.mWebView.getSettings().setDefaultTextEncodingName("utf-8");
    this.mWebView.getSettings().setJavaScriptEnabled(true);
    this.mWebView.setWebViewClient(new HtmlActivityV2.2(this));
    this.mWebView.setWebChromeClient(new HtmlActivityV2.1(this));
  }

  @UiThread
  public void loadUrl()
  {
    String str1 = this.b.getRequestUrl();
    String str2 = this.b.getRequestCookies();
    Uri localUri;
    if (!StringUtils.isEmpty(str2))
    {
      localUri = Uri.parse(str1);
      if (!StringUtils.isNotBlank(this.b.getCookieDomain()))
        break label104;
    }
    label104: for (String str3 = this.b.getCookieDomain(); ; str3 = localUri.getHost())
    {
      CookieSyncManager.createInstance(this);
      CookieManager localCookieManager = CookieManager.getInstance();
      localCookieManager.setAcceptCookie(true);
      localCookieManager.setCookie(str3, str2);
      CookieSyncManager.getInstance().sync();
      if (StringUtils.isEmpty(this.loadUrl))
        this.loadUrl = str1;
      this.mWebView.loadUrl(str1);
      return;
    }
  }

  protected boolean needLoginAndLoadUrl()
  {
    return true;
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.htmlactivity_v2);
    this.titleBar = ((APTitleBar)findViewById(R.id.htmlActivityV2_title));
    this.mWebView = ((WebView)findViewById(R.id.AlipayPushUrlWebView));
    this.mProgressBar = ((ProgressBar)findViewById(R.id.ProgressBar));
    init();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      finishActivity();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onResume()
  {
    super.onResume();
    if (needLoginAndLoadUrl())
    {
      if ((this.b.isNeedLogin()) && (!this.b.isLogin()))
        forceLoginAndLoadUrl();
    }
    else
      return;
    loadUrl();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.browser.HtmlActivityV2
 * JD-Core Version:    0.6.2
 */