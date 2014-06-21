package com.alipay.mobile.alipassapp.ui;

import android.view.LayoutInflater;
import com.alipay.mobile.commonui.widget.APDefaultPullRefreshOverView;
import com.alipay.mobile.commonui.widget.APOverView;
import com.alipay.mobile.commonui.widget.APPullRefreshView.RefreshListener;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;
import com.alipay.mobile.ui.R.layout;

final class dv
  implements APPullRefreshView.RefreshListener
{
  dv(MemberCardDetailActivity paramMemberCardDetailActivity)
  {
  }

  public final boolean canRefresh()
  {
    return true;
  }

  public final APOverView getOverView()
  {
    return (APDefaultPullRefreshOverView)LayoutInflater.from(this.a).inflate(R.layout.ap_framework_pullrefresh_overview, null);
  }

  public final void onRefresh()
  {
    if (MemberCardDetailActivity.g(this.a) == true)
      return;
    MemberCardDetailActivity.d(this.a).onRefresh();
    MemberCardDetailActivity.h(this.a);
    this.a.getBundle(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.dv
 * JD-Core Version:    0.6.2
 */