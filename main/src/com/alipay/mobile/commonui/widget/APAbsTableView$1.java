package com.alipay.mobile.commonui.widget;

import android.text.TextPaint;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

class APAbsTableView$1
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  APAbsTableView$1(APAbsTableView paramAPAbsTableView)
  {
  }

  public void onGlobalLayout()
  {
    this.this$0.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    if ((APAbsTableView.access$000(this.this$0) == null) || (APAbsTableView.access$100(this.this$0) == null));
    int i;
    do
    {
      return;
      float f = this.this$0.mLeftTextView.getPaint().measureText("阿");
      i = (int)((this.this$0.linearLayout.getWidth() + this.this$0.mRightTextView.getWidth()) / f);
      if (APAbsTableView.access$000(this.this$0).length() >= i)
      {
        this.this$0.setLeftTextVisibility(8);
        return;
      }
    }
    while (APAbsTableView.access$000(this.this$0).length() + APAbsTableView.access$100(this.this$0).length() <= i);
    int j = i - APAbsTableView.access$000(this.this$0).length();
    this.this$0.setInnerLeftText(j);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APAbsTableView.1
 * JD-Core Version:    0.6.2
 */