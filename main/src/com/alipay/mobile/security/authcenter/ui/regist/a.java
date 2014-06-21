package com.alipay.mobile.security.authcenter.ui.regist;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.AppLoadException;

final class a
  implements View.OnClickListener
{
  a(PreRegistFragment paramPreRegistFragment)
  {
  }

  public final void onClick(View paramView)
  {
    if (PreRegistFragment.getBundle(this.a) != null)
    {
      PreRegistFragment.getBundle(this.a).a();
      return;
    }
    Bundle localBundle = new Bundle();
    localBundle.putString("registerSource", "registerFromLogin");
    localBundle.putString("registerMobileNum", PreRegistFragment.b(this.a));
    try
    {
      PreRegistFragment.c(this.a).startApp("20000008", "20000009", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      localAppLoadException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.regist.a
 * JD-Core Version:    0.6.2
 */