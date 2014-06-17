package com.alipay.mobile.alipassapp.ui;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;

final class dw
  implements View.OnClickListener
{
  dw(MemberCardDetailActivity paramMemberCardDetailActivity)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      this.a.c("question");
      Bundle localBundle = new Bundle();
      localBundle.putString("scode", "app_membership_card");
      MemberCardDetailActivity.i(this.a).getMicroApplicationContext().startApp("20000004", "20000011", localBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      MemberCardDetailActivity.b();
      localAppLoadException.getLocalizedMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.dw
 * JD-Core Version:    0.6.2
 */