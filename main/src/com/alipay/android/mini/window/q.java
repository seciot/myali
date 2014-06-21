package com.alipay.android.mini.window;

import com.alipay.android.mini.widget.SystemDefaultDialog;
import java.util.List;

final class q
  implements Runnable
{
  q(MiniPayActivity paramMiniPayActivity, String paramString1, String paramString2, List paramList)
  {
  }

  public final void run()
  {
    MiniPayActivity localMiniPayActivity = this.d;
    SystemDefaultDialog.e(localMiniPayActivity, this.b, this.c);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.q
 * JD-Core Version:    0.6.2
 */