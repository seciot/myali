package com.alipay.mobile.onsitepay.payer.barcode;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.alipay.livetradeprod.core.model.rpc.GetDynamicIdRes;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.onsitepay.d;
import com.alipay.mobile.onsitepay.e;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import org.json.JSONObject;

public final class BarcodePayActivity_ extends BarcodePayActivity
{
  private Handler z = new Handler();

  private void p()
  {
    this.n = ((ProgressBar)findViewById(d.ar));
    this.p = ((APTextView)findViewById(d.aA));
    this.r = ((RelativeLayout)findViewById(d.j));
    this.k = ((APTitleBar)findViewById(d.aD));
    this.l = ((SizeEventImageView)findViewById(d.h));
    this.o = ((LinearLayout)findViewById(d.aB));
    this.q = ((LinearLayout)findViewById(d.s));
    this.m = ((SizeEventImageView)findViewById(d.at));
    m();
  }

  public final void a(GetDynamicIdRes paramGetDynamicIdRes)
  {
    this.z.post(new o(this, paramGetDynamicIdRes));
  }

  public final void a(String paramString)
  {
    this.z.post(new p(this, paramString));
  }

  public final void d()
  {
    BackgroundExecutor.execute(new t(this));
  }

  public final void d(JSONObject paramJSONObject, String paramString)
  {
    this.z.post(new s(this, paramJSONObject, paramString));
  }

  public final void j()
  {
    BackgroundExecutor.execute(new u(this));
  }

  public final void n()
  {
    this.z.post(new q(this));
  }

  public final void o()
  {
    this.z.postDelayed(new r(this), 1000L);
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(e.c);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    p();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    p();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    p();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.barcode.BarcodePayActivity_
 * JD-Core Version:    0.6.2
 */