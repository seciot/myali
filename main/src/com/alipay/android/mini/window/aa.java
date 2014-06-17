package com.alipay.android.mini.window;

import android.content.Context;
import android.text.TextUtils;
import com.alipay.android.app.R.string;
import com.alipay.android.app.exception.AppErrorException;
import com.alipay.android.app.exception.FailOperatingException;
import com.alipay.android.app.pay.GlobalConstant;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.mini.event.ActionType;

final class aa
  implements Runnable
{
  aa(MiniWindowManager paramMiniWindowManager, Exception paramException)
  {
  }

  public final void run()
  {
    Context localContext = GlobalContext.a().b();
    if ((this.a instanceof FailOperatingException));
    for (String str1 = this.a.getMessage(); ; str1 = null)
    {
      if ((GlobalConstant.DEBUG) && ((this.a instanceof AppErrorException)))
        str1 = this.a.getMessage();
      boolean bool = TextUtils.isEmpty(str1);
      String str2;
      if ((GlobalConstant.DEBUG) && (bool))
        str2 = localContext.getString(R.string.d);
      while (true)
      {
        String str3 = localContext.getString(17039370);
        IFormShower localIFormShower = MiniWindowManager.a(this.b);
        ActionType[] arrayOfActionType = new ActionType[1];
        arrayOfActionType[0] = ActionType.d;
        localIFormShower.a(null, str2, str3, arrayOfActionType, null, null);
        return;
        if (bool)
          str2 = localContext.getString(R.string.a);
        else
          str2 = str1;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.aa
 * JD-Core Version:    0.6.2
 */