package com.alipay.mobile.alipassapp.ui;

import android.os.Handler;
import android.os.Message;

final class fc extends Handler
{
  fc(MemberChargeOffActivity paramMemberChargeOffActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 2001:
    }
    MemberChargeOffActivity.f(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.fc
 * JD-Core Version:    0.6.2
 */