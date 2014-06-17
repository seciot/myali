package com.alipay.android.widget.security.ui.authentication;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.android.widget.security.service.a;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobilesecurity.core.model.account.certify.CardInfo;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class CertifiedFailCardFragment_ extends CertifiedFailCardFragment
{
  private View n;

  private View a(int paramInt)
  {
    if (this.n == null)
      return null;
    return this.n.findViewById(paramInt);
  }

  public final void a(a parama, CardInfo paramCardInfo)
  {
    BackgroundExecutor.execute(new CertifiedFailCardFragment_.3(this, parama, paramCardInfo));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new CertifiedFailCardFragment_.1(this, paramString));
  }

  public final void b(a parama)
  {
    BackgroundExecutor.execute(new CertifiedFailCardFragment_.2(this, parama));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.n = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.n == null)
      this.n = paramLayoutInflater.inflate(R.layout.t, paramViewGroup, false);
    return this.n;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.e = ((APImageView)a(R.id.eu));
    this.i = ((APLinearLayout)a(R.id.gj));
    this.k = ((APButton)a(R.id.az));
    this.g = ((APTextView)a(R.id.eA));
    this.j = ((APButton)a(R.id.cC));
    this.f = ((APTextView)a(R.id.ez));
    this.d = ((APTitleBar)a(R.id.ge));
    this.h = ((APButton)a(R.id.aN));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.CertifiedFailCardFragment_
 * JD-Core Version:    0.6.2
 */