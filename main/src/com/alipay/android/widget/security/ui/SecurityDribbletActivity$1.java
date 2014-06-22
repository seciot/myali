package com.alipay.android.widget.security.ui;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobilesecurity.core.model.mainpage.freepwdswitch.QueryFreePwdSwitchRes;
import com.alipay.mobilesecurity.core.model.mainpage.freepwdswitch.SetFreePwdSwitchRes;

class SecurityDribbletActivity$1 extends Handler
{
  SecurityDribbletActivity$1(SecurityDribbletActivity paramSecurityDribbletActivity)
  {
  }

  public void handleMessage(Message paramMessage)
  {
    Bundle localBundle = paramMessage.getData();
    switch (paramMessage.what)
    {
    default:
      return;
    case 0:
      JSON.parseObject(localBundle.get("rs").toString(), SetFreePwdSwitchRes.class);
      this.a.b.setText(R.string.bt);
      SecurityDribbletActivity.getBundle(this.a);
      return;
    case 1:
      this.a.dismissProgressDialog();
      SetFreePwdSwitchRes localSetFreePwdSwitchRes2 = (SetFreePwdSwitchRes)JSON.parseObject(localBundle.get("rs").toString(), SetFreePwdSwitchRes.class);
      this.a.b.setText(R.string.bt);
      SecurityDribbletActivity.e(this.a, localSetFreePwdSwitchRes2, true);
      return;
    case 2:
      this.a.dismissProgressDialog();
      SetFreePwdSwitchRes localSetFreePwdSwitchRes1 = (SetFreePwdSwitchRes)JSON.parseObject(localBundle.get("rs").toString(), SetFreePwdSwitchRes.class);
      this.a.b.setText(R.string.bs);
      SecurityDribbletActivity.e(this.a, localSetFreePwdSwitchRes1, false);
      return;
    case 3:
    }
    QueryFreePwdSwitchRes localQueryFreePwdSwitchRes = (QueryFreePwdSwitchRes)JSON.parseObject(localBundle.get("rs").toString(), QueryFreePwdSwitchRes.class);
    if (localQueryFreePwdSwitchRes != null)
      SecurityDribbletActivity.dexopt(this.a).setNoPayPwd(localQueryFreePwdSwitchRes.isOpen());
    SecurityDribbletActivity.e(this.a, localQueryFreePwdSwitchRes, SecurityDribbletActivity.dexopt(this.a));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityDribbletActivity.1
 * JD-Core Version:    0.6.2
 */