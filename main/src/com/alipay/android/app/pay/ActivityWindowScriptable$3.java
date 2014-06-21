package com.alipay.android.app.pay;

import android.view.ViewTreeObserver.OnGlobalLayoutListener;

class ActivityWindowScriptable$3
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  private boolean mIsloaded = false;

  ActivityWindowScriptable$3(ActivityWindowScriptable paramActivityWindowScriptable)
  {
  }

  public void onGlobalLayout()
  {
    if (!this.mIsloaded)
    {
      this.this$0.stop();
      this.mIsloaded = true;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.ActivityWindowScriptable.3
 * JD-Core Version:    0.6.2
 */