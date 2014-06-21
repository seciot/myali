package com.alipay.mobile.security.accountmanager.ui;

import com.alipay.mobile.commonui.widget.OnSendCallback;
import com.alipay.mobile.commonui.widget.SendResultCallback;

final class x
  implements OnSendCallback
{
  x(BindPhoneActivity paramBindPhoneActivity)
  {
  }

  public final void onSend(SendResultCallback paramSendResultCallback)
  {
    BindPhoneActivity.v(this.a, Boolean.valueOf(false));
    new Thread(new BindPhoneActivity.b(this.a, 2, (byte)0)).start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.x
 * JD-Core Version:    0.6.2
 */