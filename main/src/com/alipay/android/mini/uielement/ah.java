package com.alipay.android.mini.uielement;

import android.app.Activity;
import android.content.res.Resources;
import com.alipay.android.app.R.string;
import com.alipay.android.mini.widget.CustomToast;

final class ah
  implements Runnable
{
  ah(UISimplePassword paramUISimplePassword, Activity paramActivity)
  {
  }

  public final void run()
  {
    this.b.h();
    CustomToast.a(this.a, this.a.getResources().getString(R.string.j));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.ah
 * JD-Core Version:    0.6.2
 */