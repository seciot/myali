package com.alipay.mobile.longlink.b.d;

import com.alipay.mobile.longlink.b.a.m;
import com.alipay.mobile.longlink.b.c.d;
import com.alipay.mobile.longlink.b.c.f;
import org.json.JSONException;
import org.json.JSONObject;

public class e
  implements BundlesManagerImpl
{
  private static final String a = com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.getBundle(HostClassLoader.class);
  private final com.alipay.mobile.longlink.service.AppBundle b;

  public e(com.alipay.mobile.longlink.service.AppBundle parama)
  {
    this.b = parama;
  }

  public final void setBundlePath(com.alipay.mobile.longlink.BundlesManager.BundlesManagerImpl.AppBundle parama)
  {
    String str;
    if (new DefaultThreadFactory(0).getBundle(parama))
    {
      this.b.getBundle(true);
      str = parama.getInitLevel();
    }
    try
    {
      JSONObject localJSONObject = new JSONObject(str);
      m.getBundleByComponentName(localJSONObject.optInt("keepLiveTime"));
      m.getBundle(localJSONObject.optInt("heartTimeOut"));
      com.alipay.mobile.longlink.service.AppBundle.getAllComponentNames();
      com.alipay.mobile.longlink.BundlesManagerImpl.AppBundle.e(3, AppBundle, "processPacket() replyTimeout=" + m.stop() / 1000 + "s, keepLiveTime=" + m.getBundleName());
      this.b.t();
      return;
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        this.b.getBundle(false);
        localJSONException.printStackTrace();
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.d.e
 * JD-Core Version:    0.6.2
 */