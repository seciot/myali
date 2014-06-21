package com.alipay.mobile.appstoreapp.ui;

import android.os.AsyncTask;
import com.alipay.mobile.appstoreapp.biz.AppsDataBiz;
import com.alipay.mobile.appstoreapp.common.Page;
import com.alipay.mobile.appstoreapp.common.QueryResult;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.framework.service.ext.openplatform.AppStoreException;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

final class q extends AsyncTask<String, String, QueryResult<Page<App>>>
{
  q(FastLoginAppActivity paramFastLoginAppActivity)
  {
  }

  private QueryResult<Page<App>> a()
  {
    try
    {
      if (this.a.a)
        FastLoginAppActivity.a(this.a, 2048);
      while (true)
      {
        Page localPage = FastLoginAppActivity.c(this.a).a(FastLoginAppActivity.getBundle(this.a), FastLoginAppActivity.b(this.a));
        if (this.a.a)
          FastLoginAppActivity.getBundleName();
        return new QueryResult(1000, "", localPage);
        FastLoginAppActivity.a(this.a, 20);
      }
    }
    catch (AppStoreException localAppStoreException)
    {
      FastLoginAppActivity.getInitLevel();
      localAppStoreException.getMessage();
      return new QueryResult(localAppStoreException.getResultStatus(), localAppStoreException.getMemo(), null);
    }
    catch (RpcException localRpcException)
    {
      FastLoginAppActivity.getInitLevel();
      if ((localRpcException.getCode() == 7) || (localRpcException.getCode() == 2) || (localRpcException.getCode() == 4))
        return new QueryResult(9999, "网络异常", null);
      this.a.runOnUiThread(new r(this));
      throw localRpcException;
    }
    catch (Exception localException)
    {
      FastLoginAppActivity.getInitLevel();
      localException.getMessage();
    }
    return new QueryResult(9999, "系统发生异常", null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.q
 * JD-Core Version:    0.6.2
 */