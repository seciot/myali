package com.alipay.mobile.deviceAuthorization.ui;

import com.alipay.mobile.commonui.widget.APOverView;
import com.alipay.mobile.commonui.widget.APPullRefreshView.RefreshListener;

final class ad
  implements APPullRefreshView.RefreshListener
{
  ad(LoginLogsActivity paramLoginLogsActivity)
  {
  }

  public final boolean canRefresh()
  {
    return true;
  }

  public final APOverView getOverView()
  {
    return LoginLogsActivity.b(this.a);
  }

  public final void onRefresh()
  {
    LoginLogsActivity.v(this.a, false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.ad
 * JD-Core Version:    0.6.2
 */