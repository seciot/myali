package com.alipay.mobile.security.authcenter.ui.login;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeGetter;
import com.alipay.mobile.commonui.widget.APImageButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.service.ext.security.bean.LoginInputParam;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.ext.security.bean.UserLoginResultBiz;
import com.alipay.mobile.security.authcenter.ui.SmartInputTextView;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class AlipayUserLoginFragment_ extends AlipayUserLoginFragment
{
  private View t;
  private Handler u = new Handler();

  private View a(int paramInt)
  {
    if (this.t == null)
      return null;
    return this.t.findViewById(paramInt);
  }

  public final void a(LoginInputParam paramLoginInputParam)
  {
    BackgroundExecutor.execute(new i(this, paramLoginInputParam));
  }

  public final void a(String paramString1, String paramString2, UserLoginResultBiz paramUserLoginResultBiz, UserInfo paramUserInfo)
  {
    this.u.post(new e(this, paramString1, paramString2, paramUserLoginResultBiz, paramUserInfo));
  }

  public final void a(byte[] paramArrayOfByte)
  {
    this.u.post(new g(this, paramArrayOfByte));
  }

  public final void g()
  {
    BackgroundExecutor.execute(new h(this));
  }

  public final void h()
  {
    this.u.post(new f(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.t = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.t == null)
      this.t = paramLayoutInflater.inflate(R.layout.j, paramViewGroup, false);
    return this.t;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.n = ((APTextView)a(R.id.bi));
    this.d = ((SmartInputTextView)a(R.id.bO));
    this.f = ((APImageView)a(R.id.bN));
    this.e = ((APImageButton)a(R.id.l));
    this.r = ((APCheckCodeGetter)a(R.id.aB));
    this.h = ((APButton)a(R.id.Z));
    this.g = ((APInputBox)a(R.id.v));
    f();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.AlipayUserLoginFragment_
 * JD-Core Version:    0.6.2
 */