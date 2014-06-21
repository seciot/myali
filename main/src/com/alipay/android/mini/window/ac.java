package com.alipay.android.mini.window;

import android.content.Context;
import com.alipay.android.app.R.string;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.mini.event.ActionType;

final class ac
  implements Runnable
{
  ac(MiniWindowManager paramMiniWindowManager)
  {
  }

  public final void run()
  {
    Context localContext = GlobalContext.a().b();
    String str1 = localContext.getString(R.string.Dependable);
    String str2 = localContext.getString(R.string.i);
    String str3 = localContext.getString(R.string.BundlesManager);
    IFormShower localIFormShower = MiniWindowManager.getBundle(this.a);
    ActionType[] arrayOfActionType1 = new ActionType[1];
    arrayOfActionType1[0] = ActionType.b;
    ActionType[] arrayOfActionType2 = new ActionType[1];
    arrayOfActionType2[0] = ActionType.i;
    localIFormShower.a(null, str1, str3, arrayOfActionType1, str2, arrayOfActionType2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.ac
 * JD-Core Version:    0.6.2
 */