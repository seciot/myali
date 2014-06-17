package com.alipay.android.mini.window;

import android.app.Activity;
import android.view.ViewGroup;
import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.mini.widget.animation.DisplayRotate3D.onCompletedListener;

final class ag
  implements DisplayRotate3D.onCompletedListener
{
  ag(UISubForm paramUISubForm, Activity paramActivity, ViewGroup paramViewGroup)
  {
  }

  public final void a()
  {
    try
    {
      UISubForm.a(this.c, this.a, this.b);
      AbstractUIForm.b = false;
      return;
    }
    catch (AppErrorException localAppErrorException)
    {
      LogUtils.a(localAppErrorException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.ag
 * JD-Core Version:    0.6.2
 */