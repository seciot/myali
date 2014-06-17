package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.BindPhoneService;

class SecurityExaminationActivity$9$1
  implements DialogInterface.OnClickListener
{
  SecurityExaminationActivity$9$1(SecurityExaminationActivity.9 param9)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ((BindPhoneService)SecurityExaminationActivity.w(this.a.a).getMicroApplicationContext().getExtServiceByInterface(BindPhoneService.class.getName())).bindPhone(this.a.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityExaminationActivity.9.1
 * JD-Core Version:    0.6.2
 */