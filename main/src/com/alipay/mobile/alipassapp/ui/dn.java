package com.alipay.mobile.alipassapp.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class dn
  implements View.OnClickListener
{
  dn(MemberCardCurrentListActivity paramMemberCardCurrentListActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.a(null, "getCard", null);
    Intent localIntent = new Intent(this.a, MemberCardObtainableListActivity.class);
    MemberCardCurrentListActivity.b(this.a).getMicroApplicationContext().startActivityForResult(MemberCardCurrentListActivity.getBundle(this.a), localIntent, 1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.dn
 * JD-Core Version:    0.6.2
 */