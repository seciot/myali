package com.alipay.mobile.longlink.b.d;

import android.os.Bundle;
import android.os.RemoteException;
import com.alipay.mobile.longlink.ILongLinkPacketNotifer;
import com.alipay.mobile.longlink.b.a.k;
import com.alipay.mobile.longlink.b.c.d;
import com.alipay.mobile.longlink.b.c.f;
import org.json.JSONException;
import org.json.JSONObject;

public class b
  implements c
{
  private static final String a = com.alipay.mobile.longlink.c.a.a(b.class);
  private final com.alipay.mobile.longlink.service.a b;

  public b(com.alipay.mobile.longlink.service.a parama)
  {
    this.b = parama;
  }

  public final void a(com.alipay.mobile.longlink.b.c.a parama)
  {
    String str;
    if (new f(4).a(parama))
    {
      com.alipay.mobile.longlink.c.a.a(3, a, "NotificationPacketListener.processPacket()...");
      str = parama.d();
      if ((str == null) || (str.length() <= 0))
        break label528;
    }
    while (true)
    {
      try
      {
        JSONObject localJSONObject2 = new JSONObject(str);
        locala = new com.alipay.mobile.longlink.a.a();
        locala.a(localJSONObject2.optString("linkToken"));
        locala.b(localJSONObject2.optString("msgData"));
        locala.c(localJSONObject2.optString("msgKey"));
        locala.d(localJSONObject2.optString("msgCreateTime"));
        locala.e(locala.d() + locala.c());
        com.alipay.mobile.longlink.c.a.a(3, a, "processMsgList() msgkey=" + locala.c() + ", timestamp=" + locala.d() + ", userId=" + locala.a() + ", msgData=" + locala.b());
        int i = locala.e().length();
        com.alipay.mobile.longlink.a.c localc = null;
        if (i > 0)
          localc = new com.alipay.mobile.longlink.a.c(this.b.a());
        localc.a(locala.a());
        if (!localc.a(locala))
        {
          localc.b(locala);
          com.alipay.mobile.longlink.c.a.a(4, a, "processMsgList() saved ths msg.");
          try
          {
            if (this.b.f() != null)
            {
              Bundle localBundle = new Bundle();
              localBundle.putString("packetData", locala.b());
              this.b.f().a(localBundle);
              com.alipay.mobile.longlink.c.a.a(4, a, "sendMsgData() Done!");
              if (parama.b() != 1)
                break label402;
              return;
            }
            com.alipay.mobile.longlink.c.a.a(2, a, "sendMsgData() getPacketNotifier failed.");
            continue;
          }
          catch (RemoteException localRemoteException)
          {
            localRemoteException.printStackTrace();
            continue;
          }
        }
      }
      catch (JSONException localJSONException)
      {
        localJSONException.printStackTrace();
        return;
      }
      com.alipay.mobile.longlink.c.a.a(2, a, "sendMsgData() Drop the Packet!");
      com.alipay.mobile.longlink.c.a.a(3, a, "sendMsgData() msgkey=" + locala.c() + ", timestamp=" + locala.d());
      continue;
      try
      {
        label402: com.alipay.mobile.longlink.b.c.a locala1 = com.alipay.mobile.longlink.b.c.c.a(this.b.g());
        locala1.a(4);
        locala1.b(1);
        try
        {
          JSONObject localJSONObject1 = new JSONObject();
          localJSONObject1.put("linkToken", this.b.e());
          localJSONObject1.put("msgKey", locala.c());
          locala1.a(localJSONObject1.toString());
          this.b.d().a(locala1);
          com.alipay.mobile.longlink.c.a.a(3, a, "processPacket() respPacket is sent. dataResp:" + localJSONObject1.toString());
          return;
        }
        catch (Exception localException2)
        {
          localException2.printStackTrace();
          return;
        }
      }
      catch (Exception localException1)
      {
        localException1.printStackTrace();
        return;
      }
      label528: com.alipay.mobile.longlink.a.a locala = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.b.d.b
 * JD-Core Version:    0.6.2
 */