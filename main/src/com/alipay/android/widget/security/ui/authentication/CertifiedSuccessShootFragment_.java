package com.alipay.android.widget.security.ui.authentication;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.android.widget.security.service.a;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobilesecurity.core.model.account.certify.CardInfo;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class CertifiedSuccessShootFragment_ extends CertifiedSuccessShootFragment
{
  private View i;

  private View a(int paramInt)
  {
    if (this.i == null)
      return null;
    return this.i.findViewById(paramInt);
  }

  public final void a(a parama, CardInfo paramCardInfo)
  {
    BackgroundExecutor.execute(new CertifiedSuccessShootFragment_.2(this, parama, paramCardInfo));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new CertifiedSuccessShootFragment_.1(this, paramString));
  }

  public final void b(a parama)
  {
    BackgroundExecutor.execute(new CertifiedSuccessShootFragment_.3(this, parama));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.i = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.i == null)
      this.i = paramLayoutInflater.inflate(R.layout.y, paramViewGroup, false);
    return this.i;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.g = ((APLinearLayout)a(R.id.fN));
    this.e = ((APButton)a(R.id.ar));
    this.d = ((APTitleBar)a(R.id.ge));
    this.h = ((APButton)a(R.id.am));
    this.f = ((APLinearLayout)a(R.id.fO));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.CertifiedSuccessShootFragment_
 * JD-Core Version:    0.6.2
 */