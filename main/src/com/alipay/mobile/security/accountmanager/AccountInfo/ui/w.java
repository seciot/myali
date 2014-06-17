package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.common.helper.ReadSettingServerUrl;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class w
  implements View.OnClickListener
{
  w(SecurityBindPhoneActivity paramSecurityBindPhoneActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("URL", ReadSettingServerUrl.getPoliceCenterUrl(AlipayApplication.getInstance()) + "?serviceId=wallet_0003&context=changeBindPhoneNum");
    SecurityBindPhoneActivity.a(this.a).getMicroApplicationContext().startApp(null, "20000111", localBundle);
    AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, "-", "-", "20000070", "-", "-", "bindingMobileView", "changeMobile");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.w
 * JD-Core Version:    0.6.2
 */