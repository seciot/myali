package com.alipay.android.widget.security.component;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.RelativeLayout;

final class a
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  a(XListView paramXListView)
  {
  }

  public final void onGlobalLayout()
  {
    XListView.access$002(this.a, XListView.access$100(this.a).getHeight());
    this.a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.component.a
 * JD-Core Version:    0.6.2
 */