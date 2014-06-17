package com.alipay.mobile.framework.service.common.impl;

import android.os.Bundle;
import com.alipay.mobile.common.transport.Request;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.http.HttpManager;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.common.HttpTransportSevice;
import java.util.concurrent.Future;

public class HttpTransportSeviceImpl extends HttpTransportSevice
{
  private HttpManager a = new HttpManager(AlipayApplication.getInstance());

  public Future<Response> execute(Request paramRequest)
  {
    return this.a.execute(paramRequest);
  }

  protected void onCreate(Bundle paramBundle)
  {
  }

  protected void onDestroy(Bundle paramBundle)
  {
    this.a.close();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.service.common.impl.HttpTransportSeviceImpl
 * JD-Core Version:    0.6.2
 */