package com.alipay.mobile.onsitepay.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.security.otp.OtpManager;

public class LogoutBroadCastReceiver extends BroadcastReceiver
{
  private final String a = "LogoutBroadCastReceiver";
  private OtpManager b = null;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    new StringBuilder("收到了应用的广播类型： ").append(str1).toString();
    try
    {
      if (this.b == null)
        this.b = ((OtpManager)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(OtpManager.class.getName()));
      String str2 = paramIntent.getExtras().getString("logoutUserId");
      if ((this.b != null) && (StringUtils.isNotBlank(str2)) && ("com.alipay.security.logout".equals(str1)))
        this.b.deleteIndex(str2);
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("安全退出模块广播异常:").append(localException.toString()).toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.receiver.LogoutBroadCastReceiver
 * JD-Core Version:    0.6.2
 */