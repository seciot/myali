package com.alipay.mobile.alipassapp.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.kabaoprod.biz.mwallet.card.request.MemberCardRequest;
import com.alipay.kabaoprod.biz.mwallet.card.result.CardPreviewResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class AlipassQueryCardActivity_ extends AlipassQueryCardActivity
{
  private Handler d = new Handler();

  public final void a()
  {
    BackgroundExecutor.execute(new cd(this));
  }

  public final void a(MemberCardRequest paramMemberCardRequest, String paramString)
  {
    BackgroundExecutor.execute(new cm(this, paramMemberCardRequest, paramString));
  }

  public final void a(CardPreviewResult paramCardPreviewResult, MemberCardRequest paramMemberCardRequest, String paramString)
  {
    this.d.post(new ch(this, paramCardPreviewResult, paramMemberCardRequest, paramString));
  }

  public final void a(PassInfoResult paramPassInfoResult, String paramString)
  {
    this.d.post(new cl(this, paramPassInfoResult, paramString));
  }

  public final void a(KabaoCommonResult paramKabaoCommonResult)
  {
    this.d.post(new cj(this, paramKabaoCommonResult));
  }

  public final void b()
  {
    this.d.post(new ci(this));
  }

  public final void c()
  {
    BackgroundExecutor.execute(new ce(this));
  }

  public final void d()
  {
    this.d.post(new cf(this));
  }

  public final void f()
  {
    this.d.post(new cc(this));
  }

  public final void g()
  {
    this.d.post(new cg(this));
  }

  public final void h()
  {
    this.d.post(new ck(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassQueryCardActivity_
 * JD-Core Version:    0.6.2
 */