package com.alipay.mobile.security.accountmanager.ui;

import com.alipay.mobile.commonui.widget.OnSendCallback;
import com.alipay.mobile.commonui.widget.SendResultCallback;

final class cj
  implements OnSendCallback
{
  cj(ModifyLoginPwdActivity paramModifyLoginPwdActivity)
  {
  }

  public final void onSend(SendResultCallback paramSendResultCallback)
  {
    new Thread(new ModifyLoginPwdActivity.a(this.a, 1, (byte)0)).start();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.cj
 * JD-Core Version:    0.6.2
 */