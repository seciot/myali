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
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobilesecurity.core.model.account.certify.CardInfo;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class UploadIdImgFragment_ extends UploadIdImgFragment
{
  private View j;

  private View a(int paramInt)
  {
    if (this.j == null)
      return null;
    return this.j.findViewById(paramInt);
  }

  public final void a(a parama, CardInfo paramCardInfo)
  {
    BackgroundExecutor.execute(new UploadIdImgFragment_.2(this, parama, paramCardInfo));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new UploadIdImgFragment_.3(this, paramString));
  }

  public final void b(a parama)
  {
    BackgroundExecutor.execute(new UploadIdImgFragment_.4(this, parama));
  }

  public final void d()
  {
    BackgroundExecutor.execute(new UploadIdImgFragment_.1(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.j = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.j == null)
      this.j = paramLayoutInflater.inflate(R.layout.B, paramViewGroup, false);
    return this.j;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.g = ((APImageView)a(R.id.bt));
    this.e = ((APTextView)a(R.id.ap));
    this.h = ((APButton)a(R.id.aH));
    this.f = ((APImageView)a(R.id.bs));
    this.d = ((APRelativeLayout)a(R.id.ao));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.UploadIdImgFragment_
 * JD-Core Version:    0.6.2
 */