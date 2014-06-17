package com.alipay.mobile.security.securitycommon.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox;
import com.alipay.mobile.commonui.widget.APTextView;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SetSimplePwdFragment_ extends SetSimplePwdFragment
{
  private View d;
  private Handler e = new Handler();

  private View a(int paramInt)
  {
    if (this.d == null)
      return null;
    return this.d.findViewById(paramInt);
  }

  public final void a()
  {
    this.e.post(new SetSimplePwdFragment_.2(this));
  }

  public final void a(Object paramObject)
  {
    this.e.post(new SetSimplePwdFragment_.1(this, paramObject));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new SetSimplePwdFragment_.3(this, paramString));
  }

  public final void c()
  {
    BackgroundExecutor.execute(new SetSimplePwdFragment_.4(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.d = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.d == null)
      this.d = paramLayoutInflater.inflate(R.layout.aX, paramViewGroup, false);
    return this.d;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.b = ((APSixNumberPwdInputBox)a(R.id.fG));
    this.c = ((APButton)a(R.id.gq));
    this.a = ((APTextView)a(R.id.cX));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.SetSimplePwdFragment_
 * JD-Core Version:    0.6.2
 */