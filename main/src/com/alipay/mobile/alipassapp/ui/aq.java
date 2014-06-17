package com.alipay.mobile.alipassapp.ui;

import android.view.LayoutInflater;
import com.alipay.mobile.commonui.widget.APDefaultPullRefreshOverView;
import com.alipay.mobile.commonui.widget.APOverView;
import com.alipay.mobile.commonui.widget.APPullRefreshView.RefreshListener;
import com.alipay.mobile.ui.R.layout;
import com.googlecode.androidannotations.api.BackgroundExecutor;

final class aq
  implements APPullRefreshView.RefreshListener
{
  aq(AlipassListActivity paramAlipassListActivity)
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
    BackgroundExecutor.execute(new ar(this));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.aq
 * JD-Core Version:    0.6.2
 */