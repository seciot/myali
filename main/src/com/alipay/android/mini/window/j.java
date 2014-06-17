package com.alipay.android.mini.window;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.android.app.data.BizUiData;
import com.alipay.android.app.data.DataProcessor;

final class j extends BroadcastReceiver
{
  j(MiniEventHandleHelper paramMiniEventHandleHelper, BizUiData paramBizUiData)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if (!paramIntent.getBooleanExtra("isCertified", false))
      this.a.c().j();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.window.j
 * JD-Core Version:    0.6.2
 */