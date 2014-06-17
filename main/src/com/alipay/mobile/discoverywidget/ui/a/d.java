package com.alipay.mobile.discoverywidget.ui.a;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import com.alipay.kabaoprod.biz.mwallet.pass.request.HomePageWidgetReq;
import com.alipay.kabaoprod.biz.mwallet.pass.result.IndexWidgetResult;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class d extends a
{
  private Context b;
  private Handler c = new Handler();

  private d(Context paramContext)
  {
    this.b = paramContext;
    if ((this.b instanceof Activity));
  }

  public static d a(Context paramContext)
  {
    return new d(paramContext);
  }

  public final void a(IndexWidgetResult paramIndexWidgetResult)
  {
    this.c.post(new f(this, paramIndexWidgetResult));
  }

  public final void b(HomePageWidgetReq paramHomePageWidgetReq)
  {
    BackgroundExecutor.execute(new g(this, paramHomePageWidgetReq));
  }

  public final void b(IndexWidgetResult paramIndexWidgetResult)
  {
    this.c.post(new e(this, paramIndexWidgetResult));
  }

  public final void c(HomePageWidgetReq paramHomePageWidgetReq)
  {
    BackgroundExecutor.execute(new h(this, paramHomePageWidgetReq));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.discoverywidget.ui.a.d
 * JD-Core Version:    0.6.2
 */