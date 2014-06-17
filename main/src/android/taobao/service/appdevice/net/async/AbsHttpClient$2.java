package android.taobao.service.appdevice.net.async;

import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.HttpResponseInterceptor;
import org.apache.http.protocol.HttpContext;

class AbsHttpClient$2
  implements HttpResponseInterceptor
{
  AbsHttpClient$2(AbsHttpClient paramAbsHttpClient)
  {
  }

  public void process(HttpResponse paramHttpResponse, HttpContext paramHttpContext)
  {
    HttpEntity localHttpEntity = paramHttpResponse.getEntity();
    if (localHttpEntity == null);
    while (true)
    {
      return;
      Header localHeader = localHttpEntity.getContentEncoding();
      if (localHeader != null)
      {
        HeaderElement[] arrayOfHeaderElement = localHeader.getElements();
        int i = arrayOfHeaderElement.length;
        for (int j = 0; j < i; j++)
          if (arrayOfHeaderElement[j].getName().equalsIgnoreCase("gzip"))
          {
            paramHttpResponse.setEntity(new AbsHttpClient.InflatingEntity(paramHttpResponse.getEntity()));
            return;
          }
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.async.AbsHttpClient.2
 * JD-Core Version:    0.6.2
 */