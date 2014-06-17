package com.alipay.android.app.net;

import android.os.Build;
import android.text.TextUtils;
import com.alipay.android.app.data.InteractionData;
import com.alipay.android.app.util.JsonUtils;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.protocol.ProtocolType;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

public class Request
{
  private Envelope a;
  private JSONObject b;
  private JSONObject c;
  private long d;
  private WeakReference e = null;
  private ProtocolType f;
  private boolean g = true;
  private boolean h = true;

  public Request(Envelope paramEnvelope, JSONObject paramJSONObject, InteractionData paramInteractionData, ProtocolType paramProtocolType)
  {
    this(paramEnvelope, paramJSONObject, null, paramInteractionData, paramProtocolType);
  }

  public Request(Envelope paramEnvelope, JSONObject paramJSONObject1, JSONObject paramJSONObject2, InteractionData paramInteractionData, ProtocolType paramProtocolType)
  {
    this.a = paramEnvelope;
    this.b = paramJSONObject1;
    this.c = paramJSONObject2;
    this.e = new WeakReference(paramInteractionData);
    this.f = paramProtocolType;
  }

  public final String a()
  {
    return this.a.b();
  }

  public final JSONObject a(String paramString)
  {
    JSONObject localJSONObject1 = new JSONObject();
    while (true)
    {
      JSONObject localJSONObject2;
      try
      {
        localJSONObject2 = new JSONObject();
        localJSONObject2.put("device", Build.MODEL);
        if (this.f == ProtocolType.a)
        {
          JSONObject localJSONObject3 = new JSONObject();
          localJSONObject2.put("params", localJSONObject3);
          localJSONObject2.put("namespace", this.a.c());
          localJSONObject2.put("api_name", this.a.d());
          localJSONObject2.put("api_version", this.a.e());
          this.b = JsonUtils.a(this.b, this.c);
          localJSONObject3.put("req_data", JsonUtils.a(paramString, this.b.toString()));
          localJSONObject1.put("data", localJSONObject2);
          return localJSONObject1;
        }
        JSONObject localJSONObject4 = new JSONObject();
        localJSONObject2 = JsonUtils.a(localJSONObject2, this.c);
        localJSONObject2.put("namespace", this.a.c());
        localJSONObject2.put("api_name", this.a.a());
        localJSONObject2.put("api_version", this.a.e());
        if (this.b == null)
          this.b = new JSONObject();
        this.b.put("action", localJSONObject4);
        String str = this.a.d();
        if (!TextUtils.isEmpty(str))
        {
          String[] arrayOfString = str.split("/");
          localJSONObject4.put("type", arrayOfString[1]);
          if (arrayOfString.length > 1)
            localJSONObject4.put("method", arrayOfString[2]);
        }
        this.b.put("gzip", this.h);
        if (this.g)
        {
          JSONObject localJSONObject5 = new JSONObject();
          localJSONObject5.put("req_data", JsonUtils.a(paramString, this.b.toString()));
          localJSONObject2.put("params", localJSONObject5);
          continue;
        }
      }
      catch (Exception localException)
      {
        LogUtils.a(localException);
        return localJSONObject1;
      }
      localJSONObject2.put("params", this.b);
    }
  }

  public final void a(InteractionData paramInteractionData)
  {
    this.e = new WeakReference(paramInteractionData);
  }

  public final void a(JSONObject paramJSONObject)
  {
    this.c = paramJSONObject;
  }

  public final void a(boolean paramBoolean)
  {
    this.h = paramBoolean;
  }

  public final InteractionData b()
  {
    return (InteractionData)this.e.get();
  }

  public final void b(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public final boolean c()
  {
    return this.g;
  }

  public final ProtocolType d()
  {
    return this.f;
  }

  public final Envelope e()
  {
    return this.a;
  }

  public String toString()
  {
    return this.a.toString() + ", requestData = " + JsonUtils.a(this.b, this.c) + ", timeStamp = " + this.d;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.net.Request
 * JD-Core Version:    0.6.2
 */