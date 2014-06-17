package com.alipay.android.app.pay;

import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.app.IRemoteServiceCallback.Stub;
import com.alipay.android.app.util.LogUtils;

final class k extends IRemoteServiceCallback.Stub
{
  k(PageForBrowser paramPageForBrowser)
  {
  }

  public final boolean isHideLoadingScreen()
  {
    return false;
  }

  public final void payEnd(boolean paramBoolean, String paramString)
  {
  }

  public final void startActivity(String paramString1, String paramString2, int paramInt, Bundle paramBundle)
  {
    LogUtils.g();
    Intent localIntent = new Intent("android.intent.action.MAIN", null);
    if (paramBundle == null)
      paramBundle = new Bundle();
    try
    {
      paramBundle.putInt("CallingPid", paramInt);
      localIntent.putExtras(paramBundle);
      localIntent.setClassName(paramString1, paramString2);
      this.a.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.k
 * JD-Core Version:    0.6.2
 */