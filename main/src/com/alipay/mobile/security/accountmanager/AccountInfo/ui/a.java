package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class a
  implements View.OnClickListener
{
  a(AccountInfoActivity paramAccountInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(this.a, SecurityAccountQrCodeActivity_.class);
    AccountInfoActivity.b(this.a).getMicroApplicationContext().startActivity(AccountInfoActivity.getBundle(this.a), localIntent);
    AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, "-", "-", "20000070", "-", "-", "accountInfoIndex", "qrcode");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.a
 * JD-Core Version:    0.6.2
 */