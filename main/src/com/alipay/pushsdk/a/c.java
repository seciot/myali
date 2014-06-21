package com.alipay.pushsdk.a;

import android.content.Context;
import com.alipay.pushsdk.c.b;
import com.alipay.pushsdk.data.f;
import com.alipay.pushsdk.push.h;
import org.json.JSONObject;

public class c
{
  private static final String a = com.alipay.pushsdk.BundlesManagerImpl.AppBundle.FileUitl.getBundle(BundlesManagerImpl.class);
  private Context b;
  private BundlesManager c;
  private Loadable d;

  public c(Context paramContext)
  {
    this.b = paramContext;
    this.c = new BundlesManager(this.b);
    this.d = new Loadable(this.b);
  }

  public final void a()
  {
    String str1 = this.d.a();
    String str2 = com.alipay.pushsdk.BundlesManagerImpl.AppBundle.stop();
    com.alipay.pushsdk.BundlesManagerImpl.AppBundle.FileUitl.e(3, AppBundle, "request() getConfigURL=" + str2);
    try
    {
      JSONObject localJSONObject = this.c.stop();
      localJSONObject.put("userId", str1);
      localJSONObject.put("lastPubMsgId", new DefaultThreadFactory(this.b).a());
      localJSONObject.put("pushCfgId", this.c.a().a);
      com.alipay.pushsdk.BundlesManagerImpl.AppBundle.FileUitl.e(3, AppBundle, "getReqData() jsonRequest=" + localJSONObject.toString());
      ZLog locald = new ZLog(this);
      new HostClassLoader(this.b, locald).v(str2, localJSONObject);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.pushsdk.a.c
 * JD-Core Version:    0.6.2
 */