package com.alipay.mobile.onsitepay.payee;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.alipay.livetradeprod.core.model.base.OnsiteTradeInfo;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.onsitepay.d;
import com.alipay.mobile.onsitepay.e;
import com.alipay.mobile.security.accountmanager.AccountInfo.bean.SecurityQrCodeShowResult;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class FacePayeeActivity_ extends FacePayeeActivity
{
  private Handler t = new Handler();

  private void e()
  {
    this.f = ((LinearLayout)findViewById(d.aw));
    this.i = ((APTextView)findViewById(d.U));
    this.g = ((APTextView)findViewById(d.f));
    this.b = ((APImageView)findViewById(d.c));
    this.d = ((RelativeLayout)findViewById(d.az));
    this.h = ((RelativeLayout)findViewById(d.d));
    this.a = ((APTitleBar)findViewById(d.aD));
    this.e = ((ImageView)findViewById(d.ay));
    this.c = ((LinearLayout)findViewById(d.e));
    this.j = ((RelativeLayout)findViewById(d.av));
    a();
  }

  public final void a(int paramInt, boolean paramBoolean)
  {
    this.t.post(new p(this, paramInt, paramBoolean));
  }

  public final void a(OnsiteTradeInfo paramOnsiteTradeInfo, FacePayeeHead paramFacePayeeHead)
  {
    this.t.post(new q(this, paramOnsiteTradeInfo, paramFacePayeeHead));
  }

  public final void a(String paramString)
  {
    BackgroundExecutor.execute(new r(this, paramString));
  }

  public final void a(String paramString, SecurityQrCodeShowResult paramSecurityQrCodeShowResult)
  {
    this.t.post(new m(this, paramString, paramSecurityQrCodeShowResult));
  }

  public final void b()
  {
    this.t.postDelayed(new l(this), 600L);
  }

  public final void b(String paramString)
  {
    BackgroundExecutor.execute(new k(this, paramString));
  }

  public final void c()
  {
    this.t.post(new o(this));
  }

  public final void c(String paramString)
  {
    this.t.post(new j(this, paramString));
  }

  public final void d()
  {
    this.t.post(new n(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(e.e);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    e();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    e();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    e();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payee.FacePayeeActivity_
 * JD-Core Version:    0.6.2
 */