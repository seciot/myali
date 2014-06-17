package com.alipay.mobile.alipassapp.ui;

import android.os.Bundle;
import android.view.View;
import com.alipay.kabaoprod.biz.mwallet.pass.request.PassListReq;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.ui.common.aj;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.commonui.widget.APTextView;

public class VoucherPastListActivity extends AlipassListActivity
{
  protected final View b()
  {
    return null;
  }

  protected final boolean f()
  {
    return true;
  }

  protected final String i()
  {
    return "COUPON";
  }

  protected final PassListReq j()
  {
    PassListReq localPassListReq = new PassListReq();
    localPassListReq.setPassCategory("COUPON");
    localPassListReq.setTimeStatus("PAST");
    localPassListReq.setPageSize(20);
    localPassListReq.setRowSize(this.c.a());
    localPassListReq.setNeedPaging(true);
    return localPassListReq;
  }

  protected final void k()
  {
    super.k();
    aj.a(this, this.mApp, this.a, null);
    this.b.setEnablePull(false);
    this.c.a(true);
    this.c.b(false);
  }

  final void m()
  {
    this.e.setVisibility(0);
    this.f.setText(R.string.alipass_coupon_past_list_error);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.VoucherPastListActivity
 * JD-Core Version:    0.6.2
 */