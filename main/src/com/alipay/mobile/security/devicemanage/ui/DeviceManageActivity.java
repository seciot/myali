package com.alipay.mobile.security.devicemanage.ui;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.logging.Logger;
import com.alipay.mobile.common.logging.LoggerFactory;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.security.tid.TidGetter;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;
import com.alipay.mobilesecurity.core.model.Tid;
import com.alipay.mobilesecurity.core.model.account.device.QueryAuthedDeviceRes;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.ArrayList;
import java.util.List;

@EActivity(resName="security_devicelistmanager")
public class DeviceManageActivity extends BaseActivity
{
  private static final Logger g = LoggerFactory.getLogger("DeviceManageActivity");
  final String a = DeviceManageActivity.class.getName();

  @ViewById(resName="security_deviceListView")
  protected APListView b;

  @ViewById(resName="empty_view")
  protected APFlowTipView c;

  @ViewById(resName="deviceManagerList")
  protected APRelativeLayout d;
  protected AuthService e;
  protected UserInfo f;
  private com.alipay.mobile.security.devicemanage.b.a h;
  private com.alipay.mobile.security.devicemanage.a.a i = new com.alipay.mobile.security.devicemanage.a.a();
  private TidGetter j;
  private int k = -1;
  private View l;
  private View m;

  private void a(List<com.alipay.mobilesecurity.core.model.account.device.DeviceInfo> paramList)
  {
    if (paramList == null)
      return;
    if (paramList.size() > 1)
    {
      a(true);
      return;
    }
    if (paramList.size() == 1)
    {
      String str;
      if (this.j.getClientTid() == null)
        str = "";
      while (true)
      {
        com.alipay.mobilesecurity.core.model.account.device.DeviceInfo localDeviceInfo = (com.alipay.mobilesecurity.core.model.account.device.DeviceInfo)paramList.get(0);
        if ((localDeviceInfo == null) || (!str.equals(localDeviceInfo.tid)))
          break;
        a(false);
        return;
        if (this.j.getClientTid().tid == null)
          str = "";
        else
          str = this.j.getClientTid().tid;
      }
      a(true);
      return;
    }
    a(false);
    d();
  }

  private void a(boolean paramBoolean)
  {
    if ((this.l == null) || (this.m == null));
    do
    {
      do
      {
        return;
        if (!paramBoolean)
          break;
        if (this.b.getFooterViewsCount() <= 0)
          this.b.addFooterView(this.l, null, true);
      }
      while (this.b.getHeaderViewsCount() > 0);
      this.b.addHeaderView(this.m, null, true);
      return;
      if (this.b.getFooterViewsCount() > 0)
        this.b.removeFooterView(this.l);
    }
    while (this.b.getHeaderViewsCount() <= 0);
    this.b.removeHeaderView(this.m);
  }

  private void d()
  {
    ArrayList localArrayList = new ArrayList();
    com.alipay.mobilesecurity.core.model.account.device.DeviceInfo localDeviceInfo = new com.alipay.mobilesecurity.core.model.account.device.DeviceInfo();
    localDeviceInfo.deviceName = com.alipay.mobile.common.info.DeviceInfo.getInstance().getmMobileModel();
    String str;
    if (this.j.getClientTid() == null)
      str = "";
    while (true)
    {
      localDeviceInfo.tid = str;
      localArrayList.add(localDeviceInfo);
      this.h = new com.alipay.mobile.security.devicemanage.b.a(this, localArrayList);
      this.b.setAdapter(this.h);
      return;
      if (this.j.getClientTid().tid == null)
        str = "";
      else
        str = this.j.getClientTid().tid;
    }
  }

  @AfterViews
  protected final void a()
  {
    this.f = this.e.getUserInfo();
    b();
  }

  @UiThread
  protected void a(MobileSecurityResult paramMobileSecurityResult, List<com.alipay.mobilesecurity.core.model.account.device.DeviceInfo> paramList)
  {
    if (paramMobileSecurityResult == null)
    {
      toast(getResources().getString(com.alipay.mobile.clientsecurity.R.string.cj), 1);
      return;
    }
    if ("200".equals(paramMobileSecurityResult.resultCode))
    {
      paramList.remove(this.k);
      this.h.a(paramList);
      a(paramList);
      return;
    }
    toast(paramMobileSecurityResult.message, 1);
  }

  @UiThread
  protected void a(QueryAuthedDeviceRes paramQueryAuthedDeviceRes)
  {
    if (paramQueryAuthedDeviceRes == null)
    {
      toast(getResources().getString(com.alipay.mobile.clientsecurity.R.string.cj), 1);
      d();
      return;
    }
    if ("200".equals(paramQueryAuthedDeviceRes.resultCode))
    {
      this.c.setVisibility(8);
      this.d.setVisibility(0);
      List localList = paramQueryAuthedDeviceRes.terminalInfoList;
      if ((localList == null) || (localList.size() <= 0))
      {
        a(paramQueryAuthedDeviceRes.terminalInfoList);
        this.b.setAdapter(this.h);
        return;
      }
      if (this.h == null)
        this.h = new com.alipay.mobile.security.devicemanage.b.a(this, localList);
      while (true)
      {
        this.b.setOnItemLongClickListener(new a(this, localList));
        break;
        this.h.a(localList);
      }
    }
    this.c.setVisibility(8);
    this.d.setVisibility(0);
    toast(paramQueryAuthedDeviceRes.message, 1);
    d();
  }

  @Background
  protected void a(String paramString, List<com.alipay.mobilesecurity.core.model.account.device.DeviceInfo> paramList)
  {
    try
    {
      MobileSecurityResult localMobileSecurityResult = this.i.b(this.f.getLogonId(), paramString);
      dismissProgressDialog();
      a(localMobileSecurityResult, paramList);
      return;
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      throw localRpcException;
    }
  }

  @Background
  protected void b()
  {
    showProgressDialog("");
    try
    {
      String str;
      if (this.j.getClientTid() == null)
        str = "";
      while (true)
      {
        QueryAuthedDeviceRes localQueryAuthedDeviceRes = this.i.a(this.f.getLogonId(), str);
        dismissProgressDialog();
        a(localQueryAuthedDeviceRes);
        return;
        if (this.j.getClientTid().tid == null)
          str = "";
        else
          str = this.j.getClientTid().tid;
      }
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      if ((localRpcException.getCode() == 7) || (localRpcException.getCode() == 2) || (localRpcException.getCode() == 4))
      {
        c();
        return;
      }
      throw localRpcException;
    }
    catch (Exception localException)
    {
      dismissProgressDialog();
    }
  }

  @UiThread
  protected void c()
  {
    this.d.setVisibility(8);
    this.c.resetFlowTipType(16);
    this.c.setVisibility(0);
    this.c.setTips(getResources().getString(com.alipay.mobile.ui.R.string.flow_network_error));
    this.c.setAction(getResources().getString(com.alipay.mobile.ui.R.string.tryAgin), new c(this));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.e = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    this.j = new TidGetter(AlipayApplication.getInstance().getMicroApplicationContext());
    this.l = getLayoutInflater().inflate(R.layout.aD, null);
    this.m = getLayoutInflater().inflate(R.layout.aE, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.devicemanage.ui.DeviceManageActivity
 * JD-Core Version:    0.6.2
 */