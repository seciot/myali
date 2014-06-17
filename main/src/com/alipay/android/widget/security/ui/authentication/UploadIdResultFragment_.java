package com.alipay.android.widget.security.ui.authentication;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.android.widget.security.service.a;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobilesecurity.core.model.account.certify.CardInfo;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class UploadIdResultFragment_ extends UploadIdResultFragment
{
  private View e;

  public final void a(a parama, CardInfo paramCardInfo)
  {
    BackgroundExecutor.execute(new UploadIdResultFragment_.1(this, parama, paramCardInfo));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new UploadIdResultFragment_.2(this, paramString));
  }

  public final void b(a parama)
  {
    BackgroundExecutor.execute(new UploadIdResultFragment_.3(this, parama));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.e = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.e == null)
      this.e = paramLayoutInflater.inflate(R.layout.C, paramViewGroup, false);
    return this.e;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    int i = R.id.aI;
    if (this.e == null);
    for (View localView = null; ; localView = this.e.findViewById(i))
    {
      this.d = ((APButton)localView);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.UploadIdResultFragment_
 * JD-Core Version:    0.6.2
 */