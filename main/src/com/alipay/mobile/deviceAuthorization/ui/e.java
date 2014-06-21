package com.alipay.mobile.deviceAuthorization.ui;

import com.alipay.mobile.commonui.widget.APOverView;
import com.alipay.mobile.commonui.widget.APPullRefreshView.RefreshListener;

final class e
  implements APPullRefreshView.RefreshListener
{
  e(AuthorizeLogsActivity paramAuthorizeLogsActivity)
  {
  }

  public final boolean canRefresh()
  {
    return true;
  }

  public final APOverView getOverView()
  {
    return AuthorizeLogsActivity.getBundle(this.a);
  }

  public final void onRefresh()
  {
    AuthorizeLogsActivity.v(this.a, false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.e
 * JD-Core Version:    0.6.2
 */