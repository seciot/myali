package com.alipay.mobile.alipassapp.ui;

import java.util.concurrent.atomic.AtomicBoolean;

final class ep
  implements Runnable
{
  ep(MemberCardObtainableListActivity paramMemberCardObtainableListActivity)
  {
  }

  public final void run()
  {
    this.a.showProgressDialog("加载中", true, MemberCardObtainableListActivity.getBundleByComponentName(this.a));
    MemberCardObtainableListActivity.getBundle(this.a).set(false);
    MemberCardObtainableListActivity.dexopt(this.a);
    this.a.getInstance();
    this.a.dismissProgressDialog();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ep
 * JD-Core Version:    0.6.2
 */