package com.alipay.mobile.alipassapp.biz.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;

public class AlipassBroadcastReceiver extends BroadcastReceiver
{
  private static final String a = AlipassBroadcastReceiver.class.getSimpleName();

  private static void a(int paramInt, boolean paramBoolean, String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("userId", paramString);
    localBundle.putInt("delaytime", paramInt);
    localBundle.putBoolean("support_interval", paramBoolean);
    g.a(localBundle);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    while (true)
    {
      try
      {
        String str2;
        if ("com.alipay.security.login".equals(paramIntent.getAction()))
        {
          str2 = paramIntent.getStringExtra("userId");
          if (paramIntent.getBooleanExtra("com.alipay.security.withPwd", false))
            a(60000, false, str2);
        }
        else
        {
          if (!"com.alipay.mobile.push.CMD_TRANSFERD".equals(paramIntent.getAction()))
            break;
          if (StringUtils.equals(paramIntent.getExtras().getString("push_appId"), "20000021"))
            break label216;
          boolean bool = StringUtils.equals(paramIntent.getExtras().getString("push_appId"), "20000030");
          i = 0;
          if (bool)
            break label216;
          if (i != 0)
            break label154;
          new StringBuilder("不是alipass的appId不需要执行，appId=").append(paramIntent.getExtras().getString("push_appId")).toString();
          return;
        }
        a(60000, true, str2);
        continue;
      }
      catch (Exception localException)
      {
        return;
      }
      label154: AuthService localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
      if ((localAuthService != null) && (localAuthService.getUserInfo() != null));
      for (String str1 = localAuthService.getUserInfo().getUserId(); ; str1 = null)
      {
        a(0, false, str1);
        return;
      }
      label216: int i = 1;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.service.AlipassBroadcastReceiver
 * JD-Core Version:    0.6.2
 */