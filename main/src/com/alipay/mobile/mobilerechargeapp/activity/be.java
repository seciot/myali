package com.alipay.mobile.mobilerechargeapp.activity;

import android.os.Bundle;
import com.alipay.mobile.framework.service.ext.security.AuthService;

final class be extends Thread
{
  be(MobileRechargeActivity paramMobileRechargeActivity)
  {
  }

  public final void run()
  {
    if (MobileRechargeActivity.d(this.a).isLogin())
      return;
    boolean bool = MobileRechargeActivity.d(this.a).auth(new Bundle());
    new StringBuilder("login success:").append(bool).toString();
    MobileRechargeActivity.v(this.a, bool);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.be
 * JD-Core Version:    0.6.2
 */