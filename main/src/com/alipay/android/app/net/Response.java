package com.alipay.android.app.net;

import android.text.TextUtils;
import com.alipay.android.app.IAppConfig;
import com.alipay.android.app.sys.GlobalContext;
import com.alipay.android.lib.plusin.protocol.ProtocolType;
import org.apache.http.Header;
import org.json.JSONObject;

public class Response
{
  Envelope a = null;
  Header[] b = null;
  private int c = 0;
  private String d = "";
  private long e = 0L;
  private String f = "";
  private String g = null;
  private String h = null;
  private JSONObject i = null;
  private String j;
  private ProtocolType k = GlobalContext.a().c().s();
  private boolean l = true;
  private boolean m = true;

  private String m()
  {
    try
    {
      String str2 = "resultStatus={" + this.f + "}";
      String str3 = str2 + ";";
      String str4 = str3 + "memo={" + this.h + "}";
      String str5 = str4 + ";";
      Object localObject = str5 + "result={" + this.g + "}";
      if (this.g.contains("success=\"true\""))
      {
        int n = this.g.indexOf("call_back_url");
        if (n != -1)
        {
          int i1 = this.g.indexOf("\"", n);
          String str6 = this.g;
          int i2 = i1 + 1;
          int i3 = str6.indexOf("\"", i2);
          if ((i2 > 0) && (i3 > i2))
          {
            String str7 = this.g.substring(i2, i3);
            String str8 = (String)localObject + ";callBackUrl={" + str7 + "}";
            localObject = str8;
          }
        }
      }
      return localObject;
    }
    catch (Exception localException)
    {
      String str1 = this.g;
      localException.printStackTrace();
      return str1;
    }
  }

  public final Envelope a()
  {
    return this.a;
  }

  public final void a(int paramInt)
  {
    this.c = paramInt;
  }

  public final void a(long paramLong)
  {
    this.e = paramLong;
  }

  public final void a(Envelope paramEnvelope)
  {
    this.a = paramEnvelope;
  }

  public final void a(ProtocolType paramProtocolType)
  {
    this.k = paramProtocolType;
  }

  public final void a(String paramString)
  {
    this.d = paramString;
  }

  public final void a(JSONObject paramJSONObject)
  {
    this.i = paramJSONObject;
  }

  public final void a(boolean paramBoolean)
  {
    this.l = paramBoolean;
  }

  public final void b()
  {
    this.m = false;
  }

  public final void b(String paramString)
  {
    this.f = paramString;
  }

  public final void c(String paramString)
  {
    this.g = paramString;
  }

  public final boolean c()
  {
    return this.m;
  }

  public final void d(String paramString)
  {
    this.h = paramString;
  }

  public final boolean d()
  {
    return this.l;
  }

  public final JSONObject e()
  {
    return this.i;
  }

  public final void e(String paramString)
  {
    this.j = paramString;
  }

  public final long f()
  {
    return this.e;
  }

  public final boolean g()
  {
    return !TextUtils.equals(this.f, "0");
  }

  public final String h()
  {
    return m();
  }

  public final String i()
  {
    return this.j;
  }

  public final int j()
  {
    return this.c;
  }

  public final String k()
  {
    return this.d;
  }

  public final ProtocolType l()
  {
    return this.k;
  }

  public String toString()
  {
    String str = this.a.toString() + ", code = " + this.c + ", errorMsg = " + this.d + ", timeStamp = " + this.e + ", endCode = " + this.f;
    if (this.i != null)
      str = str + ", reflectedData = " + this.i;
    return str;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.net.Response
 * JD-Core Version:    0.6.2
 */