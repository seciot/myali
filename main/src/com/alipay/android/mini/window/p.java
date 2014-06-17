package com.alipay.android.mini.window;

import android.content.Context;
import com.alipay.android.mini.widget.CustomToast;

final class p
  implements Runnable
{
  p(MiniPayActivity paramMiniPayActivity, Context paramContext, String paramString)
  {
  }

  public final void run()
  {
    MiniPayActivity.a(this.c);
    CustomToast.a(this.a, this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.p
 * JD-Core Version:    0.6.2
 */