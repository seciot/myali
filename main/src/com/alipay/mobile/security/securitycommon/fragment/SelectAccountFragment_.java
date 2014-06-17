package com.alipay.mobile.security.securitycommon.fragment;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APView;

public final class SelectAccountFragment_ extends SelectAccountFragment
{
  private View i;

  private View a(int paramInt)
  {
    if (this.i == null)
      return null;
    return this.i.findViewById(paramInt);
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.i = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.i == null)
      this.i = paramLayoutInflater.inflate(R.layout.aV, paramViewGroup, false);
    return this.i;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.b = ((APTableView)a(R.id.gi));
    this.a = ((APListView)a(R.id.cY));
    this.d = ((APTextView)a(R.id.cL));
    this.c = ((APLinearLayout)a(R.id.df));
    this.e = ((APView)a(R.id.fB));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.SelectAccountFragment_
 * JD-Core Version:    0.6.2
 */