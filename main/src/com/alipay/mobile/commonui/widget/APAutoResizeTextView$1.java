package com.alipay.mobile.commonui.widget;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

class APAutoResizeTextView$1
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  APAutoResizeTextView$1(APAutoResizeTextView paramAPAutoResizeTextView)
  {
  }

  public void onGlobalLayout()
  {
    this.this$0.setAutoTextSize();
    this.this$0.getViewTreeObserver().removeGlobalOnLayoutListener(this);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APAutoResizeTextView.1
 * JD-Core Version:    0.6.2
 */