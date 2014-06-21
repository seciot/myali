package com.alipay.android.app.pay;

import android.os.Handler;
import android.os.Message;
import com.alipay.android.app.encrypt.TriDes;
import com.alipay.android.app.exception.NetErrorException;
import com.alipay.android.app.net.Request;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.protocol.ProtocolType;
import com.alipay.android.lib.plusin.protocol.RequestUtils;
import org.json.JSONObject;

final class c
  implements Runnable
{
  c(HyperlinkActivity paramHyperlinkActivity, JSONObject paramJSONObject, String paramString)
  {
  }

  public final void run()
  {
    Request localRequest = new Request(HyperlinkActivity.getBundle(this.c), this.a, null, ProtocolType.a);
    new StringBuilder("agreementRequset : ").append(this.a.toString()).toString();
    LogUtils.g();
    try
    {
      String str1 = new JSONObject(RequestUtils.getBundle(RequestUtils.e(this.c.getApplicationContext(), localRequest.a(), localRequest.getBundle(this.b).toString()))).optJSONObject("data").optJSONObject("params").optString("res_data", "");
      String str2 = TriDes.d(this.b, str1);
      new StringBuilder("agreement:").append(str2).toString();
      LogUtils.i();
      Message localMessage = new Message();
      localMessage.what = 1;
      localMessage.obj = str2;
      HyperlinkActivity.b(this.c).sendMessage(localMessage);
      return;
    }
    catch (NetErrorException localNetErrorException)
    {
      LogUtils.a(localNetErrorException);
      HyperlinkActivity.c(this.c);
      return;
    }
    catch (Exception localException)
    {
      LogUtils.a(localException);
      HyperlinkActivity.c(this.c);
      return;
    }
    finally
    {
      this.c.runOnUiThread(this.c.a);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.pay.c
 * JD-Core Version:    0.6.2
 */