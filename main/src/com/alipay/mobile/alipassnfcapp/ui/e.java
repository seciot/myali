package com.alipay.mobile.alipassnfcapp.ui;

import com.alipay.mobile.framework.service.phoneblacklist.PhoneBlackListCallBack;
import com.alipay.sonicwavenfc.SonicWaveNFC;

final class e
  implements PhoneBlackListCallBack
{
  e(AlipassSendSoundViewController paramAlipassSendSoundViewController)
  {
  }

  public final void callBack(String paramString)
  {
    if (paramString != null)
    {
      AlipassSendSoundViewController.access$1000(this.a).setPhoneConfig(paramString);
      if (!AlipassSendSoundViewController.access$1000(this.a).isReceiverSoincWave())
      {
        this.a.isSupportReceiveSound = false;
        AlipassSendSoundViewController.access$1000(this.a).stopReceiveData();
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassnfcapp.ui.e
 * JD-Core Version:    0.6.2
 */