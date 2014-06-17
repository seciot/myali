package com.alipay.android.phone.home.widget;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;

final class h
  implements View.OnClickListener
{
  h(HomeWidgetGroup paramHomeWidgetGroup)
  {
  }

  public final void onClick(View paramView)
  {
    if (HomeWidgetGroup.access$000(this.a) != null)
    {
      HomeWidgetGroup.access$000(this.a).dismiss();
      HomeWidgetGroup.access$002(this.a, null);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.widget.h
 * JD-Core Version:    0.6.2
 */