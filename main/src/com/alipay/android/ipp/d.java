package com.alipay.android.ipp;

import android.os.RemoteException;
import android.util.Log;
import com.alipay.android.ipp.binder.aidl.IppInterface;
import org.json.JSONException;
import org.json.JSONObject;

final class d
  implements Runnable
{
  private IppInterface a;
  private String b;

  public d(IppFacade paramIppFacade, IppInterface paramIppInterface, String paramString)
  {
    this.a = paramIppInterface;
    this.b = paramString;
  }

  public final void run()
  {
    try
    {
      Log.i(IppFacade.access$0(), "IppFacade:invokCallBack! justHasBeenKilled:" + IppFacade.access$5(this.c));
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("justHasBeenKilled", IppFacade.access$5(this.c));
      this.a.invoke(localJSONObject.toString());
      IppFacade.access$6(this.c, "false");
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.i(IppFacade.access$0(), "BrotherService has just been killed! To ReStart BrotherService right away!");
      IppFacade.access$6(this.c, "true");
      new Thread(new e(this.c, this.b)).start();
      localRemoteException.printStackTrace();
      return;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.ipp.d
 * JD-Core Version:    0.6.2
 */