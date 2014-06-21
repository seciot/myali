package com.alipay.android.mini.window;

import android.app.Activity;
import android.view.ViewGroup;
import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.util.LogUtils;

final class c
  implements Runnable
{
  c(AbstractUIForm paramAbstractUIForm, String paramString, Activity paramActivity, ViewGroup paramViewGroup)
  {
  }

  public final void run()
  {
    try
    {
      AbstractUIForm.v(this.d, this.d.getBundle(this.a));
      if (AbstractUIForm.b(this.d) != null)
      {
        AbstractUIForm.b(this.d).getBundle(this.d.a.stop());
        AbstractUIForm.b(this.d).v(this.b, this.c);
      }
      return;
    }
    catch (AppErrorException localAppErrorException)
    {
      LogUtils.a(localAppErrorException);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.c
 * JD-Core Version:    0.6.2
 */