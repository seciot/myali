package com.alipay.mobile.mobilerechargeapp.activity;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.mobilerechargeapp.R.layout;
import com.alipay.mobile.mobilerechargeapp.R.string;
import com.alipay.mobile.mobilerechargeapp.adapter.WarnManagerListAdapter;
import com.alipay.mobile.mobilerechargeapp.adapter.WarnManagerListAdapter.OperationListener;
import com.alipay.mobile.mobilerechargeapp.data.ContactList;
import com.alipay.mobile.mobilerechargeapp.data.ItemData;
import com.alipay.mobile.mobilerechargeapp.data.WarnDisplayData;
import com.alipay.mobile.mobilerechargeapp.data.WarnStatus;
import com.alipay.mobile.mobilerechargeapp.utils.LogAgentWriteLog;
import com.alipay.mobile.mobilerechargeapp.utils.MobilerechargeNetOperation;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignQueryRes;
import com.alipay.mobileprod.biz.recharge.dto.AlertSignRes;
import com.alipay.mobileprod.biz.recharge.vo.AlertSignVO;
import java.util.ArrayList;

public class MobileBalancesWarnActivity extends BaseActivity
{
  protected APListView a;
  ArrayList b = new ArrayList();
  private boolean c = false;
  private WarnManagerListAdapter d;
  private WarnDisplayData e;
  private WarnStatus f;
  private RpcService g = null;
  private MobilerechargeNetOperation h = null;
  private String i = "";
  private ArrayList j = null;
  private Context k;
  private boolean l = true;
  private WarnManagerListAdapter.OperationListener m = new aa(this);
  private AuthService n;

  private void a(String paramString)
  {
    alert(null, paramString, "重试", new ad(this), "取消", new ae(this));
  }

  private void a(String paramString, boolean paramBoolean)
  {
    alert("", paramString, "确定", new ac(this, paramBoolean), null, null);
  }

  private void b(String paramString)
  {
    alert(null, paramString, "确定", null, null, null);
  }

  private void c()
  {
    showProgressDialog("", false, new ab(this));
  }

  protected final void a()
  {
    this.k = this;
    this.h = new MobilerechargeNetOperation(this.mApp);
    this.n = ((AuthService)getExtServiceByInterface(AuthService.class.getName()));
    if (getIntent() != null)
    {
      Intent localIntent = getIntent();
      this.f = WarnStatus.a();
      this.i = localIntent.getStringExtra("bindphonenum");
      this.j = ((ContactList)getIntent().getExtras().getSerializable("sysphonelist")).a;
      if (this.j != null)
        new StringBuilder("mContactList = ").append(this.j.size()).toString();
      b();
    }
  }

  protected void a(int paramInt1, int paramInt2)
  {
    if ((this.d != null) && (this.b != null) && (paramInt1 < this.b.size()))
    {
      ((ItemData)this.b.get(paramInt1)).d = paramInt2;
      this.d.a();
    }
  }

  protected void a(AlertSignQueryRes paramAlertSignQueryRes, boolean paramBoolean)
  {
    APRelativeLayout localAPRelativeLayout1 = (APRelativeLayout)LayoutInflater.from(this).inflate(R.layout.ZLog, null);
    this.a.setAdapter(null);
    if (this.a.getHeaderViewsCount() == 0)
      this.a.addHeaderView(localAPRelativeLayout1, null, false);
    if ((paramBoolean) && (paramAlertSignQueryRes.addSwitch))
    {
      APRelativeLayout localAPRelativeLayout2 = (APRelativeLayout)LayoutInflater.from(this).inflate(R.layout.BundlesManagerImpl, null);
      if (this.a.getFooterViewsCount() == 0)
        this.a.addFooterView(localAPRelativeLayout2, null, false);
    }
    this.d = new WarnManagerListAdapter(this, this.b, paramAlertSignQueryRes.addSwitch);
    this.a.setAdapter(this.d);
    this.d.getBundle(this.m);
  }

  protected void a(AlertSignRes paramAlertSignRes, int paramInt1, int paramInt2)
  {
    dismissProgressDialog();
    if (paramAlertSignRes == null)
    {
      v(getResources().getString(R.string.w), true);
      return;
    }
    new StringBuilder("processAddalertSign Status = ").append(paramAlertSignRes.resultStatus).toString();
    if (paramAlertSignRes.resultStatus == 100)
    {
      if ((this.b != null) && (paramInt1 < this.b.size()))
      {
        if (((ItemData)this.b.get(paramInt1)).f)
          this.f.a(1);
        ((ItemData)this.b.get(paramInt1)).d = 1;
        this.d.a();
      }
      if ((this.e != null) && (paramInt2 == 0) && (paramInt1 == 0) && (this.e.getMaxListSize() > 0) && (this.e.getAddSwitch()) && (1 + this.e.getSignQueryResListSize() >= this.e.getMaxListSize()))
        b();
      toast(getString(R.string.v), 0);
      return;
    }
    if ((paramAlertSignRes.resultStatus == 2013) || (paramAlertSignRes.resultStatus == 2102))
    {
      a(paramInt1, paramInt2);
      b(getResources().getString(R.string.x));
      return;
    }
    a(paramInt1, paramInt2);
    a(paramAlertSignRes.memo, false);
  }

  protected void a(String paramString, int paramInt1, int paramInt2)
  {
    LogAgentWriteLog.v(this, true);
    c();
    try
    {
      a(this.h.a(paramString, ""), paramInt1, paramInt2);
      return;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      a(paramInt1, paramInt2);
      new StringBuilder("addalertSign Exception Code = ").append(localRpcException.getCode()).toString();
      if (localRpcException.getCode() == 4)
      {
        a("网络无法连接，请检查您的网络。", false);
        return;
      }
      if ((localRpcException.getCode() == 7) || (localRpcException.getCode() == 5))
      {
        a("网络连接超时，请稍后再试。", false);
        return;
      }
      a("网络连接超时，请稍后再试。", false);
    }
  }

  protected void b()
  {
    boolean bool = true;
    c();
    try
    {
      MobilerechargeNetOperation localMobilerechargeNetOperation = this.h;
      localAlertSignQueryRes = localMobilerechargeNetOperation.b();
      dismissProgressDialog();
      if (localAlertSignQueryRes == null)
      {
        v(getString(R.string.w), true);
        return;
      }
      new StringBuilder("resultStatus ＝").append(localAlertSignQueryRes.resultStatus).toString();
      if (localAlertSignQueryRes.resultStatus == 100)
      {
        this.e = new WarnDisplayData(localAlertSignQueryRes, this.k, this.i);
        this.e.setContactList(this.j);
        if (localAlertSignQueryRes.bindingMobileAlertSign != null)
          this.f.e(localAlertSignQueryRes.bindingMobileAlertSign.mobileNo, localAlertSignQueryRes.bindingMobileAlertSign.signStatus, localAlertSignQueryRes.bindingMobileAlertSign.valid);
        this.b = this.e.getDisplayData();
        if (!this.e.isDisplayAddSwitch())
        {
          v(localAlertSignQueryRes, bool);
          return;
        }
      }
    }
    catch (RpcException localRpcException)
    {
      AlertSignQueryRes localAlertSignQueryRes;
      while (true)
      {
        dismissProgressDialog();
        if ((localRpcException.getCode() != 7) && (localRpcException.getCode() != 5))
          break;
        a("网络连接超时，请稍后再试。");
        return;
        bool = false;
      }
      a(localAlertSignQueryRes.memo, true);
      return;
      a("网络无法连接，请检查您的网络。");
    }
  }

  protected void b(AlertSignRes paramAlertSignRes, int paramInt1, int paramInt2)
  {
    dismissProgressDialog();
    if (paramAlertSignRes == null)
    {
      v(getString(R.string.n), true);
      return;
    }
    new StringBuilder("cancelalertSign Status = ").append(paramAlertSignRes.resultStatus).toString();
    if (paramAlertSignRes.resultStatus == 100)
    {
      if ((this.b != null) && (paramInt1 < this.b.size()))
      {
        if (((ItemData)this.b.get(paramInt1)).f)
          this.f.a(2);
        ((ItemData)this.b.get(paramInt1)).d = 2;
        this.d.a();
      }
      toast(getString(R.string.s), 0);
      return;
    }
    if ((paramAlertSignRes.resultStatus == 2013) || (paramAlertSignRes.resultStatus == 2102))
    {
      a(paramInt1, paramInt2);
      b(getResources().getString(R.string.x));
      return;
    }
    a(paramInt1, paramInt2);
    a(paramAlertSignRes.memo, false);
  }

  protected void b(String paramString, int paramInt1, int paramInt2)
  {
    LogAgentWriteLog.d(this, true);
    c();
    try
    {
      b(this.h.a(paramString), paramInt1, paramInt2);
      return;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      new StringBuilder("cancelalertSign Exception Code = ").append(localRpcException.getCode()).toString();
      a(paramInt1, paramInt2);
      if ((localRpcException.getCode() == 7) || (localRpcException.getCode() == 5))
      {
        a("网络连接超时，请稍后再试。", false);
        return;
      }
      a("网络无法连接，请检查您的网络。", false);
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramIntent == null);
    String str;
    do
    {
      do
        return;
      while ((paramInt1 != 10) || (paramInt2 != 200));
      str = paramIntent.getStringExtra("inputnum");
    }
    while ((str == null) || (str.length() <= 0));
    b();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onPause()
  {
    super.onPause();
    this.l = true;
  }

  protected void onResume()
  {
    super.onResume();
    this.l = true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.MobileBalancesWarnActivity
 * JD-Core Version:    0.6.2
 */