package com.alipay.mobile.base.engine;

import com.alipay.mobile.common.apkutil.MiscUtils;
import com.alipay.mobile.common.transport.Request;
import com.alipay.mobile.common.transport.Response;
import com.alipay.mobile.common.transport.TransportCallback;
import com.alipay.mobile.quinox.engine.ApkEngineManager;
import java.io.File;

final class a
  implements TransportCallback
{
  a(ApkEngineUpdater paramApkEngineUpdater, String paramString, ApkEngineManager paramApkEngineManager)
  {
  }

  public final void onCancelled(Request paramRequest)
  {
  }

  public final void onFailed(Request paramRequest, int paramInt, String paramString)
  {
  }

  public final void onPostExecute(Request paramRequest, Response paramResponse)
  {
    if (MiscUtils.verifyMD5AndLoadCertificates(this.a) != null)
      this.b.updateEngine(this.a);
    new File(this.a).delete();
  }

  public final void onPreExecute(Request paramRequest)
  {
  }

  public final void onProgressUpdate(Request paramRequest, double paramDouble)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.base.engine.a
 * JD-Core Version:    0.6.2
 */