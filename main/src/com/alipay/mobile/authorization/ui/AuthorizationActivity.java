package com.alipay.mobile.authorization.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.authorization.app.AuthorizationApp;
import com.alipay.mobile.authorization.biz.AuthorizationBiz;
import com.alipay.mobile.authorization.biz.AuthorizationBizImpl;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.openplatform.service.ThirdPartyAuthorizeService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.openplatform.R.id;
import com.alipay.mobile.openplatform.R.layout;
import com.alipay.mobile.openplatform.R.string;
import com.alipay.mobile.ui.R.color;

public class AuthorizationActivity extends BaseActivity
  implements View.OnClickListener
{
  private APTextView a;
  private APButton b;
  private AuthorizationBiz c;
  private String d;
  private String e;
  private String f;
  private String g;
  private AuthService h;
  private boolean i = false;

  private String a(String paramString)
  {
    if ((this.mApp != null) && ((this.mApp instanceof AuthorizationApp)))
    {
      Bundle localBundle = ((AuthorizationApp)this.mApp).getStartParams();
      if ((localBundle != null) && (localBundle.getString(paramString) != null))
        return localBundle.getString(paramString);
    }
    return "";
  }

  private void a(boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    try
    {
      ((ThirdPartyAuthorizeService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(ThirdPartyAuthorizeService.class.getName())).notifyUnlockAuthorizationApp(paramBoolean1, paramBoolean2, paramString);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public void onClick(View paramView)
  {
    if (this.i)
    {
      localb = new b(this);
      arrayOfString = new String[1];
      arrayOfString[0] = this.f;
      localb.execute(arrayOfString);
    }
    while (!this.h.isLogin())
    {
      b localb;
      String[] arrayOfString;
      return;
    }
    String str = this.h.getUserInfo().getUserId();
    new b(this).execute(new String[] { str });
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.b);
    Intent localIntent = getIntent();
    this.d = localIntent.getStringExtra("appId");
    this.f = localIntent.getStringExtra("userId");
    this.e = localIntent.getStringExtra("protocol_url");
    this.g = localIntent.getStringExtra("authType");
    if (TextUtils.isEmpty(this.e))
      this.e = a("protocol_url");
    if (TextUtils.isEmpty(this.f))
      this.f = a("userId");
    if (TextUtils.isEmpty(this.d))
      this.d = a("appId");
    if (TextUtils.isEmpty(this.g))
      this.g = a("authType");
    this.i = localIntent.getBooleanExtra("fromDesktop", false);
    this.a = ((APTextView)findViewById(R.id.o));
    String str = getString(R.string.a);
    SpannableStringBuilder localSpannableStringBuilder = new SpannableStringBuilder(str);
    localSpannableStringBuilder.setSpan(new c(this, this.mApp.getMicroApplicationContext(), getResources().getColor(R.color.protocol_link_color)), 2, str.length(), 512);
    this.a.setText(localSpannableStringBuilder);
    this.a.setMovementMethod(LinkMovementMethod.getInstance());
    this.b = ((APButton)findViewById(R.id.j));
    this.c = new AuthorizationBizImpl();
    this.h = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    this.b.setOnClickListener(this);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      a(false, true, null);
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.authorization.ui.AuthorizationActivity
 * JD-Core Version:    0.6.2
 */