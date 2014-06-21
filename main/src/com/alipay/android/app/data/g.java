package com.alipay.android.app.data;

import com.alipay.android.app.net.Request;
import com.alipay.android.app.net.Response;
import com.alipay.android.app.script.CallbackParams;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.protocol.RequestWrapper;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

final class g
  implements Runnable
{
  g(f paramf, String[] paramArrayOfString, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
  }

  public final void run()
  {
    Object localObject;
    String str;
    if ((f.getBundle(this.g) == null) || (this.a == null) || (this.a.length % 2 != 0))
    {
      localObject = null;
      str = "false";
    }
    while (true)
    {
      if ((f.getBundle(this.g) != null) && (f.getBundle(this.g).get() != null))
        ((ValidatedFrameData)f.getBundle(this.g).get()).a(this.f, new Object[] { str, localObject });
      return;
      try
      {
        Request localRequest = f.a(this.g, this.b, this.c, this.d, this.e, this.a);
        Response localResponse1 = ((ValidatedFrameData)f.getBundle(this.g).get()).e();
        if ((localResponse1 != null) && (localResponse1.e() != null))
          localRequest.a(localResponse1.e());
        localRequest.a((InteractionData)f.b(this.g).get());
        Response localResponse2 = new Response();
        RequestWrapper localRequestWrapper = new RequestWrapper();
        ((ValidatedFrameData)f.getBundle(this.g).get()).f();
        JSONObject localJSONObject = localRequestWrapper.a(GlobalContext.a().b(), localRequest, localResponse2);
        if (localJSONObject != null)
        {
          new StringBuilder("resp:").append(localJSONObject.toString()).toString();
          LogUtils.g();
          CallbackParams localCallbackParams = new CallbackParams(localJSONObject);
          str = "true";
          localObject = localCallbackParams;
        }
        else
        {
          str = "false";
          localObject = null;
        }
      }
      catch (Exception localException)
      {
        LogUtils.a(localException);
        str = "false";
        localObject = null;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.g
 * JD-Core Version:    0.6.2
 */