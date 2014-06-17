package com.alipay.mobile.phonecashier.assist;

import android.app.Activity;
import android.content.Intent;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.scan.ScanCallback;
import java.lang.reflect.Method;

final class a
  implements ScanCallback
{
  a(PhoneCashierAssistServiceImpl paramPhoneCashierAssistServiceImpl, Activity paramActivity, Object paramObject)
  {
  }

  public final void onScanResult(boolean paramBoolean, Intent paramIntent)
  {
    AlipayApplication.getInstance().getMicroApplicationContext().updateActivity(this.a);
    String str;
    if (paramBoolean)
      str = paramIntent.getDataString();
    try
    {
      Method localMethod = this.b.getClass().getDeclaredMethod("onReadSuccess", new Class[] { String.class });
      localMethod.setAccessible(true);
      localMethod.invoke(this.b, new Object[] { str });
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.phonecashier.assist.a
 * JD-Core Version:    0.6.2
 */