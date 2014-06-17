package android.taobao.service.appdevice.net.mtop;

import android.content.Context;
import android.taobao.service.appdevice.net.async.RequestParams;
import android.taobao.service.appdevice.net.async.SyncHttpClient;
import android.text.TextUtils;

public class MtopSyncClientV3 extends SyncHttpClient
  implements IMtopSynClient
{
  private String a;
  private String b;
  private String c;

  public Result getV3(Context paramContext, MtopRequest paramMtopRequest)
  {
    try
    {
      MtopRequestHelper.checkAppKeyAndAppSecret(paramMtopRequest, this.a, this.b);
      RequestParams localRequestParams = MtopRequestHelper.getUrlWithRequestParams(paramContext, paramMtopRequest);
      String str = get(paramContext, this.c, localRequestParams);
      if (TextUtils.isEmpty(str))
      {
        Result localResult2 = new Result();
        localResult2.setSuccess(false);
        localResult2.setRetDesc("request result is null");
        return localResult2;
      }
      Result localResult3 = MtopResponseHelper.parse(str);
      return localResult3;
    }
    catch (Exception localException)
    {
      Result localResult1 = new Result();
      localResult1.setSuccess(false);
      localResult1.setRetDesc(localException.getMessage());
      return localResult1;
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
 * Qualified Name:     android.taobao.service.appdevice.net.mtop.MtopSyncClientV3
 * JD-Core Version:    0.6.2
 */