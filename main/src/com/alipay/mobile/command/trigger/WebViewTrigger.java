package com.alipay.mobile.command.trigger;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.mobile.command.model.TriggerTypeEnum;

public class WebViewTrigger extends Activity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Uri localUri;
    if ((getIntent() != null) && (getIntent().getData() != null))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = "接收到Scheme请求:";
      arrayOfObject[1] = getIntent().getData();
      Intent localIntent1 = getIntent();
      if (localIntent1 != null)
      {
        localUri = localIntent1.getData();
        if ((localUri != null) && (!TextUtils.isEmpty(localUri.getScheme())) && (localUri.getScheme().equalsIgnoreCase("alipaydt")))
          break label91;
      }
    }
    while (true)
    {
      finish();
      return;
      label91: String str1 = localUri.getQuery();
      String str2 = localUri.getQueryParameter("NOTIFICATION_UNIQUE_FLAG");
      Intent localIntent2 = new Intent("com.alipay.mobile.command.NOTIFY");
      localIntent2.putExtra("trigger_type", TriggerTypeEnum.NOTIFY.getType());
      if (!TextUtils.isEmpty(str2))
      {
        localIntent2.putExtra("NOTIFICATION_UNIQUE_FLAG", str2);
        if (!TextUtils.isEmpty(str1))
          localIntent2.putExtra("BODY", str1);
        getApplicationContext().sendOrderedBroadcast(localIntent2, "com.alipay.mobile.command.trigger.permission");
      }
      else
      {
        new Object[] { "webview request ,there is no notificationFlag." };
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.trigger.WebViewTrigger
 * JD-Core Version:    0.6.2
 */