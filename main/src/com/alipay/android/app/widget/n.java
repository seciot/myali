package com.alipay.android.app.widget;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.RelativeLayout;

final class n
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  n(CustomListView paramCustomListView)
  {
  }

  public final void onGlobalLayout()
  {
    CustomListView.access$002(this.a, CustomListView.access$100(this.a).getHeight());
    this.a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.n
 * JD-Core Version:    0.6.2
 */