package com.alipay.mobile.mobilerechargeapp.view;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.alipay.mobile.commonui.widget.APEditText;

final class b
  implements View.OnTouchListener
{
  b(APInputBoxAutoC paramAPInputBoxAutoC)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    APInputBoxAutoC.access$000(this.a).hasFocus();
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.view.b
 * JD-Core Version:    0.6.2
 */