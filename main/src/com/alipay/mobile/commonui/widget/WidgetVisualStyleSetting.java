package com.alipay.mobile.commonui.widget;

import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;

public class WidgetVisualStyleSetting
{
  private static int a = 16;

  private static void a(ViewGroup paramViewGroup, int paramInt)
  {
    for (int i = 0; i < paramViewGroup.getChildCount(); i++)
    {
      View localView = paramViewGroup.getChildAt(i);
      if ((localView instanceof APLineGroupItemInterface))
        ((APLineGroupItemInterface)localView).setVisualStyle(paramInt);
      if ((localView instanceof ViewGroup))
        a((ViewGroup)localView, paramInt);
    }
  }

  public static int getVisualStyle()
  {
    return a;
  }

  public static void setVisualStyle(Activity paramActivity, int paramInt)
  {
    if (paramActivity == null);
    View localView;
    do
    {
      do
        return;
      while (a == paramInt);
      localView = paramActivity.getWindow().getDecorView().getRootView();
    }
    while (localView == null);
    if ((localView instanceof ViewGroup))
      a((ViewGroup)localView, paramInt);
    a = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.WidgetVisualStyleSetting
 * JD-Core Version:    0.6.2
 */