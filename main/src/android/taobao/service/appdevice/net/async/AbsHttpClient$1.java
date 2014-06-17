package android.taobao.service.appdevice.net.async;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.http.HttpRequest;
import org.apache.http.HttpRequestInterceptor;
import org.apache.http.protocol.HttpContext;

class AbsHttpClient$1
  implements HttpRequestInterceptor
{
  AbsHttpClient$1(AbsHttpClient paramAbsHttpClient)
  {
  }

  public void process(HttpRequest paramHttpRequest, HttpContext paramHttpContext)
  {
    if (!paramHttpRequest.containsHeader("Accept-Encoding"))
      paramHttpRequest.addHeader("Accept-Encoding", "gzip");
    Iterator localIterator = AbsHttpClient.access$000(this.this$0).keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      paramHttpRequest.addHeader(str, (String)AbsHttpClient.access$000(this.this$0).get(str));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.taobao.service.appdevice.net.async.AbsHttpClient.1
 * JD-Core Version:    0.6.2
 */