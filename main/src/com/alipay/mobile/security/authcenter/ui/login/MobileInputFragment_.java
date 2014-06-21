package com.alipay.mobile.security.authcenter.ui.login;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobileapp.biz.rpc.smscode.vo.VerifySmsAndDeviceRes;
import com.alipay.mobileapp.biz.rpc.user.MobileUserResult;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class MobileInputFragment_ extends MobileInputFragment
{
  private View h;
  private Handler i = new Handler();

  private View a(int paramInt)
  {
    if (this.h == null)
      return null;
    return this.h.findViewById(paramInt);
  }

  public final void a(MobileUserResult paramMobileUserResult, String paramString)
  {
    this.i.post(new y(this, paramMobileUserResult, paramString));
  }

  public final void a(String paramString, VerifySmsAndDeviceRes paramVerifySmsAndDeviceRes)
  {
    this.i.post(new z(this, paramString, paramVerifySmsAndDeviceRes));
  }

  public final void b(String paramString)
  {
    BackgroundExecutor.execute(new ab(this, paramString));
  }

  public final void c(String paramString)
  {
    BackgroundExecutor.execute(new aa(this, paramString));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.h = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.h == null)
      this.h = paramLayoutInflater.inflate(R.layout.X, paramViewGroup, false);
    return this.h;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.d = ((APButton)getBundle(R.id.fQ));
    this.f = ((APButton)getBundle(R.id.cw));
    this.e = ((APButton)getBundle(R.id.dh));
    this.g = ((APInputBox)getBundle(R.id.cg));
    c();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.MobileInputFragment_
 * JD-Core Version:    0.6.2
 */