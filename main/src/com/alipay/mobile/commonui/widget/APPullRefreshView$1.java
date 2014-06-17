package com.alipay.mobile.commonui.widget;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

class APPullRefreshView$1
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  APPullRefreshView$1(APPullRefreshView paramAPPullRefreshView)
  {
  }

  public void onGlobalLayout()
  {
    this.this$0.mMaxMagin = this.this$0.mOverView.getOverViewHeight();
    this.this$0.getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APPullRefreshView.1
 * JD-Core Version:    0.6.2
 */