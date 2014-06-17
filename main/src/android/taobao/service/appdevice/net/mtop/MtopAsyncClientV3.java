package android.taobao.service.appdevice.net.mtop;

import android.content.Context;
import android.taobao.service.appdevice.net.async.AsyncHttpClient;
import android.taobao.service.appdevice.net.async.RequestParams;

public class MtopAsyncClientV3 extends AsyncHttpClient
  implements IMtopAsynClient
{
  private String a;
  private String b;
  private String c;

  public void getV3(Context paramContext, MtopRequest paramMtopRequest, MtopResponseHandler paramMtopResponseHandler)
  {
    try
    {
      MtopRequestHelper.checkAppKeyAndAppSecret(paramMtopRequest, this.a, this.b);
      RequestParams localRequestParams = MtopRequestHelper.getUrlWithRequestParams(paramContext, paramMtopRequest);
      get(paramContext, this.c, localRequestParams, paramMtopResponseHandler);
      return;
    }
    catch (Exception localException)
    {
      paramMtopResponseHandler.onFailure(localException);
    }
  }

  public void setBaseUrl(String paramString)
  {
    this.c = paramString;
  }

  public void setDefaultAppSecret(String paramString)
  {
    this.b = paramString;
  }

  public void setDefaultAppkey(String paramString)
  {
    this.a = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.mtop.MtopAsyncClientV3
 * JD-Core Version:    0.6.2
 */