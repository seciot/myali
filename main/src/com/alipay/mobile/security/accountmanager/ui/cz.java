package com.alipay.mobile.security.accountmanager.ui;

import com.alipay.mobile.commonui.widget.OnSendCallback;
import com.alipay.mobile.commonui.widget.SendResultCallback;

final class cz
  implements OnSendCallback
{
  cz(ModifyPayPwdActivity paramModifyPayPwdActivity)
  {
  }

  public final void onSend(SendResultCallback paramSendResultCallback)
  {
    new Thread(new ModifyPayPwdActivity.a(this.a, 1, (byte)0)).start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.cz
 * JD-Core Version:    0.6.2
 */