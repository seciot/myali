package com.alipay.mobile.alipassapp.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class do
  implements View.OnClickListener
{
  do(MemberCardCurrentListActivity paramMemberCardCurrentListActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.a(null, "invalid", null);
    MemberCardCurrentListActivity.d(this.a).getMicroApplicationContext().startActivity(MemberCardCurrentListActivity.c(this.a), MemberCardPastListActivity.class.getName());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.do
 * JD-Core Version:    0.6.2
 */