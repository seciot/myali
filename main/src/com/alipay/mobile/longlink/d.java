package com.alipay.mobile.longlink;

import android.os.Bundle;
import com.alipay.mobile.longlink.c.a;
import org.json.JSONObject;

class d extends ILongLinkPacketNotifer.Stub
{
  d(LongLinkServiceManager paramLongLinkServiceManager)
  {
  }

  public void a(Bundle paramBundle)
  {
    if (paramBundle != null)
    {
      String str = paramBundle.getString("packetData");
      try
      {
        JSONObject localJSONObject = new JSONObject(str);
        a.a(3, LongLinkServiceManager.access$200(), "packet=" + localJSONObject.toString());
        if (LongLinkServiceManager.access$300(this.a, localJSONObject))
        {
          a.a(3, LongLinkServiceManager.access$200(), "onReceivedPacket call onAppHanlder successfully.");
          return;
        }
        LongLinkServiceManager.access$400(this.a, localJSONObject);
        a.a(3, LongLinkServiceManager.access$200(), "onReceivedPacket call mComPktHanlder to broadcast.");
        return;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        a.a(2, LongLinkServiceManager.access$200(), "=====> process info fail");
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.longlink.d
 * JD-Core Version:    0.6.2
 */