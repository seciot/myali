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
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobilesecurity.core.model.account.certify.CardInfo;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class HasCertifiedFragment_ extends HasCertifiedFragment
{
  private View o;

  private View a(int paramInt)
  {
    if (this.o == null)
      return null;
    return this.o.findViewById(paramInt);
  }

  public final void a(a parama, CardInfo paramCardInfo)
  {
    BackgroundExecutor.execute(new HasCertifiedFragment_.1(this, parama, paramCardInfo));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new HasCertifiedFragment_.2(this, paramString));
  }

  public final void b(a parama)
  {
    BackgroundExecutor.execute(new HasCertifiedFragment_.3(this, parama));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.o = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.o == null)
      this.o = paramLayoutInflater.inflate(R.layout.u, paramViewGroup, false);
    return this.o;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.l = ((APTextView)a(R.id.gd));
    this.j = ((APTextView)a(R.id.au));
    this.k = ((APLinearLayout)a(R.id.bB));
    this.e = ((APButton)a(R.id.L));
    this.i = ((APTextView)a(R.id.at));
    this.h = ((APTableView)a(R.id.as));
    this.d = ((APTitleBar)a(R.id.ge));
    this.f = ((APTableView)a(R.id.aq));
    this.g = ((APTableView)a(R.id.ag));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.HasCertifiedFragment_
 * JD-Core Version:    0.6.2
 */