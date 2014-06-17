package com.alipay.mobile.commonui.widget;

import android.view.View;
import android.view.View.OnClickListener;

class ScrollMoreListAdapter$1
  implements View.OnClickListener
{
  ScrollMoreListAdapter$1(ScrollMoreListAdapter paramScrollMoreListAdapter)
  {
  }

  public void onClick(View paramView)
  {
    if (this.this$0.mIsLoading)
      return;
    this.this$0.mIsLoading = true;
    this.this$0.onMore();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.ScrollMoreListAdapter.1
 * JD-Core Version:    0.6.2
 */