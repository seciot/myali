package com.alipay.mobile.onsitepay.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.security.otp.OtpManager;

public class LoginAndPayBroadCastReceiver extends BroadcastReceiver
{
  private final String a = "LoginAndPayBroadCastReceiver";
  private OtpManager b = null;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    new StringBuilder("收到了应用的广播类型： ").append(str).toString();
    try
    {
      if (this.b == null)
        this.b = ((OtpManager)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(OtpManager.class.getName()));
      if (this.b != null)
      {
        if ("com.alipay.security.login".equals(str))
        {
          this.b.sendTodoMessage();
          return;
        }
        if (("com.alipay.mobile.basebiz.TRADE_STATUS_CHANGED".equals(str)) && (paramIntent.getStringExtra("phonecashier.pay.success") != null) && ("phonecashier.pay.success".equals(paramIntent.getStringExtra("phonecashier.pay.success"))))
        {
          this.b.initSeed();
          return;
        }
      }
    }
    catch (Exception localException)
    {
      new StringBuilder("SE模块广播异常:").append(localException.toString()).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.receiver.LoginAndPayBroadCastReceiver
 * JD-Core Version:    0.6.2
 */