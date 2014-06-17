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
import com.alipay.mobile.framework.service.ext.security.bean.LoginInputParam;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.ext.security.bean.UserLoginResultBiz;
import com.alipay.mobile.security.authcenter.ui.SmartInputTextView;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class TaobaoUserLoginFragment_ extends TaobaoUserLoginFragment
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
    BackgroundExecutor.execute(new af(this, paramLoginInputParam));
  }

  public final void a(String paramString1, String paramString2, UserLoginResultBiz paramUserLoginResultBiz, UserInfo paramUserInfo)
  {
    this.t.post(new ad(this, paramString1, paramString2, paramUserLoginResultBiz, paramUserInfo));
  }

  public final void a(byte[] paramArrayOfByte)
  {
    this.t.post(new ac(this, paramArrayOfByte));
  }

  public final void g()
  {
    BackgroundExecutor.execute(new ag(this));
  }

  public final void h()
  {
    this.t.post(new ae(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.n = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.n == null)
      this.n = paramLayoutInflater.inflate(R.layout.bf, paramViewGroup, false);
    return this.n;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.r = ((APCheckCodeGetter)a(R.id.aB));
    this.e = ((APImageButton)a(R.id.l));
    this.h = ((APButton)a(R.id.Z));
    this.d = ((SmartInputTextView)a(R.id.bO));
    this.g = ((APInputBox)a(R.id.v));
    this.f = ((APImageView)a(R.id.bN));
    f();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.TaobaoUserLoginFragment_
 * JD-Core Version:    0.6.2
 */