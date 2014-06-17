package com.alipay.mobile.alipassapp.ui;

import com.alipay.mobile.framework.service.ext.security.BindPhoneCallBack;

final class bs
  implements BindPhoneCallBack
{
  bs(br parambr)
  {
  }

  public final void BindPhoneResult(boolean paramBoolean)
  {
    if (paramBoolean)
      this.a.a.c.a(this.a.a.a, this.a.a.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.bs
 * JD-Core Version:    0.6.2
 */