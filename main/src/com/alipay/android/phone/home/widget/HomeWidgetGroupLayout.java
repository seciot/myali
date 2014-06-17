package com.alipay.android.phone.home.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.utils.CacheSet;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EViewGroup;

@EViewGroup
public class HomeWidgetGroupLayout extends LinearLayout
{
  public static boolean a = false;
  public static int b = 8;
  private HomeWidgetGroupUiCallback c = null;
  private Handler d = new Handler();
  private String e = null;

  public HomeWidgetGroupLayout(Context paramContext)
  {
    super(paramContext);
  }

  public HomeWidgetGroupLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  @SuppressLint({"NewApi"})
  public HomeWidgetGroupLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    paramMotionEvent.getAction();
    return super.onInterceptTouchEvent(paramMotionEvent);
  }

  protected void onVisibilityChanged(View paramView, int paramInt)
  {
    super.onVisibilityChanged(paramView, paramInt);
    if ((paramInt == 0) && (a) && (this.c != null))
    {
      this.c.showGuide();
      a = false;
      b = paramInt;
    }
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    super.onWindowFocusChanged(paramBoolean);
    if ((paramBoolean) && (this.e == null) && (this.c != null))
      processShowGuide();
  }

  @Background
  protected void processShowGuide()
  {
    String str = "AlipayHomeGuideFlag" + AppInfo.getInstance().getmProductVersion();
    this.e = CacheSet.getInstance(AlipayApplication.getInstance().getApplicationContext()).getString(str);
    if (!StringUtils.equalsIgnoreCase(this.e, "true"))
    {
      showGuideView();
      CacheSet.getInstance(AlipayApplication.getInstance().getApplicationContext()).putString(str, "true");
    }
  }

  public void setHomeWidgetGroupUiCallback(HomeWidgetGroupUiCallback paramHomeWidgetGroupUiCallback)
  {
    this.c = paramHomeWidgetGroupUiCallback;
  }

  protected void showGuideView()
  {
    if (getVisibility() != 0)
      a = true;
    while (this.c == null)
      return;
    this.c.showGuide();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.widget.HomeWidgetGroupLayout
 * JD-Core Version:    0.6.2
 */