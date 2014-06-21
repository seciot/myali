package com.alipay.android.mini.uielement;

import android.view.View;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ListView;

final class ab
  implements AbsListView.OnScrollListener
{
  ab(UISelectButton paramUISelectButton, View paramView)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    int i = UISelectButton.getBundle(this.b).getChildCount();
    if (UISelectButton.getBundle(this.b).getChildAt(i - 1) == null)
      return;
    if ((UISelectButton.getBundle(this.b).getChildAt(i - 1).getBottom() - (UISelectButton.getBundle(this.b).getScrollY() + UISelectButton.getBundle(this.b).getHeight() - UISelectButton.getBundle(this.b).getPaddingBottom()) < 5) && (paramInt1 == paramInt3 - paramInt2))
    {
      this.a.setVisibility(8);
      return;
    }
    this.a.setVisibility(0);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.ab
 * JD-Core Version:    0.6.2
 */