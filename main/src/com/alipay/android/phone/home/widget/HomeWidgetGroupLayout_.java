package com.alipay.android.phone.home.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class HomeWidgetGroupLayout_ extends HomeWidgetGroupLayout
{
  private Context c;
  private boolean d = false;

  public HomeWidgetGroupLayout_(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public HomeWidgetGroupLayout_(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  public HomeWidgetGroupLayout_(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }

  private void a()
  {
    this.c = getContext();
    if ((this.c instanceof Activity));
  }

  public static HomeWidgetGroupLayout build(Context paramContext)
  {
    HomeWidgetGroupLayout_ localHomeWidgetGroupLayout_ = new HomeWidgetGroupLayout_(paramContext);
    localHomeWidgetGroupLayout_.onFinishInflate();
    return localHomeWidgetGroupLayout_;
  }

  public static HomeWidgetGroupLayout build(Context paramContext, AttributeSet paramAttributeSet)
  {
    HomeWidgetGroupLayout_ localHomeWidgetGroupLayout_ = new HomeWidgetGroupLayout_(paramContext, paramAttributeSet);
    localHomeWidgetGroupLayout_.onFinishInflate();
    return localHomeWidgetGroupLayout_;
  }

  public static HomeWidgetGroupLayout build(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    HomeWidgetGroupLayout_ localHomeWidgetGroupLayout_ = new HomeWidgetGroupLayout_(paramContext, paramAttributeSet, paramInt);
    localHomeWidgetGroupLayout_.onFinishInflate();
    return localHomeWidgetGroupLayout_;
  }

  public final void onFinishInflate()
  {
    if (!this.d)
      this.d = true;
    super.onFinishInflate();
  }

  public final void processShowGuide()
  {
    BackgroundExecutor.execute(new j(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.widget.HomeWidgetGroupLayout_
 * JD-Core Version:    0.6.2
 */