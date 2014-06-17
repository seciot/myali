package com.alipay.mobile.mobilerechargeapp.activity;

import android.os.Bundle;
import android.os.Handler;
import com.alipay.mobile.common.helper.ReadSettingServerUrl;
import com.alipay.mobile.common.transport.http.HttpUrlRequest;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.HttpTransportSevice;

public class BalancesWarnCmsActivity extends BaseActivity
{
  protected APTextView a;
  private String b = "BalancesWarnCmsActivity";
  private Handler c = new Handler();

  protected final void a()
  {
    b();
  }

  protected void b()
  {
    String str = ReadSettingServerUrl.getNonsupportCmsUrl(this);
    new StringBuilder("query cms:").append(str).toString();
    HttpTransportSevice localHttpTransportSevice = (HttpTransportSevice)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(HttpTransportSevice.class.getName());
    HttpUrlRequest localHttpUrlRequest = new HttpUrlRequest(str);
    localHttpUrlRequest.setTransportCallback(new i(this));
    localHttpTransportSevice.execute(localHttpUrlRequest);
    new StringBuilder("doGet end:").append(str).toString();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.BalancesWarnCmsActivity
 * JD-Core Version:    0.6.2
 */