package com.alipay.mobile.alipassapp.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.kabaoprod.biz.mwallet.card.request.MemberCardRequest;
import com.alipay.kabaoprod.biz.mwallet.card.result.CardPreviewResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.kabaoprod.core.model.model.PassBaseInfo;
import com.alipay.kabaoprod.core.model.model.PassInfo;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.More;
import com.alipay.mobile.alipassapp.biz.model.d;
import com.alipay.mobile.alipassapp.ui.app.AlipassApp;
import com.alipay.mobile.alipassapp.ui.common.ai;
import com.alipay.mobile.alipassapp.ui.common.an;
import com.alipay.mobile.alipassapp.ui.common.k;
import com.alipay.mobile.alipassapp.ui.common.p;
import com.alipay.mobile.alipassapp.ui.widget.MemberCardHeaderStyle;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APScrollView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.BindPhoneService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.Iterator;
import java.util.List;

@EActivity
public class AlipassQueryCardActivity extends BaseActivity
  implements DialogInterface.OnCancelListener, p
{
  public static boolean a = false;
  public static boolean b = true;
  public static boolean c = true;
  private static final String d = AlipassQueryCardActivity.class.getSimpleName();
  private View e;
  private Boolean f;
  private com.alipay.mobile.alipassapp.biz.Bundle.AppBundle g;
  private com.alipay.mobile.alipassapp.biz.a h;
  private k i;
  private RpcException j = null;
  private APScrollView k;
  private APTitleBar l;
  private MemberCardHeaderStyle m;
  private APLinearLayout n;
  private APButton o;
  private MemberCardRequest p;
  private String q;
  private String r;
  private long s;
  private BindPhoneService t;

  private PassInfoResult a(MemberCardRequest paramMemberCardRequest)
  {
    try
    {
      PassInfoResult localPassInfoResult = this.h.a(paramMemberCardRequest);
      return localPassInfoResult;
    }
    catch (RpcException localRpcException)
    {
      this.j = localRpcException;
    }
    return null;
  }

  private static void a(long paramLong)
  {
    if (paramLong > 0L);
    try
    {
      Thread.sleep(paramLong);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      localInterruptedException.printStackTrace();
    }
  }

  private boolean a(PassInfoResult paramPassInfoResult)
  {
    try
    {
      if (this.g != null)
      {
        boolean bool = this.g.a(this.r, this.p.userId, this.q, paramPassInfoResult);
        return bool;
      }
    }
    catch (NullPointerException localNullPointerException)
    {
      return false;
    }
    catch (android.database.SQLException localSQLException1)
    {
      break label39;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      break label39;
    }
    catch (java.sql.SQLException localSQLException)
    {
      label39: break label39;
    }
  }

  private void b(MemberCardRequest paramMemberCardRequest, String paramString)
  {
    long l1 = System.currentTimeMillis();
    int i1 = 500;
    PassInfoResult localPassInfoResult = null;
    long l2 = l1;
    do
    {
      do
        if (System.currentTimeMillis() - l1 >= 10000L)
          break;
      while (System.currentTimeMillis() - l2 < i1);
      l2 = System.currentTimeMillis();
      i1 = 3000;
      localPassInfoResult = a(paramMemberCardRequest);
    }
    while ((!b(localPassInfoResult)) && ((localPassInfoResult == null) || (!"1509".equalsIgnoreCase(localPassInfoResult.resultCode))));
    if (b(localPassInfoResult))
    {
      if (!c(localPassInfoResult))
        a(localPassInfoResult);
      b();
      a(localPassInfoResult, paramString);
      long l3 = System.currentTimeMillis() - this.s;
      new StringBuilder("开卡成功加载时间").append(l3).toString();
      this.s = 0L;
      return;
    }
    dismissProgressDialog();
    if ((localPassInfoResult != null) && ("1509".equalsIgnoreCase(localPassInfoResult.resultCode)))
    {
      h();
      return;
    }
    if ((localPassInfoResult != null) && ("1903".equalsIgnoreCase(localPassInfoResult.resultCode)))
    {
      g();
      return;
    }
    a(localPassInfoResult);
  }

  private static boolean b(PassInfoResult paramPassInfoResult)
  {
    if ((paramPassInfoResult != null) && (paramPassInfoResult.success) && ("100".equalsIgnoreCase(paramPassInfoResult.resultCode)));
    while (c(paramPassInfoResult))
      return true;
    return false;
  }

  private static boolean c(PassInfoResult paramPassInfoResult)
  {
    return (paramPassInfoResult != null) && (!paramPassInfoResult.success) && ("1905".equalsIgnoreCase(paramPassInfoResult.resultCode)) && (paramPassInfoResult.getPassInfo() != null) && (StringUtils.isNotBlank(paramPassInfoResult.getPassInfo().getPrimaryFields()));
  }

  private boolean i()
  {
    if (this.f != null)
      return this.f.booleanValue();
    ComponentName localComponentName = getCallingActivity();
    String str = MemberCardObtainableListActivity.class.getName();
    if ((localComponentName != null) && (StringUtils.equals(localComponentName.getShortClassName(), str)));
    for (this.f = Boolean.valueOf(true); ; this.f = Boolean.valueOf(false))
      return this.f.booleanValue();
  }

  private PassInfoResult j()
  {
    try
    {
      com.alipay.mobile.alipassapp.biz.ZResources.a locala = this.g;
      Object localObject = null;
      if (locala != null)
      {
        PassInfoResult localPassInfoResult = this.g.e(this.r, this.p.userId, this.q);
        localObject = localPassInfoResult;
      }
      return localObject;
    }
    catch (NullPointerException localNullPointerException)
    {
      return null;
    }
    catch (android.database.SQLException localSQLException1)
    {
      return null;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      return null;
    }
    catch (java.sql.SQLException localSQLException)
    {
    }
    return null;
  }

  private boolean k()
  {
    if ((this.j != null) && (this.j.getCode() == 2))
    {
      this.i.e(this, this.l, new cb(this));
      this.j = null;
      return true;
    }
    return false;
  }

  @Background
  protected void a()
  {
    if (i())
    {
      c();
      return;
    }
    showProgressDialog("", true, this);
    PassInfoResult localPassInfoResult1 = j();
    if ((localPassInfoResult1 != null) && (localPassInfoResult1.getPassInfo() != null) && (localPassInfoResult1.getPassInfo().getPassBaseInfo() != null) && (localPassInfoResult1.getPassInfo().getPassBaseInfo().passId != null))
    {
      a(500L);
      a(localPassInfoResult1, this.q);
      return;
    }
    PassInfoResult localPassInfoResult2 = a(this.p);
    if (k())
    {
      dismissProgressDialog();
      return;
    }
    if (b(localPassInfoResult2))
    {
      if (!c(localPassInfoResult2))
        a(localPassInfoResult2);
      a(250L);
      a(localPassInfoResult2, this.q);
      return;
    }
    dismissProgressDialog();
    if (localPassInfoResult2 != null)
    {
      if ("1903".equalsIgnoreCase(localPassInfoResult2.resultCode))
      {
        showProgressDialog("领取中", true, this);
        b(this.p, this.q);
        return;
      }
      if ("1902".equalsIgnoreCase(localPassInfoResult2.resultCode))
      {
        c();
        return;
      }
      if ("1509".equalsIgnoreCase(localPassInfoResult2.resultCode))
      {
        h();
        return;
      }
      if ("1908".equalsIgnoreCase(localPassInfoResult2.resultCode))
      {
        f();
        return;
      }
      a(localPassInfoResult2);
      return;
    }
    a(localPassInfoResult2);
  }

  @Background
  protected void a(MemberCardRequest paramMemberCardRequest, String paramString)
  {
    showProgressDialog("领取中", true, this);
    this.s = System.currentTimeMillis();
    try
    {
      localKabaoCommonResult = this.h.b(paramMemberCardRequest);
      if ((localKabaoCommonResult != null) && (localKabaoCommonResult.success))
      {
        b(paramMemberCardRequest, paramString);
        return;
      }
      dismissProgressDialog();
      if ((localKabaoCommonResult != null) && ("1912".equalsIgnoreCase(localKabaoCommonResult.resultCode)))
      {
        runOnUiThread(new bq(this, paramMemberCardRequest, paramString));
        return;
      }
    }
    catch (RpcException localRpcException)
    {
      KabaoCommonResult localKabaoCommonResult;
      this.j = localRpcException;
      dismissProgressDialog();
      if (!k())
      {
        getBundle(null);
        return;
        if ((localKabaoCommonResult != null) && ("1911".equalsIgnoreCase(localKabaoCommonResult.resultCode)) && (StringUtils.isNotBlank(localKabaoCommonResult.resultDesc)))
        {
          Intent localIntent = new Intent();
          AlipassInfo.More localMore = new AlipassInfo.More();
          localMore.setUrl(localKabaoCommonResult.resultDesc);
          localIntent.putExtra("more", localMore);
          an.a().v(localIntent, this.mApp);
          return;
        }
        a(localKabaoCommonResult);
      }
    }
  }

  @UiThread
  public void a(CardPreviewResult paramCardPreviewResult, MemberCardRequest paramMemberCardRequest, String paramString)
  {
    dismissProgressDialog();
    d locald = new d(paramCardPreviewResult);
    if (locald.i())
    {
      a(paramCardPreviewResult);
      return;
    }
    if (!locald.c())
    {
      f();
      return;
    }
    this.l.setTitleText(locald.d());
    this.m.refreshUI(locald.e(), locald.f(), locald.g());
    this.n.removeAllViews();
    APLinearLayout localAPLinearLayout = this.n;
    int i1;
    int i2;
    APTableView localAPTableView;
    if (locald.a())
    {
      i1 = locald.b();
      Iterator localIterator = locald.h().iterator();
      i2 = 0;
      if (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (!StringUtils.isNotBlank(str))
          break label319;
        localAPTableView = new APTableView(this);
        localAPTableView.setArrowImageVisibility(8);
        localAPTableView.setLeftText(str);
        localAPTableView.setEnabled(false);
        if (i1 > 1)
          if (i2 == 0)
          {
            localAPTableView.setType(17);
            label196: localAPLinearLayout.addView(localAPTableView);
          }
      }
    }
    label319: for (int i3 = i2 + 1; ; i3 = i2)
    {
      i2 = i3;
      break;
      if (i2 == i1 - 1)
      {
        localAPTableView.setType(18);
        break label196;
      }
      localAPTableView.setType(19);
      break label196;
      localAPTableView.setType(16);
      break label196;
      this.o.setVisibility(0);
      this.o.setOnClickListener(new bu(this, paramMemberCardRequest, paramString));
      long l1 = System.currentTimeMillis() - this.s;
      new StringBuilder("领卡模板加载时间").append(l1).toString();
      this.s = 0L;
      return;
    }
  }

  @UiThread
  protected void a(PassInfoResult paramPassInfoResult, String paramString)
  {
    if ((paramPassInfoResult == null) || (paramPassInfoResult.getPassInfo() == null) || (paramPassInfoResult.getPassInfo().getPassBaseInfo() == null) || (paramPassInfoResult.getPassInfo().getPassBaseInfo().passId == null) || (paramString == null))
      a(paramPassInfoResult);
    while (isFinishing())
      return;
    Object localObject = MemberCardDetailActivity_.class;
    String str = paramPassInfoResult.getPassInfo().getPassBaseInfo().type;
    if ((StringUtils.isNotBlank(str)) && (!StringUtils.equals(str, "card")))
      localObject = AlipassDetailActivity_.class;
    Intent localIntent = new Intent(this, (Class)localObject);
    localIntent.putExtra("p", paramPassInfoResult.getPassInfo().getPassBaseInfo().passId);
    localIntent.putExtra("b", paramString);
    if (c(paramPassInfoResult))
    {
      localIntent.putExtra("need_city", paramPassInfoResult.resultCode);
      localIntent.putExtra("primary_prields", paramPassInfoResult.getPassInfo().getPrimaryFields());
    }
    while (true)
    {
      this.mApp.getMicroApplicationContext().startActivity(this.mApp, localIntent);
      dismissProgressDialog();
      finish();
      return;
      localIntent.putExtra("cache_version", paramPassInfoResult.getPassInfo().getPassBaseInfo().gmtModified);
      localIntent.putExtra("pass_is_cacheable", true);
    }
  }

  @UiThread
  protected void a(KabaoCommonResult paramKabaoCommonResult)
  {
    if (!isFinishing())
    {
      if ((paramKabaoCommonResult != null) && (!StringUtils.isEmpty(paramKabaoCommonResult.resultView)))
      {
        bw localbw = new bw(this);
        String str = paramKabaoCommonResult.resultView;
        new AlertDialog.Builder(this).setMessage(str).setPositiveButton(getResources().getString(R.string.alipass_ok), localbw).setCancelable(false).create().show();
      }
    }
    else
      return;
    ai.e(this, new bx(this), R.string.alipass_open_membercard_error_msg);
  }

  @UiThread
  protected void b()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("tid", this.p.tid);
    setResult(-1, localIntent);
  }

  @Background
  protected void c()
  {
    d();
    showProgressDialog("加载中", true, this);
    try
    {
      a(this.h.c(this.p), this.p, this.q);
      return;
    }
    catch (RpcException localRpcException)
    {
      do
      {
        this.j = localRpcException;
        dismissProgressDialog();
      }
      while (k());
      getBundle(null);
    }
  }

  @UiThread
  protected void d()
  {
    this.k.setVisibility(0);
  }

  public final void e()
  {
    a();
  }

  @UiThread
  protected void f()
  {
    if (!isFinishing())
    {
      bv localbv = new bv(this);
      new AlertDialog.Builder(this).setMessage(getResources().getString(R.string.member_card_company_no_card)).setPositiveButton(getResources().getString(R.string.alipass_ok), localbv).setCancelable(false).create().show();
    }
  }

  @UiThread
  protected void g()
  {
    if (!isFinishing())
      ai.e(this, new by(this), R.string.member_card_open_msg);
  }

  @UiThread
  protected void h()
  {
    if (!isFinishing())
      ai.e(this, new bz(this), new ca(this));
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.s = System.currentTimeMillis();
    a = false;
    c = true;
    b = true;
    if (this.e == null)
    {
      this.e = LayoutInflater.from(this).inflate(R.layout.main_alipass_querycard, null);
      this.l = ((APTitleBar)this.e.findViewById(R.id.tbar_query_card));
      this.k = ((APScrollView)this.e.findViewById(R.id.sview_query_card));
      this.m = ((MemberCardHeaderStyle)this.k.findViewById(R.id.layout_card_view));
      this.m.refreshUI(null, "color_transparent", null);
      this.n = ((APLinearLayout)this.k.findViewById(R.id.layout_query_card_privilage));
      this.o = ((APButton)this.k.findViewById(R.id.button_add_card));
      this.i = new k(this, (ViewGroup)this.e, this.mApp, this);
      if (!i())
        this.k.setVisibility(8);
      setContentView(this.e);
    }
    this.g = new com.alipay.mobile.alipassapp.biz.ZResources.a.a(this.mApp, getApplicationContext());
    this.h = new com.alipay.mobile.alipassapp.biz.c.a(AlipayApplication.getInstance().getMicroApplicationContext());
    Intent localIntent = getIntent();
    Bundle localBundle;
    if (((this.mApp instanceof AlipassApp)) && (StringUtils.isBlank(((AlipassApp)this.mApp).getSourceId())))
      localBundle = ((AlipassApp)this.mApp).getAppBundle();
    while (true)
    {
      if (localBundle != null)
        if ((!StringUtils.isEmpty(localBundle.getString("pid"))) || (!StringUtils.isEmpty(localBundle.getString("cid"))))
          break label344;
      int i1;
      label344: for (int i2 = 1; ; i2 = 0)
      {
        if (i2 == 0)
          break label350;
        getBundle(null);
        i1 = 0;
        if (i1 != 0)
          a();
        return;
        if ((localIntent == null) || (localIntent.getExtras() == null))
          break label632;
        localBundle = localIntent.getExtras();
        break;
      }
      label350: if (this.p == null)
        this.p = new MemberCardRequest();
      this.p.appId = localBundle.getString("aid");
      this.p.userId = localBundle.getString("uid");
      this.p.partnerId = localBundle.getString("pid");
      this.p.customerId = localBundle.getString("cid");
      this.p.cardType = localBundle.getString("ctype");
      this.p.tid = localBundle.getString("tid");
      this.p.openChannel = localBundle.getString("channel");
      this.p.extend = localBundle.getString("ext");
      this.q = localBundle.getString("b");
      if ("m".equals(this.q))
        this.q = "MCARD";
      String str;
      if (StringUtils.isEmpty(this.p.userId))
      {
        MemberCardRequest localMemberCardRequest = this.p;
        AuthService localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
        if ((localAuthService != null) && (localAuthService.getUserInfo() != null))
        {
          str = localAuthService.getUserInfo().getUserId();
          label575: localMemberCardRequest.userId = str;
        }
      }
      else
      {
        if (!StringUtils.isNotBlank(this.p.customerId))
          break label618;
      }
      label618: for (this.r = this.p.customerId; ; this.r = this.p.partnerId)
      {
        i1 = 1;
        break;
        str = null;
        break label575;
      }
      label632: localBundle = null;
    }
  }

  protected void onDestroy()
  {
    if (this.g != null)
      this.g.getInstance();
    super.onDestroy();
  }

  protected void onResume()
  {
    if (c)
      c = false;
    while (true)
    {
      super.onResume();
      return;
      if (a)
      {
        showProgressDialog("领取中", true, this);
        BackgroundExecutor.execute(new bt(this));
        a = false;
      }
      if (!b)
      {
        getBundle(null);
        b = true;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassQueryCardActivity
 * JD-Core Version:    0.6.2
 */