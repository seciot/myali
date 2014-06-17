package com.alipay.mobile.longlink.b.d;

import com.alipay.mobile.longlink.b.a.m;
import com.alipay.mobile.longlink.b.c.d;
import com.alipay.mobile.longlink.b.c.f;
import org.json.JSONException;
import org.json.JSONObject;

public class e
  implements c
{
  private static final String a = com.alipay.mobile.longlink.c.a.a(e.class);
  private final com.alipay.mobile.longlink.service.a b;

  public e(com.alipay.mobile.longlink.service.a parama)
  {
    this.b = parama;
  }

  public final void a(com.alipay.mobile.longlink.b.c.a parama)
  {
    String str;
    if (new f(0).a(parama))
    {
      this.b.a(true);
      str = parama.d();
    }
    try
    {
      JSONObject localJSONObject = new JSONObject(str);
      m.c(localJSONObject.optInt("keepLiveTime"));
      m.a(localJSONObject.optInt("heartTimeOut"));
      com.alipay.mobile.longlink.service.a.n();
      com.alipay.mobile.longlink.c.a.a(3, a, "processPacket() replyTimeout=" + m.b() / 1000 + "s, keepLiveTime=" + m.c());
      this.b.t();
      return;
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        this.b.a(false);
        localJSONException.printStackTrace();
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.d.e
 * JD-Core Version:    0.6.2
 */