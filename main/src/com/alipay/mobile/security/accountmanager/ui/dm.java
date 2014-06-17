package com.alipay.mobile.security.accountmanager.ui;

import android.os.HandlerThread;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.security.accountmanager.b.b;
import com.alipay.mobile.security.securitycommon.OldDataTransferUtil;

final class dm
  implements Runnable
{
  dm(SelectAccountActivity paramSelectAccountActivity, OldDataTransferUtil paramOldDataTransferUtil, HandlerThread paramHandlerThread)
  {
  }

  public final void run()
  {
    if (OldDataTransferUtil.b())
    {
      this.c.e = this.c.b.queryAccountList();
      View localView = this.c.getLayoutInflater().inflate(R.layout.aY, null);
      ((APTableView)localView.findViewById(R.id.cK)).setOnClickListener(new dn(this));
      if (this.c.a.getFooterViewsCount() == 0)
        this.c.a.addFooterView(localView, null, true);
      this.c.a.setAdapter(this.c.f);
      if (this.c.f != null)
        this.c.f.notifyDataSetChanged();
    }
    this.b.quit();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.dm
 * JD-Core Version:    0.6.2
 */