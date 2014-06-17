package com.alipay.mobile.security.authcenter.service;

import android.os.Bundle;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

public final class d
{
  private Bundle a;
  private UserInfo b;
  private boolean c = false;
  private boolean d = false;
  private boolean e = false;
  private boolean f = false;
  private Boolean g;
  private Boolean h;
  private Boolean i;
  private Boolean j = Boolean.valueOf(false);

  public final Bundle a()
  {
    return this.a;
  }

  public final void a(Bundle paramBundle)
  {
    this.a = paramBundle;
  }

  public final void a(UserInfo paramUserInfo)
  {
    this.b = paramUserInfo;
  }

  public final void a(Boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public final UserInfo b()
  {
    return this.b;
  }

  public final void c()
  {
    this.c = true;
  }

  public final boolean d()
  {
    return this.d;
  }

  public final void e()
  {
    this.d = true;
  }

  public final boolean f()
  {
    return this.f;
  }

  public final void g()
  {
    this.f = true;
  }

  public final boolean h()
  {
    return this.e;
  }

  public final void i()
  {
    this.e = true;
  }

  public final String toString()
  {
    return "LoginContext [params=" + this.a + ", userInfo=" + this.b + ", skipSelectAccountApp=" + this.c + ", skipGestureApp=" + this.d + ", skipCheckIsLogin=" + this.e + ", skipAutoLogin=" + this.f + ", showActivity=" + this.g + ", isLoginSucess=" + this.h + ", isSettingGesture=" + this.i + ", accountType=" + this.j + "]";
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.service.d
 * JD-Core Version:    0.6.2
 */