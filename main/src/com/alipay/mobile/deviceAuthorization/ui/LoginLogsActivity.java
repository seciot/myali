package com.alipay.mobile.deviceAuthorization.ui;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.drawable;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.misc.AutoScrollMoreListAdapter;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APDefaultPullRefreshOverView;
import com.alipay.mobile.commonui.widget.APFlowTipView;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobilesecurity.biz.gw.service.LogsCommonService;
import com.alipay.mobilesecurity.core.model.account.loginLog.LoginLog;
import com.alipay.mobilesecurity.core.model.account.loginLog.LoginLogRes;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import java.util.Iterator;
import java.util.List;

@EActivity
public class LoginLogsActivity extends BaseActivity
{
  public static final String a = LoginLogsActivity.class.getSimpleName();
  private static boolean h = false;
  private static boolean i = false;
  private static String j = "";
  private static String k = "";
  private APPullRefreshView b;
  private a c;
  private APFlowTipView d;
  private View e;
  private APDefaultPullRefreshOverView f;
  private ListView g;
  private final String l = "";
  private final String m = "client";

  private void a(boolean paramBoolean)
  {
    if (paramBoolean)
      showProgressDialog(getString(com.alipay.mobile.clientsecurity.R.string.F), true, new ae(this));
    h = true;
    j = "";
    a();
  }

  private void a(boolean paramBoolean, String paramString)
  {
    if (h)
    {
      h = false;
      this.b.refreshFinished();
    }
    if (i)
    {
      i = false;
      this.c.getMoreFinish();
    }
    if ((this.c != null) && (this.c.getCount() > 0))
    {
      this.b.setVisibility(0);
      this.d.setVisibility(8);
    }
    while (true)
    {
      if (StringUtils.isNotBlank(paramString))
        toast(paramString, 0);
      return;
      this.b.setVisibility(8);
      this.d.setVisibility(0);
      if (paramBoolean)
      {
        this.d.resetFlowTipType(17);
        this.d.setTips(getResources().getString(com.alipay.mobile.clientsecurity.R.string.D));
        this.d.setNoAction();
      }
      else
      {
        this.d.resetFlowTipType(16);
        this.d.setTips(getResources().getString(com.alipay.mobile.clientsecurity.R.string.E));
        this.d.setAction(getResources().getString(com.alipay.mobile.ui.R.string.tryAgin), new af(this));
      }
    }
  }

  @Background
  public void a()
  {
    try
    {
      LoginLogRes localLoginLogRes = new LogsCommonService(this.mApp).getLoginLogs(j, k);
      if ((localLoginLogRes != null) && (localLoginLogRes.isSuccess()))
      {
        a(localLoginLogRes);
        return;
      }
      b(localLoginLogRes);
      return;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("request datas failed, error Msg=").append(localRpcException.getMessage()).toString();
      b(null);
    }
  }

  @UiThread
  public void a(LoginLogRes paramLoginLogRes)
  {
    dismissProgressDialog();
    if ((paramLoginLogRes.getLoginLogList() == null) || (paramLoginLogRes.getLoginLogList().size() <= 0))
    {
      a(true, paramLoginLogRes.getMessage());
      return;
    }
    if (h)
      this.c.clear();
    Iterator localIterator = paramLoginLogRes.getLoginLogList().iterator();
    while (localIterator.hasNext())
    {
      LoginLog localLoginLog = (LoginLog)localIterator.next();
      this.c.addData(localLoginLog);
    }
    if (StringUtils.isBlank(paramLoginLogRes.getMaxId()))
      this.c.disableLoadMore();
    while (true)
    {
      this.c.notifyDataSetChanged();
      a(true, null);
      return;
      j = paramLoginLogRes.getMaxId();
      k = paramLoginLogRes.getActionDt();
      this.c.enableLoadMore();
      new StringBuilder("Next page is enable, maxId=").append(j).toString();
    }
  }

  @UiThread
  public void b(LoginLogRes paramLoginLogRes)
  {
    dismissProgressDialog();
    if (paramLoginLogRes != null);
    for (String str = paramLoginLogRes.getMessage(); ; str = null)
    {
      a(false, str);
      return;
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.e = LayoutInflater.from(this).inflate(R.layout.m, null);
    setContentView(this.e);
    this.e.setVisibility(0);
    APTitleBar localAPTitleBar = (APTitleBar)this.e.findViewById(R.id.cf);
    localAPTitleBar.setTitleText(getString(com.alipay.mobile.clientsecurity.R.string.y));
    localAPTitleBar.setGenericButtonIconResource(R.drawable.i);
    localAPTitleBar.setGenericButtonVisiable(true);
    localAPTitleBar.setGenericButtonListener(new ac(this));
    localAPTitleBar.setVisibility(0);
    this.f = ((APDefaultPullRefreshOverView)LayoutInflater.from(this).inflate(R.layout.L, null));
    this.d = ((APFlowTipView)this.e.findViewById(R.id.bS));
    if (this.d == null);
    while (true)
    {
      a(true);
      return;
      this.b = ((APPullRefreshView)this.e.findViewById(R.id.bZ));
      this.b.setEnablePull(true);
      this.b.setRefreshListener(new ad(this));
      this.g = ((ListView)this.e.findViewById(R.id.bX));
      this.c = new a(this.g);
      this.g.setAdapter(this.c);
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
  }

  private final class a extends AutoScrollMoreListAdapter
  {
    public a(ListView arg2)
    {
      super();
    }

    protected final View getFailView()
    {
      return null;
    }

    protected final View getItemView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView = LayoutInflater.from(LoginLogsActivity.this).inflate(R.layout.l, null);
      TextView localTextView1 = (TextView)localView.findViewById(R.id.bT);
      TextView localTextView2 = (TextView)localView.findViewById(R.id.bW);
      TextView localTextView3 = (TextView)localView.findViewById(R.id.bV);
      ImageView localImageView = (ImageView)localView.findViewById(R.id.bU);
      LoginLog localLoginLog = (LoginLog)LoginLogsActivity.c(LoginLogsActivity.this).getItem(paramInt);
      if (localLoginLog == null)
        return localView;
      localTextView1.setText(localLoginLog.getIpAddress());
      localTextView3.setText(localLoginLog.getLoginDate());
      if (StringUtils.equals(localLoginLog.getDeviceFlag(), "client"))
      {
        localTextView2.setText(LoginLogsActivity.this.getResources().getString(com.alipay.mobile.clientsecurity.R.string.A));
        localImageView.setImageResource(R.drawable.k);
      }
      while (true)
      {
        return localView;
        localTextView2.setText(LoginLogsActivity.this.getResources().getString(com.alipay.mobile.clientsecurity.R.string.z));
        localImageView.setImageResource(R.drawable.l);
      }
    }

    protected final View getLoadingView()
    {
      return LayoutInflater.from(LoginLogsActivity.this).inflate(R.layout.n, null);
    }

    public final boolean isEnabled(int paramInt)
    {
      return false;
    }

    protected final void itemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
    }

    protected final void onAutoLoadMore()
    {
      LoginLogsActivity.stop();
      LoginLogsActivity.this.a();
    }

    protected final void onRetry()
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.LoginLogsActivity
 * JD-Core Version:    0.6.2
 */