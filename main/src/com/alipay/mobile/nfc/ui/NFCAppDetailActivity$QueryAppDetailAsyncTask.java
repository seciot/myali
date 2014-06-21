package com.alipay.mobile.nfc.ui;

import android.os.AsyncTask;
import com.alipay.mobile.framework.service.ext.openplatform.AppStoreException;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;

class NFCAppDetailActivity$QueryAppDetailAsyncTask extends AsyncTask<String, Integer, App>
{
  private NFCAppDetailActivity$QueryAppDetailAsyncTask(NFCAppDetailActivity paramNFCAppDetailActivity)
  {
  }

  private App a(String[] paramArrayOfString)
  {
    String str = paramArrayOfString[0];
    try
    {
      App localApp = NFCAppDetailActivity.getBundle(this.a).syncOneAppInfo(str);
      return localApp;
    }
    catch (AppStoreException localAppStoreException)
    {
      new StringBuilder("syncOneAppInfo error:").append(localAppStoreException.getMessage()).toString();
    }
    return null;
  }

  protected void onPreExecute()
  {
    this.a.showProgressDialog("正在获取数据");
    super.onPreExecute();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCAppDetailActivity.QueryAppDetailAsyncTask
 * JD-Core Version:    0.6.2
 */