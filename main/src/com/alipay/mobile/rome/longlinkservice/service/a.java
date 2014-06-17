package com.alipay.mobile.rome.longlinkservice.service;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import com.alipay.mobile.longlink.PacketHanlder;

public class a
  implements PacketHanlder
{
  private final String a = a.class.getSimpleName();
  private Context b;

  public a(Context paramContext)
  {
    this.b = paramContext;
  }

  public void processPacket(String paramString1, String paramString2)
  {
    new StringBuilder("processPacket: appId=").append(paramString1).append(", appData=").append(paramString2).toString();
    if ((paramString1 != null) && (paramString1.length() > 0))
    {
      LocalBroadcastManager localLocalBroadcastManager = LocalBroadcastManager.getInstance(this.b);
      String str = "com.alipay.longlink.TRANSFER_" + paramString1;
      Intent localIntent = new Intent(str);
      localIntent.putExtra("payload", paramString2);
      localLocalBroadcastManager.sendBroadcast(localIntent);
      new StringBuilder("processPacket: sendBroadcast with action:").append(str).toString();
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.rome.longlinkservice.service.a
 * JD-Core Version:    0.6.2
 */