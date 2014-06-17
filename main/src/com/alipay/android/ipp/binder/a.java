package com.alipay.android.ipp.binder;

import com.alipay.android.ipp.binder.aidl.IppInterface.Stub;
import org.json.JSONException;
import org.json.JSONObject;

final class a extends IppInterface.Stub
{
  a(IppService paramIppService)
  {
  }

  public final void invoke(String paramString)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      IppService.access$1(this.a, "invoke()justHasBeenKilled:" + localJSONObject.getString("justHasBeenKilled"));
      IppService.access$2(this.a, localJSONObject.getString("justHasBeenKilled"));
      while (true)
        Thread.sleep(9223372036854775807L);
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.ipp.binder.a
 * JD-Core Version:    0.6.2
 */