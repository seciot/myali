package com.alipay.android.widget.security.ui;

import android.content.res.Resources;
import android.os.Bundle;
import android.widget.SimpleAdapter;
import com.alipay.android.widget.security.component.XListView;
import com.alipay.android.widget.security.component.XListView.a;
import com.alipay.android.widget.security.service.e;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobilesecurity.core.model.mainpage.operations.OperationsLog;
import com.alipay.mobilesecurity.core.model.mainpage.operations.OperationsLogRes;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

@EActivity
public class SecurityOperateRecordsActivity extends BaseActivity
  implements XListView.a
{
  List<HashMap<String, Object>> a = new ArrayList();
  private final String b = "SecurityOperateRecordsN";
  private XListView c;
  private SimpleAdapter d;
  private ArrayList<OperationsLog> e = new ArrayList();
  private e f;
  private String g;
  private String h;
  private String i;
  private UserInfo j;
  private int k = 0;
  private APTextView l;
  private APFlowTipView m;

  private void h()
  {
    this.c.stopRefresh();
    this.c.stopLoadMore();
    this.f = new e(this.mApp, this.g);
    XListView localXListView = this.c;
    localXListView.setRefreshTime(e.a(new Date()));
  }

  public final void a()
  {
    this.a.clear();
    this.h = null;
    this.i = null;
    e();
    h();
    this.c.reMoveFoorView();
    this.c.setmIsFooterReady(false);
    this.k = 0;
  }

  @UiThread
  protected void a(OperationsLogRes paramOperationsLogRes)
  {
    if ((paramOperationsLogRes != null) && (paramOperationsLogRes.isSuccess()) && (paramOperationsLogRes.getResultCode() != "10012"))
    {
      this.e = ((ArrayList)paramOperationsLogRes.getOperateLogList());
      this.h = paramOperationsLogRes.getPageNumEndDate();
      if ((this.e != null) && (this.e.size() != 0))
      {
        Iterator localIterator = this.e.iterator();
        if (localIterator.hasNext())
        {
          OperationsLog localOperationsLog = (OperationsLog)localIterator.next();
          HashMap localHashMap = new HashMap();
          if ((localOperationsLog.getSubType() == null) || ("".equalsIgnoreCase(localOperationsLog.getSubType().trim())))
          {
            localHashMap.put("subType", getResources().getString(com.alipay.mobile.clientsecurity.R.string.bI));
            localHashMap.put("imageV", Integer.valueOf(R.drawable.p));
            if ((localOperationsLog.getAddress() != null) && (!"".equalsIgnoreCase(localOperationsLog.getAddress().trim())))
              break label343;
            localHashMap.put("address", getResources().getString(com.alipay.mobile.clientsecurity.R.string.cD));
            label194: if ((localOperationsLog.getOperateTime() != null) && (!"".equalsIgnoreCase(localOperationsLog.getOperateTime().trim())))
              break label359;
            localHashMap.put("opTime", getResources().getString(com.alipay.mobile.clientsecurity.R.string.cD));
          }
          while (true)
          {
            this.a.add(localHashMap);
            break;
            String str;
            if ("pc".equalsIgnoreCase(localOperationsLog.getSubType()))
            {
              str = getResources().getString(com.alipay.mobile.clientsecurity.R.string.an);
              label276: localHashMap.put("subType", str);
              if (!"pc".equalsIgnoreCase(localOperationsLog.getSubType()))
                break label335;
            }
            label335: for (int i1 = R.drawable.p; ; i1 = R.drawable.o)
            {
              localHashMap.put("imageV", Integer.valueOf(i1));
              break;
              str = getResources().getString(com.alipay.mobile.clientsecurity.R.string.bK);
              break label276;
            }
            label343: localHashMap.put("address", localOperationsLog.getAddress());
            break label194;
            label359: localHashMap.put("opTime", localOperationsLog.getOperateTime());
          }
        }
      }
      if (this.k != 0)
        break label497;
      List localList = this.a;
      int n = R.layout.aN;
      String[] arrayOfString = { "imageV", "subType", "address", "opTime" };
      int[] arrayOfInt = new int[4];
      arrayOfInt[0] = R.id.bM;
      arrayOfInt[1] = R.id.bJ;
      arrayOfInt[2] = R.id.bK;
      arrayOfInt[3] = R.id.bL;
      this.d = new SimpleAdapter(this, localList, n, arrayOfString, arrayOfInt);
      this.c.setAdapter(this.d);
    }
    while (true)
    {
      if (this.e.size() == 0)
        this.c.reMoveFoorView();
      return;
      label497: this.d.notifyDataSetChanged();
    }
  }

  public final void b()
  {
    this.i = "backward";
    this.k = (1 + this.k);
    e();
    h();
  }

  @Background
  protected void c()
  {
    AuthService localAuthService = (AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if (localAuthService.auth(new Bundle()))
    {
      this.j = localAuthService.getUserInfo();
      this.g = this.j.getLogonId();
      d();
    }
  }

  @UiThread
  protected void d()
  {
    this.c = ((XListView)findViewById(R.id.gt));
    this.c.setPullLoadEnable(true);
    this.h = null;
    this.i = null;
    e();
    this.c.setXListViewListener(this);
    this.c.setRefreshTime("刚刚");
  }

  @Background
  protected void e()
  {
    this.f = new e(this.mApp, this.g);
    try
    {
      OperationsLogRes localOperationsLogRes = this.f.a(this.h, this.i);
      if ((localOperationsLogRes != null) && (localOperationsLogRes.getOperateLogList() != null) && (localOperationsLogRes.getOperateLogList().isEmpty()))
      {
        if (this.k == 0)
          f();
      }
      else
      {
        a(localOperationsLogRes);
        return;
      }
    }
    catch (RpcException localRpcException)
    {
      if (this.k == 0)
      {
        g();
        return;
      }
      throw localRpcException;
    }
  }

  @UiThread
  protected void f()
  {
    this.c.setVisibility(8);
    this.l.setVisibility(0);
  }

  @UiThread
  protected void g()
  {
    this.c.setVisibility(8);
    this.l.setVisibility(8);
    this.m.setVisibility(0);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.aO);
    this.l = ((APTextView)findViewById(R.id.cB));
    this.m = ((APFlowTipView)findViewById(R.id.cu));
    this.m.setTips(getResources().getString(com.alipay.mobile.ui.R.string.flow_network_error));
    this.m.setAction(getResources().getString(com.alipay.mobile.ui.R.string.tryAgin), new SecurityOperateRecordsActivity.1(this));
    c();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityOperateRecordsActivity
 * JD-Core Version:    0.6.2
 */