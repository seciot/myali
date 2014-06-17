package com.alipay.mobile.alipassapp.ui.common;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.LocalBroadcastManager;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.discoverycommon.api.service.AlipassPayBridgeService;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import org.json.JSONObject;

public class ae extends AlipassPayBridgeService
{
  public static String a = "AlipassPayBridgeServiceImpl";
  public static String b = "com.alipay.longlink.TRANSFER_10000014";
  private Boolean c = Boolean.valueOf(false);
  private boolean d;
  private int e = 0;
  private Handler f = new Handler(Looper.getMainLooper());
  private BroadcastReceiver g = new ah(this);

  private void a(JSONObject paramJSONObject, String paramString)
  {
    this.f.post(new ag(this, paramJSONObject, paramString));
  }

  private static AuthService c()
  {
    return (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
  }

  private static LocalBroadcastManager d()
  {
    return LocalBroadcastManager.getInstance(AlipayApplication.getInstance().getMicroApplicationContext().getApplicationContext());
  }

  public void closePayBridge()
  {
    this.d = false;
  }

  protected void onCreate(Bundle paramBundle)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction(b);
    d().registerReceiver(this.g, localIntentFilter);
  }

  protected void onDestroy(Bundle paramBundle)
  {
    this.d = false;
    d().unregisterReceiver(this.g);
  }

  public void startPayBridge(String paramString)
  {
    new StringBuilder("dynamicId").append(paramString).toString();
    if (StringUtils.isBlank(paramString))
      return;
    BackgroundExecutor.execute(new af(this, paramString));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.ae
 * JD-Core Version:    0.6.2
 */