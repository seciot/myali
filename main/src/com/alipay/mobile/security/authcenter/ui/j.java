package com.alipay.mobile.security.authcenter.ui;

import android.view.View;
import android.view.View.OnClickListener;

final class j
  implements View.OnClickListener
{
  j(CompleteUserInfoActivity paramCompleteUserInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (CompleteUserInfoActivity.getBundle(this.a))
      this.a.stop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.j
 * JD-Core Version:    0.6.2
 */