package com.alipay.pushsdk.push.d;

import com.alipay.pushsdk.c.a.d;
import com.alipay.pushsdk.push.a.o;
import com.alipay.pushsdk.push.c.a;
import com.alipay.pushsdk.push.f;
import com.alipay.pushsdk.push.j;
import org.json.JSONException;
import org.json.JSONObject;

public class e
  implements c
{
  private static final String a = com.alipay.pushsdk.c.AppBundle.c.a(e.class);
  private final j b;

  public e(j paramj)
  {
    this.b = paramj;
  }

  public final void a(AppBundle parama)
  {
    String str1;
    if (new f(0).a(parama))
    {
      this.b.a(true);
      o.a(System.currentTimeMillis());
      this.b.b(System.currentTimeMillis());
      str1 = parama.h();
    }
    try
    {
      JSONObject localJSONObject = new JSONObject(str1);
      o.c(localJSONObject.optInt("keepLiveTime"));
      o.b(localJSONObject.optInt("reconnectTime"));
      o.d(localJSONObject.optBoolean("updateLBSInfo"));
      String str2 = localJSONObject.optString("heartTimeout");
      if ((str2 != null) && (str2.length() > 0))
        o.a(Integer.parseInt(str2));
      String str3 = localJSONObject.optString("ctrlSelf");
      if ((str3 != null) && (str3.equalsIgnoreCase("false")))
        o.a(false);
      while (true)
      {
        com.alipay.pushsdk.c.AppBundle.c.a(3, AppBundle, "processPacket ctrlSelf=" + o.g());
        String str4 = localJSONObject.optString("ctrlAlways");
        if ((str4 == null) || (!str4.equalsIgnoreCase("false")))
          break;
        o.b(false);
        com.alipay.pushsdk.c.AppBundle.c.a(3, AppBundle, "processPacket ctrlAlways=" + o.h());
        j.q();
        com.alipay.pushsdk.c.AppBundle.c.a(3, AppBundle, "processPacket() reconnectTime=" + o.getBundleName() + "s, keepLiveTime=" + o.l() + "s, updateLBSInfo=" + o.j());
        d.a(d.s, d.y, System.currentTimeMillis(), d.y, 1000L + System.currentTimeMillis(), "RegisterPacketListener_processPacket:reconnectTime=" + o.getBundleName() + " keepLiveTime=" + o.l());
        this.b.v();
        com.alipay.pushsdk.c.AppBundle.e.a("32", "01", "3");
        return;
        o.a(true);
      }
    }
    catch (JSONException localJSONException)
    {
      while (true)
      {
        this.b.a(false);
        localJSONException.printStackTrace();
        continue;
        o.b(true);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.push.d.e
 * JD-Core Version:    0.6.2
 */