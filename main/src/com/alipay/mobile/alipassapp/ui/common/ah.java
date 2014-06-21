package com.alipay.mobile.alipassapp.ui.common;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import org.json.JSONException;
import org.json.JSONObject;

final class ah extends BroadcastReceiver
{
  ah(ae paramae)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    new StringBuilder("接收到了长连接服务 action=").append(paramIntent.getAction()).toString();
    String str;
    if (paramIntent.getAction().equals(ae.b))
    {
      str = paramIntent.getStringExtra("payload");
      new StringBuilder("payload").append(str).toString();
    }
    try
    {
      JSONObject localJSONObject = new JSONObject(str);
      ae.f(this.a);
      ae.e(this.a, localJSONObject, "pushorder");
      return;
    }
    catch (JSONException localJSONException)
    {
      new StringBuilder("longlink Receiver error:payload=").append(str).toString();
      localJSONException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.ah
 * JD-Core Version:    0.6.2
 */