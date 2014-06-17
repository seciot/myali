package com.alipay.mobile.onsitepay.payee;

import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.service.phoneblacklist.PhoneBlackListCallBack;
import com.alipay.sonicwavenfc.SonicWaveNFC;

final class g
  implements PhoneBlackListCallBack
{
  g(FacePayeeActivity paramFacePayeeActivity)
  {
  }

  public final void callBack(String paramString)
  {
    if (paramString != null)
    {
      new StringBuilder("choseMode phoneBlackList = ").append(paramString).toString();
      FacePayeeActivity.b(this.a).setPhoneConfig(paramString);
      if (!FacePayeeActivity.b(this.a).isReceiverSoincWave())
      {
        FacePayeeActivity.d(this.a);
        FacePayeeActivity.a(this.a, 3);
        this.a.o = true;
        this.a.i.setVisibility(0);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payee.g
 * JD-Core Version:    0.6.2
 */