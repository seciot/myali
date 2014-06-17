package com.alipay.mobile.alipassnfcapp.ui;

import android.os.Bundle;
import android.os.Handler;
import android.widget.Toast;
import com.alipay.mobile.alipassnfcapp.ui.app.AlipassNfcApp;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.discoverycommon.api.service.AlipassPayBridgeService;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;

public class AlipassSendDynmicSoundViewController extends AlipassSendSoundViewController
{
  private AlipassPayBridgeService alipassPayBridgeService;
  private CreateDynamicCodeService createDynamicCodeService;
  private b getCodeRunnable;
  private Handler handler = new a(this);
  private boolean isBackFromHome = false;
  private String passId;

  private void send(String paramString)
  {
    if (!isHeadsetOn(getRootController()))
    {
      if (StringUtils.isBlank(paramString))
        Toast.makeText(getRootController(), "网络无法连接，请点击重试。", 1).show();
    }
    else
      return;
    waveStart();
    sendSoundWave(paramString);
  }

  protected void onCreate()
  {
    super.onCreate();
    wavePause();
    this.passId = ((AlipassNfcApp)this.mApp).getAppBundle().getString("passid");
    this.createDynamicCodeService = ((CreateDynamicCodeService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(CreateDynamicCodeService.class.getName()));
    this.createDynamicCodeService.init(getRootController(), null, 0);
    this.createDynamicCodeService.setPassId(this.passId);
    if (this.alipassPayBridgeService == null)
      this.alipassPayBridgeService = ((AlipassPayBridgeService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AlipassPayBridgeService.class.getName()));
    this.getCodeRunnable = new b(this);
    getRootController().showProgressDialog("");
    new Thread(this.getCodeRunnable).start();
  }

  public void onDestroy()
  {
    this.createDynamicCodeService.onDestroy();
    this.alipassPayBridgeService.closePayBridge();
    super.onDestroy();
  }

  public void onPause()
  {
    this.createDynamicCodeService.onPause();
    this.isBackFromHome = true;
    super.onPause();
  }

  protected void onResume()
  {
    this.createDynamicCodeService.onResume();
    if (this.isBackFromHome)
      wavePause();
  }

  protected void retry()
  {
    getRootController().showProgressDialog("");
    new Thread(this.getCodeRunnable).start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.ui.AlipassSendDynmicSoundViewController
 * JD-Core Version:    0.6.2
 */