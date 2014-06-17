package com.alipay.mobile.alipassapp.ui;

import com.alipay.kabaoprod.biz.mwallet.pass.result.PassListResult;
import com.alipay.mobile.alipassapp.biz.model.a;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import java.util.concurrent.atomic.AtomicBoolean;

final class ac
  implements Runnable
{
  ac(AlipassListActivity paramAlipassListActivity, a parama)
  {
  }

  public final void run()
  {
    this.b.a(this.a);
    boolean bool2;
    boolean bool3;
    if ((!AlipassListActivity.a(this.b).get()) && (this.a.a != null) && (this.a.a.success))
    {
      bb localbb = this.b.c;
      PassListResult localPassListResult = this.a.a;
      boolean bool1 = this.a.b;
      if ((this.a.f == 1) || (this.a.f == 0))
      {
        bool2 = true;
        if (this.a.f != 0)
          break label270;
        bool3 = true;
        label109: int i = this.a.f;
        boolean bool4 = false;
        if (i == 2)
          bool4 = true;
        localbb.a(localPassListResult, bool1, bool2, bool3, bool4);
        AlipassListActivity.k(this.b);
      }
    }
    else
    {
      if (this.a.c)
        this.b.b.refreshFinished();
      if (this.a.b)
        this.b.c.getMoreFinish(true);
      if ((this.a.f == 2) && (this.a.d))
        this.b.c.a();
      if ((this.a.e != null) || (this.b.g()) || (this.b.c.getCount() != 0))
        break label276;
      this.b.m();
    }
    label270: label276: 
    while ((this.a.e == null) || (((RpcException)this.a.e).getCode() == 2) || (this.b.c.getCount() != 0))
    {
      return;
      bool2 = false;
      break;
      bool3 = false;
      break label109;
    }
    this.b.n();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ac
 * JD-Core Version:    0.6.2
 */