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
  d(BundlesManagerImpl paramc)
  {
  }

  public final void a()
  {
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(3, BundlesManagerImpl.stop(), "UpdateUserListener onFail.");
  }

  public final void setBundlePath(com.alipay.pushsdk.BundlesManager.b paramb)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramb.getBundleName().toString());
      com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(3, BundlesManagerImpl.stop(), "ConfigListener onComplete jsonResponse:" + localJSONObject.toString());
      if (localJSONObject.getInt("resultStatus") == 100)
      {
        BundlesManagerImpl.v(this.a, localJSONObject);
        long l = System.currentTimeMillis();
        BundlesManagerImpl.getBundle(this.a).v("LAST_CONFIG_TIME", l);
        com.alipay.pushsdk.BundlesManagerImpl.AppBundle.c.e(3, BundlesManagerImpl.stop(), "onComplete() saveCfgPolicy Time is:" + j.getBundle(l));
        Thread.sleep(1000L);
        if (BundlesManagerImpl.b(this.a).a().length() == 0)
          BundlesManagerImpl.c(this.a).stopService(new Intent(BundlesManagerImpl.c(this.a), NotificationService.class));
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