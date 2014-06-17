package com.alipay.mobile.deviceAuthorization.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.BindPhoneCallBack;
import com.alipay.mobile.framework.service.ext.security.BindPhoneService;

final class s
  implements DialogInterface.OnClickListener
{
  s(BaseAuthActivity paramBaseAuthActivity, BindPhoneCallBack paramBindPhoneCallBack)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((BindPhoneService)BaseAuthActivity.y(this.b).getMicroApplicationContext().getExtServiceByInterface(BindPhoneService.class.getName())).bindPhone(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.s
 * JD-Core Version:    0.6.2
 */