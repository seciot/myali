package com.alipay.android.app.data;

import com.alipay.android.app.net.Envelope;
import com.alipay.android.app.net.Request;
import com.alipay.android.app.net.Response;
import com.alipay.android.app.script.INetworkScriptable;
import com.alipay.android.app.util.LogUtils;
import com.alipay.android.lib.plusin.protocol.ProtocolType;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

final class f
  implements INetworkScriptable
{
  private WeakReference a;
  private WeakReference b;
  private WeakReference c;

  protected f(DataProcessor paramDataProcessor, InteractionData paramInteractionData)
  {
    this.a = new WeakReference(paramDataProcessor);
    this.c = new WeakReference(paramInteractionData);
  }

  private Request a(String paramString1, String paramString2, String paramString3, String paramString4, String[] paramArrayOfString)
  {
    Envelope localEnvelope = new Envelope();
    localEnvelope.d(paramString2);
    localEnvelope.e(paramString3);
    localEnvelope.c(paramString1);
    localEnvelope.b(paramString4);
    JSONObject localJSONObject = new JSONObject();
    int i = 0;
    while (true)
      if (i < paramArrayOfString.length)
        try
        {
          localJSONObject.put(paramArrayOfString[i], paramArrayOfString[(i + 1)]);
          i += 2;
        }
        catch (JSONException localJSONException)
        {
          while (true)
            LogUtils.a(localJSONException);
        }
    return new Request(localEnvelope, localJSONObject, (InteractionData)this.c.get(), ProtocolType.a);
  }

  public final void a(ValidatedFrameData paramValidatedFrameData)
  {
    this.b = new WeakReference(paramValidatedFrameData);
  }

  public final void request(String paramString1, String paramString2, String paramString3, String paramString4, String[] paramArrayOfString)
  {
    if ((paramArrayOfString != null) && (paramArrayOfString.length % 2 == 0))
    {
      Request localRequest = a(paramString1, paramString2, paramString3, paramString4, paramArrayOfString);
      Response localResponse = ((ValidatedFrameData)this.b.get()).e();
      if ((localResponse != null) && (localResponse.e() != null))
        localRequest.a(localResponse.e());
      localRequest.a((InteractionData)this.c.get());
      ((DataProcessor)this.a.get()).a(localRequest);
    }
  }

  public final void send(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String[] paramArrayOfString)
  {
    new Thread(new g(this, paramArrayOfString, paramString2, paramString3, paramString4, paramString5, paramString1)).start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.data.f
 * JD-Core Version:    0.6.2
 */