package com.alipay.mobile.alipassapp.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.BindPhoneService;

final class br
  implements DialogInterface.OnClickListener
{
  br(bq parambq)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (AlipassQueryCardActivity.c(this.a.c) == null)
      AlipassQueryCardActivity.a(this.a.c, (BindPhoneService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(BindPhoneService.class.getName()));
    if (AlipassQueryCardActivity.c(this.a.c) == null)
      return;
    AlipassQueryCardActivity.c(this.a.c).bindPhone(new bs(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.br
 * JD-Core Version:    0.6.2
 */