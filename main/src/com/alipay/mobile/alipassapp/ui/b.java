package com.alipay.mobile.alipassapp.ui;

import android.view.LayoutInflater;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.ui.common.ViewPagerScrollView;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.commonui.widget.APDefaultPullRefreshOverView;
import com.alipay.mobile.commonui.widget.APOverView;
import com.alipay.mobile.commonui.widget.APPullRefreshView.RefreshListener;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;
import com.alipay.mobile.ui.R.layout;

final class b
  implements APPullRefreshView.RefreshListener
{
  b(AlipassDetailActivity paramAlipassDetailActivity)
  {
  }

  public final boolean canRefresh()
  {
    ViewPagerScrollView localViewPagerScrollView = (ViewPagerScrollView)AlipassDetailActivity.getBundleByComponentName(this.a).findViewById(R.id.alipass_scrollview);
    if ((localViewPagerScrollView != null) && (localViewPagerScrollView.getScrollY() > 0) && (localViewPagerScrollView.isClick()))
    {
      LogCatLog.v(AlipassDetailActivity.getBundlePath(), "########get touch event ,the reuslt is v.isClick()=true");
      return false;
    }
    return true;
  }

  public final APOverView getOverView()
  {
    return (APDefaultPullRefreshOverView)LayoutInflater.from(this.a).inflate(R.layout.ap_framework_pullrefresh_overview, null);
  }

  public final void onRefresh()
  {
    AlipassDetailActivity.getBundle(this.a).onRefresh();
    AlipassDetailActivity.b(this.a);
    this.a.getBundle(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.b
 * JD-Core Version:    0.6.2
 */