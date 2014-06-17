package com.alipay.mobile.security.accountmanager.ui;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.webkit.WebSettings;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APProgressBar;
import com.alipay.mobile.commonui.widget.APWebView;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;

@EActivity(resName="security_wap_forgotpaypwd")
public class WapForgotPayPwdActivity extends BaseActivity
{

  @ViewById(resName="AlipayPushUrlWebView")
  protected APWebView a;

  @ViewById(resName="ProgressBar")
  protected APProgressBar b;
  private boolean c = false;
  private String d;
  private AuthService e;

  @AfterViews
  protected final void a()
  {
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      this.d = localIntent.getStringExtra("fromWhich");
      new StringBuilder("fromWhich: ").append(this.d).toString();
    }
    try
    {
      this.a.getSettings().setDefaultTextEncodingName("utf-8");
      this.a.getSettings().setJavaScriptEnabled(true);
      this.a.setWebViewClient(new ds(this));
      this.a.setWebChromeClient(new dr(this));
      label92: this.e = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
      if (!this.e.isLogin())
      {
        d();
        return;
      }
      b();
      return;
    }
    catch (Exception localException)
    {
      break label92;
    }
  }

  public final boolean a(String paramString)
  {
    if (this.c)
      return true;
    int i;
    if (paramString != null)
    {
      i = paramString.indexOf("alipays://");
      if (i == -1);
    }
    for (paramString = paramString.substring(i); ; paramString = "")
    {
      Uri localUri = Uri.parse(paramString);
      if ((paramString == null) || (localUri.getScheme() == null) || (!localUri.getScheme().equals("alipays")))
        break label131;
      new StringBuilder("url=[").append(paramString).append("]").toString();
      if (!paramString.endsWith("alipays://close"))
        break;
      if (!StringUtils.equals("msp", this.d))
        break label125;
      this.mApp.getMicroApplicationContext().exit();
      return true;
    }
    label125: finish();
    return true;
    label131: return false;
  }

  @UiThread
  protected void b()
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder("https://wapcashier.alipay.com/home/resetPayPwd.htm?src=alipayclient&awid=");
      if (!this.e.isLogin());
      String str2;
      for (Object localObject = ""; ; localObject = str2)
      {
        String str1 = (String)localObject;
        this.a.loadUrl(str1);
        return;
        str2 = this.e.getUserInfo().getLoginToken();
      }
    }
    catch (Exception localException)
    {
    }
  }

  @UiThread
  public void c()
  {
    dismissProgressDialog();
    this.c = true;
    setResult(-1, new Intent());
    finish();
  }

  @Background
  protected void d()
  {
    if (this.e.rpcAuth())
    {
      UserInfo localUserInfo = this.e.getUserInfo();
      StringBuilder localStringBuilder = new StringBuilder();
      if (localUserInfo != null)
      {
        localStringBuilder.append("sessionId=[" + localUserInfo.getSessionId() + "]");
        localStringBuilder.append("extern_token=[" + localUserInfo.getExtern_token() + "]");
      }
      new StringBuilder("Login Finish. userInfo=[").append(localStringBuilder.toString()).append("]").toString();
      b();
      return;
    }
    c();
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
      c();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onResume()
  {
    super.onResume();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.WapForgotPayPwdActivity
 * JD-Core Version:    0.6.2
 */