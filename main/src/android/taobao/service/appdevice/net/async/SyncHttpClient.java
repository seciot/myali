package android.taobao.service.appdevice.net.async;

import android.content.Context;
import android.taobao.service.appdevice.util.LogHelper;
import android.util.Log;
import java.io.IOException;
import java.net.URI;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.BufferedHttpEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

public class SyncHttpClient extends AbsHttpClient
{
  public String get(Context paramContext, String paramString)
  {
    return get(paramContext, paramString, null);
  }

  public String get(Context paramContext, String paramString, RequestParams paramRequestParams)
  {
    HttpGet localHttpGet = new HttpGet(getUrlWithQueryString(paramString, paramRequestParams));
    try
    {
      if (!NetworkHelper.checkNetWork(paramContext))
      {
        Log.e("SyncHttpClient", "network connection error[" + localHttpGet.getURI().toString() + "]");
        throw new RuntimeException("network connection error[" + localHttpGet.getURI().toString() + "]");
      }
    }
    catch (IOException localIOException)
    {
      Log.e("SyncHttpClient", "request url error:[" + paramString + "]", localIOException);
      throw localIOException;
    }
    HttpResponse localHttpResponse = getHttpClient().execute(localHttpGet);
    StatusLine localStatusLine = localHttpResponse.getStatusLine();
    LogHelper.Logd("SyncHttpClient", "request url [" + localHttpGet.getURI().toString() + "]  result code:[" + localStatusLine.getStatusCode() + "]");
    if (localStatusLine.getStatusCode() >= 300)
      return null;
    HttpEntity localHttpEntity = localHttpResponse.getEntity();
    Object localObject = null;
    if (localHttpEntity != null)
    {
      String str = EntityUtils.toString(new BufferedHttpEntity(localHttpEntity), "UTF-8");
      localObject = str;
    }
    return localObject;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.async.SyncHttpClient
 * JD-Core Version:    0.6.2
 */