package com.alipay.android.mini.window;

import android.content.Context;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.mini.event.ActionType;

final class ab
  implements Runnable
{
  ab(MiniWindowManager paramMiniWindowManager, Exception paramException)
  {
  }

  public final void run()
  {
    String str1 = GlobalContext.a().b().getString(17039370);
    IFormShower localIFormShower = MiniWindowManager.a(this.b);
    String str2 = this.a.getMessage();
    ActionType[] arrayOfActionType = new ActionType[1];
    arrayOfActionType[0] = ActionType.b;
    localIFormShower.a(null, str2, str1, arrayOfActionType, null, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.ab
 * JD-Core Version:    0.6.2
 */