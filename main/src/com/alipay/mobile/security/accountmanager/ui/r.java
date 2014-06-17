package com.alipay.mobile.security.accountmanager.ui;

import android.content.res.Resources;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.framework.service.ext.security.SMSSendResultCallBack;
import java.util.Timer;

final class r
  implements SMSSendResultCallBack
{
  r(BindPhoneActivity paramBindPhoneActivity)
  {
  }

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.a.dismissProgressDialog();
      if (!BindPhoneActivity.p(this.a).booleanValue())
      {
        this.a.showProgressDialog(this.a.getResources().getString(R.string.aG), false, this.a.t);
        BindPhoneActivity.a(this.a, new Timer());
        BindPhoneActivity.q(this.a).scheduleAtFixedRate(new BindPhoneActivity.a(this.a, (byte)0), 10000L, 5000L);
        return;
      }
      this.a.dismissProgressDialog();
      BindPhoneActivity.r(this.a);
      this.a.h.setEnabled(true);
      return;
    }
    this.a.dismissProgressDialog();
    BindPhoneActivity.r(this.a);
    this.a.h.setEnabled(true);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.r
 * JD-Core Version:    0.6.2
 */