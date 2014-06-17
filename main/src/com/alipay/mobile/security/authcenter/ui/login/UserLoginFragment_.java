package com.alipay.mobile.security.authcenter.ui.login;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.misc.CircularImageView;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckCodeGetter;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APScrollView;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.service.ext.security.bean.LoginInputParam;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.ext.security.bean.UserLoginResultBiz;
import com.alipay.mobile.security.authcenter.ui.KeyboardHiddenAwareLayout;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class UserLoginFragment_ extends UserLoginFragment
{
  private View n;
  private Handler t = new Handler();

  private View a(int paramInt)
  {
    if (this.n == null)
      return null;
    return this.n.findViewById(paramInt);
  }

  public final void a(LoginInputParam paramLoginInputParam)
  {
    BackgroundExecutor.execute(new an(this, paramLoginInputParam));
  }

  public final void a(String paramString1, String paramString2, UserLoginResultBiz paramUserLoginResultBiz, UserInfo paramUserInfo)
  {
    this.t.post(new al(this, paramString1, paramString2, paramUserLoginResultBiz, paramUserInfo));
  }

  public final void a(byte[] paramArrayOfByte)
  {
    this.t.post(new am(this, paramArrayOfByte));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.n = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.n == null)
      this.n = paramLayoutInflater.inflate(R.layout.bg, paramViewGroup, false);
    return this.n;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.l = ((KeyboardHiddenAwareLayout)a(R.id.bQ));
    this.m = ((APScrollView)a(R.id.ce));
    this.d = ((CircularImageView)a(R.id.gn));
    this.j = ((APButton)a(R.id.Y));
    this.e = ((APSixNumberPwdInputBox)a(R.id.cj));
    this.g = ((APButton)a(R.id.fQ));
    this.h = ((APTextView)a(R.id.gk));
    this.k = ((APButton)a(R.id.bi));
    this.i = ((APButton)a(R.id.X));
    this.f = ((APInputBox)a(R.id.bl));
    this.r = ((APCheckCodeGetter)a(R.id.aB));
    f();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.UserLoginFragment_
 * JD-Core Version:    0.6.2
 */