package com.alipay.mobile.phonecashier;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

public class AccountChangeReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getBooleanExtra("switchaccount", false))
      com.alipay.mobile.phonecashier.service.PhoneCashierServiceImpl.a = false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.phonecashier.AccountChangeReceiver
 * JD-Core Version:    0.6.2
 */