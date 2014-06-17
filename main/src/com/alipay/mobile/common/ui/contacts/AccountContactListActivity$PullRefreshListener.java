package com.alipay.mobile.common.ui.contacts;

import android.view.LayoutInflater;
import com.alipay.mobile.commonui.widget.APOverView;
import com.alipay.mobile.commonui.widget.APPullRefreshView.RefreshListener;
import com.alipay.mobile.ui.R.layout;

class AccountContactListActivity$PullRefreshListener
  implements APPullRefreshView.RefreshListener
{
  private AccountContactListActivity$PullRefreshListener(AccountContactListActivity paramAccountContactListActivity)
  {
  }

  public boolean canRefresh()
  {
    return true;
  }

  public APOverView getOverView()
  {
    return (APOverView)this.this$0.getLayoutInflater().inflate(R.layout.ap_framework_pullrefresh_overview, null);
  }

  public void onRefresh()
  {
    this.this$0.manualUpdateHistory();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.AccountContactListActivity.PullRefreshListener
 * JD-Core Version:    0.6.2
 */