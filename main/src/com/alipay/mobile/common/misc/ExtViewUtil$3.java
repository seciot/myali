package com.alipay.mobile.common.misc;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import java.util.TimerTask;

final class ExtViewUtil$3 extends TimerTask
{
  ExtViewUtil$3(View paramView)
  {
  }

  public final void run()
  {
    ExtViewUtil.inputMethodManager.showSoftInput(this.val$v, 1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.misc.ExtViewUtil.3
 * JD-Core Version:    0.6.2
 */