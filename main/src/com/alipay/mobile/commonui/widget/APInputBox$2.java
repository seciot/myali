package com.alipay.mobile.commonui.widget;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

class APInputBox$2
  implements View.OnTouchListener
{
  APInputBox$2(APInputBox paramAPInputBox)
  {
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (!APInputBox.access$000(this.this$0).hasFocus())
      APInputBox.access$000(this.this$0).requestFocus();
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APInputBox.2
 * JD-Core Version:    0.6.2
 */