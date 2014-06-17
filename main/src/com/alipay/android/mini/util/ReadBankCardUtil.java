package com.alipay.android.mini.util;

import android.app.Activity;
import com.alipay.android.mini.event.MiniEventArgs;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.phonecashier.assist.PhoneCashierAssistService;

public class ReadBankCardUtil
{
  public static void a(MiniEventArgs paramMiniEventArgs, Activity paramActivity)
  {
    try
    {
      ((PhoneCashierAssistService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(PhoneCashierAssistService.class.getName())).readBankCard(paramMiniEventArgs, paramActivity);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.ReadBankCardUtil
 * JD-Core Version:    0.6.2
 */