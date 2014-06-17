package com.alipay.android.widget.security.ui.authentication;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.android.widget.security.service.a;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobilesecurity.core.model.account.certify.CardInfo;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class RealNameFragment_ extends RealNameFragment
{
  private View k;

  private View a(int paramInt)
  {
    if (this.k == null)
      return null;
    return this.k.findViewById(paramInt);
  }

  public final void a(a parama, CardInfo paramCardInfo)
  {
    BackgroundExecutor.execute(new RealNameFragment_.3(this, parama, paramCardInfo));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new RealNameFragment_.2(this, paramString));
  }

  public final void b(a parama)
  {
    BackgroundExecutor.execute(new RealNameFragment_.1(this, parama));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.k = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.k == null)
      this.k = paramLayoutInflater.inflate(R.layout.x, paramViewGroup, false);
    return this.k;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.e = ((APCheckboxWithLinkText)a(R.id.t));
    this.d = ((APTitleBar)a(R.id.ge));
    this.g = ((APTableView)a(R.id.aq));
    this.h = ((APTableView)a(R.id.ag));
    this.f = ((APButton)a(R.id.L));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.RealNameFragment_
 * JD-Core Version:    0.6.2
 */