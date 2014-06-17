package com.alipay.android.phone.home.ui;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.support.v4.content.LocalBroadcastManager;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TabHost;
import com.alipay.android.launcher.core.IWidget;
import com.alipay.android.phone.home.dialog.NfdPanelDialog;
import com.alipay.android.phone.home.widget.NFDFrameLayout;
import com.alipay.android.phone.openplatform.R.id;
import com.alipay.android.phone.openplatform.R.layout;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.widgetmsg.WidgetMsgFlag;
import com.alipay.mobile.nfd.nfdbiz.service.WifiSnifferService;
import com.alipay.mobilebill.biz.rpc.bill.QueryBillRemindInfoRPCService;
import java.lang.ref.WeakReference;

public class HeaderAreaLayout
  implements IWidget
{
  private String a = "HeaderAreaLayout";
  private Context b;
  private MicroApplicationContext c = null;
  private ActivityApplication d = null;
  private APTextView e;
  private APButton f;
  private NFDFrameLayout g;
  private APTitleBar h;
  private View i;
  private UserInfo j;
  private Handler k = new Handler();
  private AuthService l;
  private BroadcastReceiver m = null;
  private WidgetMsgFlag n;
  private QueryBillRemindInfoRPCService o;
  private WidgetMsgFlag p;
  private WifiSnifferService q;
  private NfdPanelDialog r;
  private n s;
  private WeakReference<TabHost> t;

  public HeaderAreaLayout(Activity paramActivity)
  {
    this.b = paramActivity;
    this.l = ((AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    this.o = ((QueryBillRemindInfoRPCService)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(QueryBillRemindInfoRPCService.class));
    this.g = ((NFDFrameLayout)LayoutInflater.from(paramActivity).inflate(R.layout.h, null));
    this.i = this.g.findViewById(R.id.g);
    this.i.setVisibility(8);
    this.t = new WeakReference((TabHost)paramActivity.findViewById(16908306));
    this.h = ((APTitleBar)this.g.findViewById(R.id.w));
    this.e = this.h.getTitleTextView();
    this.f = this.h.getGenericButton();
    this.n = new WidgetMsgFlag(paramActivity);
    this.p = ((WidgetMsgFlag)paramActivity.findViewById(R.id.c));
    this.h.attachNewFlagView(this.n);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.alipay.security.login");
    localIntentFilter.addAction("com.alipay.security.logout");
    localIntentFilter.addAction("com.alipay.security.cleanAccount");
    this.m = new h(this);
    LocalBroadcastManager.getInstance(this.b).registerReceiver(this.m, localIntentFilter);
    this.f.setOnClickListener(new e(this));
    this.q = ((WifiSnifferService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(WifiSnifferService.class.getName()));
    this.s = new n(this);
    this.q.setActiveTopBaordView(this.s);
    this.i.setOnClickListener(new f(this));
    d();
  }

  private void d()
  {
    this.j = null;
    if (this.l.isLogin())
      this.j = this.l.getUserInfo();
    String str1;
    if (this.j == null)
    {
      str1 = "支付宝";
      if (this.e == null)
        break label91;
    }
    label91: for (String str2 = this.e.getText().toString(); ; str2 = "")
    {
      if (!StringUtils.equals(str1, str2))
        this.k.post(new g(this));
      return;
      str1 = this.j.getUserName();
      break;
    }
  }

  public final void a()
  {
    this.j = null;
    if (this.m != null)
    {
      LocalBroadcastManager.getInstance(this.b).unregisterReceiver(this.m);
      this.m = null;
    }
  }

  public final void b()
  {
    if (this.r == null)
    {
      LogCatLog.i(this.a, "new NfdPanelDialog");
      this.r = new NfdPanelDialog(this.b);
      this.r.b(new k(this));
    }
  }

  public final void c()
  {
    if (this.s != null)
    {
      this.s.setOnStateChangeListener(new l(this));
      this.s.setOnVisibleChangeListener(new m(this));
    }
  }

  public View getView()
  {
    return this.g;
  }

  public void onRefresh()
  {
    d();
  }

  public void setActivityApplication(ActivityApplication paramActivityApplication)
  {
    this.d = paramActivityApplication;
  }

  public void setContext(Activity paramActivity)
  {
    this.b = paramActivity;
  }

  public void setContext(MicroApplicationContext paramMicroApplicationContext)
  {
    this.c = paramMicroApplicationContext;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.HeaderAreaLayout
 * JD-Core Version:    0.6.2
 */