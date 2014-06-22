package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class l
  implements View.OnClickListener
{
  l(SecurityAccountQrCodeActivity paramSecurityAccountQrCodeActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a, ShareSavePicThireBtnActivity.class);
    SecurityAccountQrCodeActivity.getBundleByComponentName(this.a).getMicroApplicationContext().startActivityForResult(SecurityAccountQrCodeActivity.b(this.a), localIntent, 4370);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.l
 * JD-Core Version:    0.6.2
 */