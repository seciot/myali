package com.alipay.mobile.core.impl;

import android.os.Bundle;
import com.alipay.mobile.core.ApplicationManager;
import com.alipay.mobile.framework.app.AppLoadException;

class MicroApplicationContextImpl$3
  implements Runnable
{
  MicroApplicationContextImpl$3(MicroApplicationContextImpl paramMicroApplicationContextImpl, String paramString1, String paramString2, Bundle paramBundle)
  {
  }

  public void run()
  {
    try
    {
      MicroApplicationContextImpl.access$0(this.this$0).startApp(this.a, this.b, this.c);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.impl.MicroApplicationContextImpl.3
 * JD-Core Version:    0.6.2
 */