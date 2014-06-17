package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.alipay.mobile.framework.service.ext.security.TaobaoBindingService;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

class NickNameImplementationActivity$1
  implements DialogInterface.OnClickListener
{
  NickNameImplementationActivity$1(NickNameImplementationActivity paramNickNameImplementationActivity, MobileSecurityResult paramMobileSecurityResult)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    NickNameImplementationActivity.a(this.b).bindingFinish(this.a, false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.NickNameImplementationActivity.1
 * JD-Core Version:    0.6.2
 */