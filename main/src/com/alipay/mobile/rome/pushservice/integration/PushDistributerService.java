package com.alipay.mobile.rome.pushservice.integration;

import android.app.IntentService;
import android.content.Intent;
import com.alipay.mobile.rome.pushservice.adapter.a;
import com.alipay.pushsdk.AliPushInterface;

public class PushDistributerService extends IntentService
{
  public static final String a = PushDistributerService.class.getSimpleName();

  public PushDistributerService()
  {
    super("PushDistributerService");
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent != null)
    {
      String str1 = paramIntent.getStringExtra("push_data");
      String str2 = paramIntent.getStringExtra("push_key");
      new StringBuilder("doEnterBizApps: msgKey=").append(str2).append(", appData = ").append(str1).toString();
      if ((str1 != null) && (str1.length() > 0))
        new a(this).a(str1, str2);
      String str3 = paramIntent.getStringExtra("push_key");
      new StringBuilder("doReportClick: msgKey = ").append(str3).toString();
      if ((str3 != null) && (str3.length() > 0))
        AliPushInterface.activeReport(this, str3, "");
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.pushservice.integration.PushDistributerService
 * JD-Core Version:    0.6.2
 */