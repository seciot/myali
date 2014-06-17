package com.alipay.mobile.onsitepay.payer.sound;

import com.alipay.mobile.framework.service.phoneblacklist.PhoneBlackListCallBack;

final class p
  implements PhoneBlackListCallBack
{
  p(SendSoundViewActivity paramSendSoundViewActivity)
  {
  }

  public final void callBack(String paramString)
  {
    new StringBuilder("phoneBlackList=").append(paramString).toString();
    if (paramString != null)
      this.a.b(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.p
 * JD-Core Version:    0.6.2
 */