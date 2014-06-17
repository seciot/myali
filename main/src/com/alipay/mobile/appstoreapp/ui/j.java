package com.alipay.mobile.appstoreapp.ui;

import android.os.AsyncTask;
import com.alipay.mobile.framework.service.ext.openplatform.AppStoreException;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;

final class j extends AsyncTask<String, Integer, App>
{
  private j(AppDetailActivity paramAppDetailActivity)
  {
  }

  private App a(String[] paramArrayOfString)
  {
    String str = paramArrayOfString[0];
    try
    {
      App localApp = AppDetailActivity.a(this.a).syncOneAppInfo(str);
      return localApp;
    }
    catch (AppStoreException localAppStoreException)
    {
      new StringBuilder("syncOneAppInfo error:").append(localAppStoreException.getMessage()).toString();
    }
    return null;
  }

  protected final void onPreExecute()
  {
    this.a.showProgressDialog("正在获取数据");
    super.onPreExecute();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.ui.j
 * JD-Core Version:    0.6.2
 */