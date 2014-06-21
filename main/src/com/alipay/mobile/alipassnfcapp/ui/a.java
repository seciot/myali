package com.alipay.mobile.alipassnfcapp.ui;

import android.os.Handler;
import android.os.Message;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.discoverycommon.api.service.AlipassPayBridgeService;

final class a extends Handler
{
  a(AlipassSendDynmicSoundViewController paramAlipassSendDynmicSoundViewController)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    String str = (String)paramMessage.obj;
    if (!StringUtils.isBlank(str))
    {
      str = com.alipay.mobile.alipassnfcapp.a.a.getBundle(str + AlipassSendDynmicSoundViewController.access$000(this.a));
      AlipassSendDynmicSoundViewController.access$100(this.a).startPayBridge(str);
    }
    this.a.getRootController().dismissProgressDialog();
    AlipassSendDynmicSoundViewController.access$200(this.a, str);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.ui.a
 * JD-Core Version:    0.6.2
 */