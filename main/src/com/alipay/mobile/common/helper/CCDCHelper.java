package com.alipay.mobile.common.helper;

import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.HttpTransportSevice;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import org.json.JSONException;
import org.json.JSONObject;

public class CCDCHelper
{
  private static JSONObject a(String paramString)
  {
    Future localFuture = ((HttpTransportSevice)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(HttpTransportSevice.class.getName())).execute(new HttpUrlRequest(paramString));
    try
    {
      Response localResponse = (Response)localFuture.get();
      if (localResponse == null)
        return null;
      JSONObject localJSONObject = new JSONObject(new String(localResponse.getResData()));
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      localJSONException.getMessage();
      return null;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.getMessage();
    }
    catch (ExecutionException localExecutionException)
    {
      while (true)
        localExecutionException.getMessage();
    }
  }

  public static JSONObject getCardIndex(String paramString)
  {
    String str = ReadSettingServerUrl.getCcdcURL(AlipayApplication.getInstance());
    if (str.endsWith("/"))
      str = str + "cacheWapCardInfo.json";
    while (true)
    {
      return a(str + "?_input_charset=utf-8&cardBinCheck=true&cardNo=" + paramString);
      if (str.endsWith("json"))
        str = str.substring(0, str.lastIndexOf("/")) + "/cacheWapCardInfo.json";
    }
  }

  public static JSONObject getCardInfo(String paramString)
  {
    String str = ReadSettingServerUrl.getCcdcURL(AlipayApplication.getInstance());
    if (str.endsWith("/"))
      str = str + "validateAndCacheCardInfo.json";
    while (true)
    {
      return a(str + "?_input_charset=utf-8&cardBinCheck=true&cardNo=" + paramString);
      if (str.endsWith("json"))
        str = str.substring(0, str.lastIndexOf("/")) + "/validateAndCacheCardInfo.json";
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.helper.CCDCHelper
 * JD-Core Version:    0.6.2
 */