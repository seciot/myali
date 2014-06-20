package com.alipay.mobile.security.accountmanager.ui;

import android.app.AlertDialog;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.SMSService;

final class u
  implements View.OnClickListener
{
  u(BindPhoneActivity paramBindPhoneActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (BindPhoneActivity.v(this.a).isShowing())
      BindPhoneActivity.v(this.a).cancel();
    SMSService localSMSService = (SMSService)BindPhoneActivity.w(this.a).getMicroApplicationContext().getExtServiceByInterface(SMSService.class.getName());
    if (localSMSService != null)
    {
      BindPhoneActivity.c(this.a, Boolean.valueOf(localSMSService.isCanUseSim()));
      if (!BindPhoneActivity.x(this.a).booleanValue())
      {
        BindPhoneActivity.r(this.a);
        return;
      }
      this.a.showProgressDialog(this.a.getResources().getString(R.string.aB), true, this.a.t);
      new Thread(new BindPhoneActivity.b(this.a, 1, (byte)0)).start();
      return;
    }
    this.a.a(this.a.getResources().getString(R.string.BundlesManagerImpl));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.u
 * JD-Core Version:    0.6.2
 */