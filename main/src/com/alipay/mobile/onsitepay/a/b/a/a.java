package com.alipay.mobile.onsitepay.a.b.a;

import android.content.Context;
import com.alipay.mobile.framework.lbsinfo.LBSInfoGather;
import com.alipay.mobile.onsitepay.a.b.b;

public final class a
  implements BundlesManager
{
  BundlesManagerImpl a = null;
  Context b = null;

  public a(Context paramContext)
  {
    this.b = paramContext;
  }

  public final void getBundle(String paramString)
  {
    this.a = new BundlesManagerImpl(this, paramString);
    LBSInfoGather.getInstance(this.b).requestLBSInfoUpdates(this.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.a.b.a.a
 * JD-Core Version:    0.6.2
 */