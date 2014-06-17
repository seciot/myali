package com.alipay.mobile.command.invoke;

import com.alipay.mobile.command.model.Request;
import com.alipay.mobile.command.model.Response;
import com.alipay.mobile.command.rpc.http.HttpManager;
import com.alipay.mobile.command.rpc.http.Transport;
import java.util.concurrent.Future;

final class b
  implements Transport
{
  b(a parama)
  {
  }

  public final Future<Response> execute(Request paramRequest)
  {
    return HttpManager.getInstance().execute(paramRequest, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.invoke.b
 * JD-Core Version:    0.6.2
 */