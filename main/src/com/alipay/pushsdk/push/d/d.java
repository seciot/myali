package com.alipay.pushsdk.push.d;

import com.alipay.pushsdk.push.a.e;
import com.alipay.pushsdk.push.a.o;
import com.alipay.pushsdk.push.c.a;
import com.alipay.pushsdk.push.f;
import com.alipay.pushsdk.push.j;
import org.json.JSONException;
import org.json.JSONObject;

public final class d
  implements BundlesManagerImpl
{
  private final j a;

  public d(j paramj)
  {
    this.a = paramj;
  }

  public final void a(AppBundle parama)
  {
    String str;
    if (new f(2).a(parama))
    {
      o.a(System.currentTimeMillis());
      this.a.b(System.currentTimeMillis());
      str = parama.h();
    }
    try
    {
      o.b(new JSONObject(str).optInt("reconnectTime"));
      this.a.getBundleName();
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
 * Qualified Name:     com.alipay.pushsdk.push.d.d
 * JD-Core Version:    0.6.2
 */