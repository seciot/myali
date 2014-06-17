package com.alipay.mobile.phonecashier.service;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.alipay.android.app.IRemoteServiceCallback.Stub;
import com.alipay.mobile.framework.MicroApplicationContext;
import java.lang.ref.WeakReference;

final class a extends IRemoteServiceCallback.Stub
{
  a(PhoneCashierBootManager paramPhoneCashierBootManager)
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
    Intent localIntent = new Intent("android.intent.action.MAIN", null);
    if (paramBundle == null)
      paramBundle = new Bundle();
    try
    {
      paramBundle.putInt("CallingPid", paramInt);
      localIntent.putExtras(paramBundle);
      label42: localIntent.setClassName(paramString1, paramString2);
      Activity localActivity = (Activity)PhoneCashierBootManager.a(this.a).getTopActivity().get();
      if (localActivity != null)
        localActivity.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      break label42;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.phonecashier.service.a
 * JD-Core Version:    0.6.2
 */