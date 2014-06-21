package com.alipay.android.phone.home.ui;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.android.phone.openplatform.R.id;
import com.alipay.android.phone.openplatform.R.layout;
import com.alipay.mobile.commonui.widget.APGridView;
import com.alipay.mobile.commonui.widget.APPullRefreshView;

public final class AppsCenterFragment_ extends AppsCenterFragment
{
  private View d;

  public static AppsCenterFragment_.FragmentBuilder_ builder()
  {
    return new AppsCenterFragment_.FragmentBuilder_((byte)0);
  }

  public final View findViewById(int paramInt)
  {
    if (this.d == null)
      return null;
    return this.d.findViewById(paramInt);
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.d = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.d == null)
      this.d = paramLayoutInflater.inflate(R.layout.ZLog, paramViewGroup, false);
    return this.d;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.c = ((APPullRefreshView)findViewById(R.id.s));
    this.a = ((APGridView)findViewById(R.id.ZLog));
    afterView();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.AppsCenterFragment_
 * JD-Core Version:    0.6.2
 */