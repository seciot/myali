package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.os.Vibrator;
import com.alipay.mobile.discoverycommon.api.AlipassConstants;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.security.otp.OtpManager;
import org.json.JSONObject;

final class ag
  implements Runnable
{
  ag(ae paramae, JSONObject paramJSONObject, String paramString)
  {
  }

  public final void run()
  {
    new StringBuilder("开关的状态continueLoop=:").append(ae.d(this.c)).toString();
    new StringBuilder("response=").append(this.a.toString()).append(",requestType=").append(this.b).toString();
    if (this.a != null)
      while (true)
      {
        String str;
        synchronized (ae.removeBundle(this.c))
        {
          if (ae.removeBundle(this.c).booleanValue())
            return;
          if ("DELSEED".equals(this.a.optString("attachAction")))
            ae.stop().deleteSeed();
          str = this.a.optString("action");
          new StringBuilder("action=").append(str).toString();
          ((Vibrator)AlipayApplication.getInstance().getApplicationContext().getApplicationContext().getSystemService("vibrator")).vibrate(AlipassConstants.DEFAULT_VIBRATE_PATTERN, -1);
          if ("soundWavePaySuccessPush".equalsIgnoreCase(str))
          {
            JSONObject localJSONObject2 = this.a;
            ae.getBundle(localJSONObject2);
            ae.v(this.c, Boolean.valueOf(true));
            return;
          }
        }
        if ("getGoodsList".equalsIgnoreCase(str))
        {
          JSONObject localJSONObject1 = this.a;
          ae.b(localJSONObject1);
        }
      }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.ag
 * JD-Core Version:    0.6.2
 */