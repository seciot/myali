package com.alipay.pushsdk.a;

import android.content.Context;
import com.alipay.pushsdk.c.b;
import com.alipay.pushsdk.data.f;
import com.alipay.pushsdk.push.h;
import org.json.JSONObject;

public class c
{
  private static final String a = com.alipay.pushsdk.c.a.c.a(c.class);
  private Context b;
  private b c;
  private h d;

  public c(Context paramContext)
  {
    this.b = paramContext;
    this.c = new b(this.b);
    this.d = new h(this.b);
  }

  public final void a()
  {
    String str1 = this.d.a();
    String str2 = com.alipay.pushsdk.c.a.b();
    com.alipay.pushsdk.c.a.c.a(3, a, "request() getConfigURL=" + str2);
    try
    {
      JSONObject localJSONObject = this.c.b();
      localJSONObject.put("userId", str1);
      localJSONObject.put("lastPubMsgId", new f(this.b).a());
      localJSONObject.put("pushCfgId", this.c.a().a);
      com.alipay.pushsdk.c.a.c.a(3, a, "getReqData() jsonRequest=" + localJSONObject.toString());
      d locald = new d(this);
      new e(this.b, locald).a(str2, localJSONObject);
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