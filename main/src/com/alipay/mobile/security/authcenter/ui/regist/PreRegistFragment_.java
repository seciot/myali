package com.alipay.mobile.security.authcenter.ui.regist;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APCheckboxWithLinkText;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.app.MicroApplication;

public final class PreRegistFragment_ extends PreRegistFragment
{
  private View g;
  private Handler h = new Handler();

  private View a(int paramInt)
  {
    if (this.g == null)
      return null;
    return this.g.findViewById(paramInt);
  }

  public final void a(MicroApplication paramMicroApplication, String paramString)
  {
    this.h.post(new b(this, paramMicroApplication, paramString));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.g = super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
    if (this.g == null)
      this.g = paramLayoutInflater.inflate(R.layout.af, paramViewGroup, false);
    return this.g;
  }

  public final void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.f = ((APButton)getBundle(R.id.ba));
    this.d = ((APTextView)getBundle(R.id.dg));
    this.e = ((APCheckboxWithLinkText)getBundle(R.id.cU));
    c();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.regist.PreRegistFragment_
 * JD-Core Version:    0.6.2
 */