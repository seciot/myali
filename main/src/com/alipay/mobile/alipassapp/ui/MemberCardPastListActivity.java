package com.alipay.mobile.alipassapp.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import com.alipay.kabaoprod.biz.mwallet.pass.request.PassListReq;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public class MemberCardPastListActivity extends AlipassListActivity
{
  private View g;

  final int a()
  {
    return 1;
  }

  protected final void a(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object localObject = paramAdapterView.getItemAtPosition(paramInt);
    if ((localObject != null) && ((localObject instanceof BaseAlipassInfoItem.AlipassInfoItem)))
    {
      Intent localIntent = new Intent(this, MemberCardDetailActivity_.class);
      BaseAlipassInfoItem.AlipassInfoItem localAlipassInfoItem = (BaseAlipassInfoItem.AlipassInfoItem)localObject;
      a("20000062OverdueDetails", "seeCard", localAlipassInfoItem);
      localIntent.putExtra("p", localAlipassInfoItem.getPassId());
      localIntent.putExtra("b", "MCARD");
      localIntent.putExtra("is_invalid", true);
      this.mApp.getMicroApplicationContext().startActivityForResult(this.mApp, localIntent, 0);
    }
  }

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
    return "MCARD";
  }

  protected final PassListReq j()
  {
    PassListReq localPassListReq = new PassListReq();
    localPassListReq.setPassCategory("MCARD");
    localPassListReq.setTimeStatus("PAST");
    localPassListReq.setPageSize(20);
    localPassListReq.setRowSize(this.c.a());
    localPassListReq.setNeedPaging(true);
    return localPassListReq;
  }

  protected final void k()
  {
    super.k();
    this.a.setTitleText(getResources().getString(R.string.member_card_past));
    this.b.setEnablePull(false);
    this.c.a(true);
    this.c.b(false);
    this.g = LayoutInflater.from(this).inflate(R.layout.sub_membercard_no_card, null);
    this.g.findViewById(R.id.iv_no_card_arrow).setVisibility(4);
    ((APTextView)this.g.findViewById(R.id.tv_no_card_msg_1)).setText(getResources().getString(R.string.member_card_no_past_card_msg_1));
  }

  final void l()
  {
    m();
  }

  final void m()
  {
    if (this.d.getHeaderViewsCount() == 0)
      this.d.addHeaderView(this.g);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.MemberCardPastListActivity
 * JD-Core Version:    0.6.2
 */