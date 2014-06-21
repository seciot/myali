package com.alipay.android.mini.window;

import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.EditText;
import com.alipay.android.mini.util.UIPropUtil;

final class h
  implements View.OnClickListener
{
  h(GuideWindow paramGuideWindow, EditText paramEditText, ViewGroup paramViewGroup, View paramView)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a != null)
      UIPropUtil.getBundle(this.a);
    GuideWindow.getBundle(this.d);
    this.b.removeView(GuideWindow.b(this.d));
    if (this.c != null)
      this.c.setVisibility(0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.h
 * JD-Core Version:    0.6.2
 */