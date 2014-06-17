package com.alipay.mobile.longlink.b.d;

import com.alipay.mobile.longlink.b.a.m;
import com.alipay.mobile.longlink.b.c.f;
import org.json.JSONException;
import org.json.JSONObject;

public final class d
  implements c
{
  private final com.alipay.mobile.longlink.service.a a;

  public d(com.alipay.mobile.longlink.service.a parama)
  {
    this.a = parama;
  }

  public final void a(com.alipay.mobile.longlink.b.c.a parama)
  {
    String str;
    if (new f(2).a(parama))
      str = parama.d();
    try
    {
      m.b(new JSONObject(str).optInt("reconnectTime"));
      this.a.c();
      return;
    }
    catch (JSONException localJSONException)
    {
      while (true)
        localJSONException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.d.d
 * JD-Core Version:    0.6.2
 */