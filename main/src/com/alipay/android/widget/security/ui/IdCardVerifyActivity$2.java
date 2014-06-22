package com.alipay.android.widget.security.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import com.alipay.android.widget.security.a.d;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.service.ext.security.BindPhoneService;

class IdCardVerifyActivity$2
  implements DialogInterface.OnClickListener
{
  IdCardVerifyActivity$2(IdCardVerifyActivity paramIdCardVerifyActivity, String paramString)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ("1801".equals(this.a))
      ((BindPhoneService)IdCardVerifyActivity.getBundle(this.b).getExtServiceByInterface(BindPhoneService.class.getName())).bindPhone(this.b);
    do
    {
      return;
      if ("1802".equals(this.a))
        try
        {
          IdCardVerifyActivity.getBundleByComponentName(this.b).startApp(IdCardVerifyActivity.dexopt(this.b).getAppId(), "20000038", null);
          return;
        }
        catch (AppLoadException localAppLoadException)
        {
          localAppLoadException.printStackTrace();
          return;
        }
      if ("1803".equals(this.a))
      {
        IdCardVerifyActivity.d(this.b).getBundle(this.b);
        return;
      }
    }
    while (!"700".equals(this.a));
    Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:95188"));
    this.b.startActivity(localIntent);
    IdCardVerifyActivity.removeBundle(this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.IdCardVerifyActivity.2
 * JD-Core Version:    0.6.2
 */