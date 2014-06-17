package com.alipay.mobile.deviceAuthorization.ui;

import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.BindPhoneCallBack;

final class r
  implements BindPhoneCallBack
{
  r(BaseAuthActivity paramBaseAuthActivity)
  {
  }

  public final void BindPhoneResult(boolean paramBoolean)
  {
    this.a.d = false;
    BaseAuthActivity.v(this.a);
    if (paramBoolean)
    {
      if (!BaseAuthActivity.w(this.a).equals("Confirming"))
      {
        new BaseAuthActivity.c(this.a, (byte)0).execute(new Void[0]);
        return;
      }
      this.a.a(this.a.a, this.a.b, BaseAuthActivity.o(this.a), this.a.c);
      return;
    }
    BaseAuthActivity.x(this.a).finishApp("20000055", "20000055", null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.r
 * JD-Core Version:    0.6.2
 */