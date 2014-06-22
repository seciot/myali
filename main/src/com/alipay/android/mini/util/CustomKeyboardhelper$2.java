package com.alipay.android.mini.util;

import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

class CustomKeyboardhelper$2 extends ResultReceiver
{
  CustomKeyboardhelper$2(CustomKeyboardhelper paramCustomKeyboardhelper, Handler paramHandler)
  {
    super(paramHandler);
  }

  protected void onReceiveResult(int paramInt, Bundle paramBundle)
  {
    if ((paramInt == 3) || (paramInt == 1))
      CustomKeyboardhelper.dexopt(this.a).postDelayed(new c(this), 200L);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.CustomKeyboardhelper.2
 * JD-Core Version:    0.6.2
 */