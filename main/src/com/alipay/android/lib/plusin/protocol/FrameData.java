package com.alipay.android.lib.plusin.protocol;

import com.alipay.android.app.net.Request;
import com.alipay.android.app.net.Response;
import com.alipay.android.app.sys.IDispose;
import org.json.JSONObject;

public class FrameData
  implements IDispose
{
  private Request a;
  private Response b;
  private int c;
  private JSONObject d;

  public FrameData()
  {
  }

  public FrameData(Request paramRequest, Response paramResponse)
  {
    this.a = paramRequest;
    this.b = paramResponse;
  }

  public void a(JSONObject paramJSONObject)
  {
    this.d = paramJSONObject;
  }

  public final void b(String paramString)
  {
    try
    {
      this.c = Integer.valueOf(paramString).intValue();
      return;
    }
    catch (Exception localException)
    {
      this.c = 0;
    }
  }

  public void dispose()
  {
    this.a = null;
    this.b = null;
    this.d = null;
  }

  public final Request h()
  {
    return this.a;
  }

  public final Response i()
  {
    return this.b;
  }

  public final int j()
  {
    return this.c;
  }

  public final JSONObject k()
  {
    return this.d;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.lib.plusin.protocol.FrameData
 * JD-Core Version:    0.6.2
 */