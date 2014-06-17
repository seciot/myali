package com.alipay.mobile.security.securitycommon.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class CheckUserIdFragment_ extends CheckUserIdFragment
{
  private View d;
  private Handler e = new Handler();

  private View a(int paramInt)
  {
    if (this.d == null)
      return null;
    return this.d.findViewById(paramInt);
  }

  public final void a(Object paramObject)
  {
    this.e.post(new CheckUserIdFragment_.1(this, paramObject));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new CheckUserIdFragment_.2(this, paramString));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.d = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.d == null)
      this.d = paramLayoutInflater.inflate(R.layout.az, paramViewGroup, false);
    return this.d;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.c = ((APButton)a(R.id.gp));
    this.b = ((APInputBox)a(R.id.go));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.CheckUserIdFragment_
 * JD-Core Version:    0.6.2
 */