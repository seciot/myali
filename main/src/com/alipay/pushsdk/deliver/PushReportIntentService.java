package com.alipay.pushsdk.deliver;

import android.app.IntentService;
import android.content.Intent;
import com.alipay.pushsdk.c.a.c;
import com.alipay.pushsdk.c.i;
import com.alipay.pushsdk.push.h;
import org.json.JSONObject;

public class PushReportIntentService extends IntentService
{
  public static final String a = PushReportIntentService.class.getSimpleName();

  public PushReportIntentService()
  {
    super("PushReportIntentService");
  }

  protected void onHandleIntent(Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    if (str1.equals(getPackageName() + ".push.action.NOTIFICATION_CLICKED"))
    {
      String str2 = paramIntent.getStringExtra("k");
      String str3 = paramIntent.getStringExtra("ext");
      BundlesManagerImpl.e(3, a, "onHandleIntent: action = " + str1 + ", msgId=" + str2 + ", msgExt=" + str3);
      String str4 = new h(this).a();
      String str5 = i.a(this).c();
      BundlesManagerImpl.e(3, a, "reportClickMsg() clientId=" + str5 + ", userId=" + str4);
      try
      {
        String str6 = com.alipay.pushsdk.c.a.c();
        JSONObject localJSONObject1 = new JSONObject();
        localJSONObject1.put("clientId", str5);
        localJSONObject1.put("userId", str4);
        localJSONObject1.put("k", str2);
        localJSONObject1.put("ext", str3);
        String str7 = new com.alipay.pushsdk.b.a(str6, this).getBundle(localJSONObject1.toString());
        if (str7 != null)
        {
          JSONObject localJSONObject2 = new JSONObject(str7);
          int i = localJSONObject2.getInt("resultStatus");
          String str8 = localJSONObject2.optString("memo");
          BundlesManagerImpl.e(3, a, "reportClickMsg() resultStatus=" + i + ", memo=" + str8);
          return;
        }
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        return;
      }
    }
    BundlesManagerImpl.e(3, a, "onHandleIntent nothing to do!");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.deliver.PushReportIntentService
 * JD-Core Version:    0.6.2
 */