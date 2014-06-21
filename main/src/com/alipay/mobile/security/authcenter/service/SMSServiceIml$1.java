package com.alipay.mobile.security.authcenter.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.framework.service.ext.security.SMSSendResultCallBack;

class SMSServiceIml$1 extends BroadcastReceiver
{
  SMSServiceIml$1(SMSServiceIml paramSMSServiceIml)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    switch (getResultCode())
    {
    default:
      if (SMSServiceIml.access$000(this.a) != null)
        SMSServiceIml.access$000(this.a).getBundle(false);
      break;
    case -1:
    }
    do
      return;
    while (SMSServiceIml.access$000(this.a) == null);
    SMSServiceIml.access$000(this.a).getBundle(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.service.SMSServiceIml.1
 * JD-Core Version:    0.6.2
 */