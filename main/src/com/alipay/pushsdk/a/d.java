package com.alipay.pushsdk.a;

import android.content.Context;
import android.content.Intent;
import com.alipay.pushsdk.c.j;
import com.alipay.pushsdk.push.NotificationService;
import com.alipay.pushsdk.push.h;
import org.json.JSONException;
import org.json.JSONObject;

final class d
  implements g
{
  d(c paramc)
  {
  }

  public final void a()
  {
    com.alipay.pushsdk.c.a.c.a(3, c.b(), "UpdateUserListener onFail.");
  }

  public final void a(com.alipay.pushsdk.b.b paramb)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramb.c().toString());
      com.alipay.pushsdk.c.a.c.a(3, c.b(), "ConfigListener onComplete jsonResponse:" + localJSONObject.toString());
      if (localJSONObject.getInt("resultStatus") == 100)
      {
        c.a(this.a, localJSONObject);
        long l = System.currentTimeMillis();
        c.a(this.a).a("LAST_CONFIG_TIME", l);
        com.alipay.pushsdk.c.a.c.a(3, c.b(), "onComplete() saveCfgPolicy Time is:" + j.a(l));
        Thread.sleep(1000L);
        if (c.b(this.a).a().length() == 0)
          c.c(this.a).stopService(new Intent(c.c(this.a), NotificationService.class));
      }
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.a.d
 * JD-Core Version:    0.6.2
 */