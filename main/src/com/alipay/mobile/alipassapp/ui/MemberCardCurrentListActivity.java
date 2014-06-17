package com.alipay.mobile.alipassapp.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import com.alipay.kabaoprod.biz.mwallet.pass.request.PassListReq;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassListResult;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.alipassapp.biz.model.a;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

public class MemberCardCurrentListActivity extends AlipassListActivity
{
  private View g;
  private View h;
  private View.OnClickListener i = new do(this);

  final int a()
  {
    return 1;
  }

  protected final void a(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object localObject = paramAdapterView.getItemAtPosition(paramInt);
    BaseAlipassInfoItem.AlipassInfoItem localAlipassInfoItem;
    if ((localObject != null) && ((localObject instanceof BaseAlipassInfoItem.AlipassInfoItem)))
    {
      localAlipassInfoItem = (BaseAlipassInfoItem.AlipassInfoItem)localObject;
      if (localAlipassInfoItem.getBaseInfo() != null);
    }
    else
    {
      return;
    }
    a("20000062Details", "seeCard", localAlipassInfoItem);
    if (StringUtils.equalsIgnoreCase(localAlipassInfoItem.getBaseInfo().getType(), "card"))
    {
      Intent localIntent = new Intent(this, MemberCardDetailActivity_.class);
      localIntent.putExtra("p", localAlipassInfoItem.getPassId());
      localIntent.putExtra("cache_version", localAlipassInfoItem.getPassCacheVersion());
      localIntent.putExtra("pass_is_cacheable", true);
      localIntent.putExtra("b", "MCARD");
      localIntent.putExtra("is_invalid", f());
      this.mApp.getMicroApplicationContext().startActivityForResult(this.mApp, localIntent, 0);
      return;
    }
    super.a(paramAdapterView, paramView, paramInt, paramLong);
  }

  protected final void a(a parama)
  {
    int j;
    if ((parama != null) && (parama.a != null) && (b() != null))
    {
      View localView = b();
      if (parama.a.getHasPast() != 1)
        break label132;
      j = 0;
      localView.setVisibility(j);
      if ((parama.f != 2) || (parama.a.getHasCurrent() != 1))
        break label138;
      this.d.removeHeaderView(this.h);
    }
    while (true)
    {
      if ((parama != null) && (parama.e != null) && ((parama.e instanceof RpcException)) && (!parama.d) && (((RpcException)parama.e).getCode() == 2) && (this.c.getCount() > 0))
        a(R.string.member_card_nonetwork_toast);
      return;
      label132: j = 8;
      break;
      label138: if ((parama.f == 2) && (parama.a.getHasCurrent() == 0) && (this.d.getHeaderViewsCount() == 0))
        this.d.addHeaderView(this.h);
    }
  }

  protected final void a(String paramString, boolean paramBoolean)
  {
    super.a(paramString, false);
  }

  protected final View b()
  {
    if (this.g == null)
    {
      this.g = LayoutInflater.from(this).inflate(R.layout.sub_footview_load_past_pass, null);
      APButton localAPButton = (APButton)this.g.findViewById(R.id.btn_load_past_pass_list);
      localAPButton.setText(getResources().getString(R.string.member_card_view_past));
      localAPButton.setOnClickListener(this.i);
    }
    return this.g;
  }

  protected final boolean c()
  {
    return false;
  }

  protected final boolean d()
  {
    return true;
  }

  protected final boolean h()
  {
    return false;
  }

  protected final String i()
  {
    return "MCARD";
  }

  protected final PassListReq j()
  {
    PassListReq localPassListReq = new PassListReq();
    localPassListReq.setPassCategory("MCARD");
    localPassListReq.setTimeStatus("CURRENT");
    localPassListReq.setPageSize(20);
    localPassListReq.setRowSize(0);
    localPassListReq.setNeedPaging(false);
    return localPassListReq;
  }

  protected final void k()
  {
    super.k();
    this.a.setTitleText(getResources().getString(R.string.member_card));
    this.a.setGenericButtonVisiable(true);
    this.a.setGenericButtonText(getResources().getString(R.string.member_card_get));
    this.a.setGenericButtonListener(new dn(this));
    this.c.b();
    this.b.setEnablePull(true);
    this.c.a(false);
    this.c.b(false);
    this.h = LayoutInflater.from(this).inflate(R.layout.sub_membercard_no_card, null);
    if (b() != null)
      b().setVisibility(8);
  }

  final void l()
  {
    if (this.d.getHeaderViewsCount() == 0)
      this.d.addHeaderView(this.h);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.MemberCardCurrentListActivity
 * JD-Core Version:    0.6.2
 */