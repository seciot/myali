package com.alipay.mobile.security.authcenter.ui.sms;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;

final class i
  implements View.OnClickListener
{
  i(SMSSendFragment paramSMSSendFragment, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.matches("1\\d{10}"))
    {
      this.b.d(this.a);
      return;
    }
    SMSSendFragment.getBundle(this.b).toast("手机号格式不正确", 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.sms.i
 * JD-Core Version:    0.6.2
 */