package com.alipay.android.widget.security.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

class SecurityCertifiedResultActivity$1
  implements View.OnClickListener
{
  SecurityCertifiedResultActivity$1(SecurityCertifiedResultActivity paramSecurityCertifiedResultActivity)
  {
  }

  public void onClick(View paramView)
  {
    SecurityCertifiedResultActivity.getBundle(SecurityCertifiedResultActivity.getBundle(this.a));
    this.a.finish();
    SecurityCertifiedResultActivity.d(this.a).getMicroApplicationContext().finishApp(SecurityCertifiedResultActivity.dexopt(this.a).getAppId(), SecurityCertifiedResultActivity.getBundleByComponentName(this.a).getAppId(), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityCertifiedResultActivity.1
 * JD-Core Version:    0.6.2
 */