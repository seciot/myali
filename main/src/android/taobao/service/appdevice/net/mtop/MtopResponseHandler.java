package android.taobao.service.appdevice.net.mtop;

import android.taobao.service.appdevice.net.async.AsyncHttpResponseHandler;

public abstract class MtopResponseHandler extends AsyncHttpResponseHandler
{
  public static final String FAIL = "FAIL";
  public static final String SUCCESS = "SUCCESS";

  protected void handleSuccessMessage(String paramString)
  {
    try
    {
      Result localResult = MtopResponseHelper.parse(paramString);
      if (localResult.isSuccess())
      {
        onSuccess(localResult.getData());
        return;
      }
      onFailure(localResult.getRetCode(), localResult.getRetDesc());
      return;
    }
    catch (Exception localException)
    {
      onFailure(localException, paramString);
    }
  }

  public void onFailure(String paramString1, String paramString2)
  {
  }

  public void onFailure(Throwable paramThrowable, String paramString)
  {
    onFailure("ERROR_NETWORK", paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.mtop.MtopResponseHandler
 * JD-Core Version:    0.6.2
 */