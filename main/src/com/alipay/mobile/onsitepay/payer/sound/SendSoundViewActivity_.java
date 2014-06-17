package com.alipay.mobile.onsitepay.payer.sound;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.alipay.livetradeprod.core.model.rpc.GetDynamicIdRes;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.onsitepay.d;
import com.alipay.mobile.onsitepay.e;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import org.json.JSONObject;

public final class SendSoundViewActivity_ extends SendSoundViewActivity
{
  private Handler x = new Handler();

  private void x()
  {
    this.p = ((APTitleBar)findViewById(d.aD));
    this.n = ((APTextView)findViewById(d.G));
    this.l = ((LinearLayout)findViewById(d.r));
    this.k = ((APTextView)findViewById(d.O));
    this.m = ((SoundButtonActivity)findViewById(d.aJ));
    this.o = ((RelativeLayout)findViewById(d.aH));
    n();
  }

  public final void a(GetDynamicIdRes paramGetDynamicIdRes)
  {
    this.x.post(new v(this, paramGetDynamicIdRes));
  }

  public final void b(String paramString)
  {
    this.x.post(new t(this, paramString));
  }

  public final void c(String paramString)
  {
    this.x.post(new q(this, paramString));
  }

  public final void d()
  {
    BackgroundExecutor.execute(new r(this));
  }

  public final void d(JSONObject paramJSONObject, String paramString)
  {
    this.x.post(new y(this, paramJSONObject, paramString));
  }

  public final void j()
  {
    BackgroundExecutor.execute(new s(this));
  }

  public final void m()
  {
    this.x.post(new w(this));
  }

  public final void o()
  {
    this.x.postDelayed(new u(this), 600L);
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(e.n);
  }

  public final void p()
  {
    BackgroundExecutor.execute(new z(this));
  }

  public final void q()
  {
    this.x.post(new x(this));
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    x();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    x();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    x();
  }

  public final void u()
  {
    BackgroundExecutor.execute(new aa(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.SendSoundViewActivity_
 * JD-Core Version:    0.6.2
 */