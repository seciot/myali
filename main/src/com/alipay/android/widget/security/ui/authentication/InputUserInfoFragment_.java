package com.alipay.android.widget.security.ui.authentication;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.android.widget.security.service.a;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobilesecurity.core.model.account.certify.CardInfo;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class InputUserInfoFragment_ extends InputUserInfoFragment
{
  private View g;

  private View a(int paramInt)
  {
    if (this.g == null)
      return null;
    return this.g.findViewById(paramInt);
  }

  public final void a(a parama, CardInfo paramCardInfo)
  {
    BackgroundExecutor.execute(new InputUserInfoFragment_.4(this, parama, paramCardInfo));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new InputUserInfoFragment_.3(this, paramString));
  }

  public final void a(String paramString1, String paramString2)
  {
    BackgroundExecutor.execute(new InputUserInfoFragment_.1(this, paramString1, paramString2));
  }

  public final void b(a parama)
  {
    BackgroundExecutor.execute(new InputUserInfoFragment_.2(this, parama));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.g = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.g == null)
      this.g = paramLayoutInflater.inflate(R.layout.w, paramViewGroup, false);
    return this.g;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.e = ((APInputBox)a(R.id.gl));
    this.d = ((APInputBox)a(R.id.gm));
    this.f = ((APButton)a(R.id.aL));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.InputUserInfoFragment_
 * JD-Core Version:    0.6.2
 */