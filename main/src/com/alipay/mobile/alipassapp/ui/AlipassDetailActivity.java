package com.alipay.mobile.alipassapp.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Toast;
import com.alibaba.fastjson.JSON;
import com.alipay.kabaoprod.biz.mwallet.pass.request.RemindNotifyReq;
import com.alipay.kabaoprod.biz.mwallet.pass.result.DeletePassResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult;
import com.alipay.kabaoprod.core.model.model.PassBaseInfo;
import com.alipay.kabaoprod.core.model.model.PassInfo;
import com.alipay.mobile.alipassapp.R.drawable;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.biz.bean.AlipassListCache;
import com.alipay.mobile.alipassapp.biz.bean.AlipassOffline;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.Operation.OperationString;
import com.alipay.mobile.alipassapp.biz.service.g;
import com.alipay.mobile.alipassapp.ui.app.AlipassApp;
import com.alipay.mobile.alipassapp.ui.common.ai;
import com.alipay.mobile.alipassapp.ui.common.aq;
import com.alipay.mobile.alipassapp.ui.common.k;
import com.alipay.mobile.alipassapp.ui.common.p;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.commonui.widget.APPopupWindow;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.discoverycommon.api.service.AlipassPayBridgeService;
import com.alipay.mobile.discoverycommon.api.service.CreateDynamicCodeService;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import java.sql.SQLException;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

@EActivity
public class AlipassDetailActivity extends BaseActivity
  implements DialogInterface.OnCancelListener, p
{
  private static final String a = AlipassDetailActivity.class.getSimpleName();
  private CreateDynamicCodeService A;
  private AlipassPayBridgeService B;
  private View.OnClickListener C = new f(this);
  private View.OnClickListener D = new h(this);
  private View.OnClickListener E = new i(this);
  private com.alipay.mobile.alipassapp.viewcontrol.a b;
  private View c;
  private AlipassInfo d;
  private com.alipay.mobile.alipassapp.biz.a e;
  private com.alipay.mobile.alipassapp.biz.a.a f;
  private String g;
  private boolean h = false;
  private String i;
  private String j;
  private boolean k = false;
  private boolean l = false;
  private String[] m;
  private APPullRefreshView n = null;
  private boolean o = false;
  private AtomicBoolean p = new AtomicBoolean();
  private APTitleBar q;
  private APRelativeLayout r = null;
  private k s;
  private boolean t = false;
  private PassInfoResult u = null;
  private APPopupWindow v;
  private APTextView w;
  private boolean x = false;
  private String y;
  private long z;

  private boolean c(String paramString)
  {
    try
    {
      AlipassListCache localAlipassListCache = this.f.e(paramString);
      boolean bool = false;
      if (localAlipassListCache != null)
        if (localAlipassListCache.getStatus() != 3)
        {
          int i1 = localAlipassListCache.getStatus();
          bool = false;
          if (i1 != 4);
        }
        else
        {
          bool = true;
        }
      return bool;
    }
    catch (SQLException localSQLException)
    {
      localSQLException.printStackTrace();
    }
    return false;
  }

  private void g()
  {
    this.q = ((APTitleBar)findViewById(R.id.titlebar));
    this.w = ((APTextView)findViewById(R.id.tv_for_location));
    if (this.h)
    {
      this.q.setGenericButtonVisiable(true);
      this.q.setGenericButtonIconResource(R.drawable.delete);
      this.q.setGenericButtonListener(this.C);
      return;
    }
    this.q.setGenericButtonVisiable(true);
    this.q.setGenericButtonIconResource(R.drawable.alipass_detail_btn_more);
    this.q.setGenericButtonListener(new c(this));
  }

  private boolean h()
  {
    if ((this.k) && (this.g != null))
      try
      {
        this.u = this.f.b(this.g, this.j);
        if ((this.u != null) && (this.u.success) && (this.u.getPassInfo() != null));
        for (boolean bool = true; ; bool = false)
        {
          this.t = bool;
          a(this.u);
          if ((!this.t) || (this.i == null) || (this.i.trim().length() <= 0))
            break;
          long l1 = Long.parseLong(this.u.getPassInfo().getPassBaseInfo().gmtModified);
          long l2 = Long.parseLong(this.i);
          if (l1 < l2)
            break;
          return true;
        }
        return false;
      }
      catch (Exception localException)
      {
        new StringBuilder("查询详情DAO异常passId=").append(this.g).toString();
      }
    return false;
  }

  private void i()
  {
    boolean bool = true;
    if (this.l)
      if (j())
        k();
    do
    {
      do
        return;
      while (this.g == null);
      if (c(this.g))
      {
        toast(getResources().getString(R.string.alipass_is_deleted), 0);
        return;
      }
      if (!h())
        break;
    }
    while (l() > 0);
    try
    {
      d();
      c();
      this.f.a(this.u, this.j, 1);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    if (!this.t);
    while (true)
    {
      a(bool);
      c();
      return;
      bool = false;
    }
  }

  private boolean j()
  {
    boolean bool = true;
    try
    {
      localAlipassOffline = this.f.c(this.m[0], this.m[1]);
      if ((localAlipassOffline == null) || (localAlipassOffline.getPassPath() == null))
        throw new NullPointerException("文件不存在");
    }
    catch (SQLException localSQLException)
    {
      AlipassOffline localAlipassOffline;
      SimpleToast.makeToast(this, R.string.alipass_unsport, 0).show();
      AlipassDetailActivity.class.getSimpleName();
      localSQLException.getMessage();
      bool = false;
      do
      {
        return bool;
        com.alipay.mobile.alipassapp.biz.common.a locala = new com.alipay.mobile.alipassapp.biz.common.a(this);
        String str = localAlipassOffline.getPassPath();
        this.d = locala.a(str.substring(1 + str.lastIndexOf("/")), str.substring(1 + str.lastIndexOf("/")));
      }
      while ((this.d.getOperation().size() != 0) || (!"1".equals(this.d.getPassBaseInfo().getFormatVersion())));
      this.d.getOperation().add(new AlipassInfo.Operation.OperationString("", "stamp", "", this.d.getPassBaseInfo().getStatus()));
      return bool;
    }
    catch (NullPointerException localNullPointerException)
    {
      while (true)
      {
        SimpleToast.makeToast(this, R.string.alipass_unsport, 0).show();
        AlipassDetailActivity.class.getSimpleName();
        localNullPointerException.getMessage();
      }
    }
    catch (IllegalStateException localIllegalStateException)
    {
      label74: break label74;
    }
  }

  private void k()
  {
    String str1 = (String)aq.a.get(this.d.getPassBaseInfo().getType());
    if (str1 == null)
    {
      String str2 = this.g;
      String str3 = JSON.toJSONString(this.d.getPassBaseInfo());
      try
      {
        AlipassListCache localAlipassListCache = this.f.e(str2);
        if (localAlipassListCache != null)
        {
          localAlipassListCache.setPassBaseInfo(str3);
          this.f.a(localAlipassListCache);
          this.x = true;
        }
        return;
      }
      catch (SQLException localSQLException)
      {
        localSQLException.printStackTrace();
        return;
      }
    }
    try
    {
      this.b = ((com.alipay.mobile.alipassapp.viewcontrol.a)Class.forName(str1).newInstance());
      this.A.setPassId(this.d.getPassBaseInfo().getPassId());
      this.b.a(this, this.c, this.mApp);
      this.b.a(this.d, this.A, this.B);
      g();
      return;
    }
    catch (InstantiationException localInstantiationException)
    {
      localInstantiationException.printStackTrace();
      SimpleToast.makeToast(this, R.string.alipass_unsport, 0).show();
      return;
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
      SimpleToast.makeToast(this, R.string.alipass_unsport, 0).show();
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      localClassNotFoundException.printStackTrace();
      SimpleToast.makeToast(this, R.string.alipass_unsport, 0).show();
    }
  }

  private int l()
  {
    if ((this.k) && (this.g != null))
      try
      {
        int i1 = this.f.c(this.g);
        return i1;
      }
      catch (Exception localException)
      {
        new StringBuilder("查询详情DAO异常passId=").append(this.g).toString();
      }
    return 0;
  }

  private static String m()
  {
    AuthService localAuthService = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    if ((localAuthService == null) || (localAuthService.getUserInfo() == null))
      return null;
    return localAuthService.getUserInfo().getUserId();
  }

  @UiThread
  protected void a()
  {
    if (!isFinishing())
      ai.a(this, new d(this), new e(this));
  }

  @UiThread
  void a(DeletePassResult paramDeletePassResult)
  {
    dismissProgressDialog();
    Intent localIntent;
    if ((paramDeletePassResult != null) && (paramDeletePassResult.success))
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("userId", m());
      localBundle.putInt("action", 2);
      g.a(localBundle);
      localIntent = new Intent();
      if (this.l)
        break label83;
      localIntent.putExtra("p", this.g);
    }
    while (true)
    {
      setResult(-1, localIntent);
      finish();
      return;
      label83: localIntent.putExtra("pass_offline_data", this.m);
    }
  }

  @UiThread
  public void a(PassInfoResult paramPassInfoResult)
  {
    dismissProgressDialog();
    if (this.o)
      this.n.refreshFinished();
    APTextView localAPTextView;
    if ((!this.p.get()) && (paramPassInfoResult != null))
    {
      localAPTextView = (APTextView)this.c.findViewById(R.id.alipass_access_deny);
      if (!paramPassInfoResult.success)
        break label313;
      localAPTextView.setVisibility(8);
      this.d = new AlipassInfo(paramPassInfoResult.getPassInfo());
      this.d.setBizType(this.j);
      if ((paramPassInfoResult.getPassInfo() != null) && (paramPassInfoResult.getPassInfo().getPassBaseInfo() != null))
      {
        this.y = paramPassInfoResult.getPassInfo().getPassBaseInfo().partnerId;
        if ((this.d.getOperation().size() == 0) && ("1".equals(this.d.getPassBaseInfo().getFormatVersion())))
          this.d.getOperation().add(new AlipassInfo.Operation.OperationString("", "stamp", "", this.d.getPassBaseInfo().getStatus()));
      }
      k();
      long l1 = System.currentTimeMillis() - this.z;
      new StringBuilder("卡券详情AlipassDetailActivity加载时间").append(l1).toString();
      AlipayApplication localAlipayApplication = this.mMicroApplicationContext.getApplicationContext();
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITORPERF;
      String str = getClass().getName();
      String[] arrayOfString = new String[4];
      arrayOfString[0] = "";
      arrayOfString[1] = "";
      arrayOfString[2] = String.valueOf(l1);
      arrayOfString[3] = "";
      AlipayLogAgent.writeLog(localAlipayApplication, localBehaviourIdEnum, null, null, null, null, str, "-", "perf_open_passinfodetail", null, "s", "c", arrayOfString);
    }
    label313: 
    do
    {
      return;
      if ("1504".equals(paramPassInfoResult.resultCode))
      {
        localAPTextView.setVisibility(0);
        localAPTextView.setText(paramPassInfoResult.resultView);
        return;
      }
    }
    while (!StringUtils.equalsIgnoreCase("1509", paramPassInfoResult.resultCode));
    a();
  }

  @Background
  void a(String paramString)
  {
    showProgressDialog("正在删除", true, this);
    try
    {
      DeletePassResult localDeletePassResult2 = this.e.a(paramString, true);
      localDeletePassResult1 = localDeletePassResult2;
      a(localDeletePassResult1);
      return;
    }
    catch (RpcException localRpcException)
    {
      while (true)
        DeletePassResult localDeletePassResult1 = null;
    }
  }

  @Background
  public void a(boolean paramBoolean)
  {
    if (paramBoolean)
      showProgressDialog("加载中", true, this);
    try
    {
      this.p.set(false);
      localPassInfoResult = this.e.a(this.g, false, true);
    }
    catch (RpcException localRpcException)
    {
      try
      {
        PassInfoResult localPassInfoResult;
        if (this.i != null)
        {
          boolean bool = this.k;
          i1 = 0;
          if (!bool)
          {
            if ((i1 != 0) && (localPassInfoResult != null) && (localPassInfoResult.success))
            {
              this.f.a(localPassInfoResult, this.j, 1);
              AlipassListCache localAlipassListCache1 = this.f.e(this.g);
              AlipassInfo localAlipassInfo = new AlipassInfo(localPassInfoResult.getPassInfo());
              if (localAlipassListCache1 == null)
              {
                AlipassListCache localAlipassListCache2 = new AlipassListCache();
                localAlipassListCache2.setGmtModified(localAlipassInfo.getPassBaseInfo().getGmtModified());
                localAlipassListCache2.setPassId(this.g);
                localAlipassListCache2.setUserId(m());
                localAlipassListCache2.setPassBaseInfo(JSON.toJSONString(localAlipassInfo.getPassBaseInfo()));
                this.f.b(localAlipassListCache2);
              }
            }
            a(localPassInfoResult);
            return;
          }
        }
      }
      catch (SQLException localSQLException)
      {
        while (true)
          localSQLException.printStackTrace();
        localRpcException = localRpcException;
        a(null);
        if ((!this.t) && (!this.s.a(localRpcException)))
          throw localRpcException;
      }
      catch (IllegalStateException localIllegalStateException)
      {
        while (true)
        {
          continue;
          int i1 = 1;
        }
      }
    }
  }

  // ERROR //
  @Background
  void b()
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 661
    //   4: iconst_1
    //   5: aload_0
    //   6: invokevirtual 665	com/alipay/mobile/alipassapp/ui/AlipassDetailActivity:showProgressDialog	(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    //   9: aload_0
    //   10: getfield 126	com/alipay/mobile/alipassapp/ui/AlipassDetailActivity:f	Lcom/alipay/mobile/alipassapp/biz/a/a;
    //   13: aload_0
    //   14: getfield 301	com/alipay/mobile/alipassapp/ui/AlipassDetailActivity:m	[Ljava/lang/String;
    //   17: iconst_0
    //   18: aaload
    //   19: aload_0
    //   20: getfield 301	com/alipay/mobile/alipassapp/ui/AlipassDetailActivity:m	[Ljava/lang/String;
    //   23: iconst_1
    //   24: aaload
    //   25: invokeinterface 706 3 0
    //   30: istore 5
    //   32: new 519	com/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult
    //   35: dup
    //   36: invokespecial 707	com/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult:<init>	()V
    //   39: astore_2
    //   40: aload_2
    //   41: iload 5
    //   43: putfield 520	com/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult:success	Z
    //   46: new 242	java/lang/StringBuilder
    //   49: dup
    //   50: ldc_w 709
    //   53: invokespecial 247	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   56: iload 5
    //   58: invokevirtual 712	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   61: invokevirtual 254	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   64: pop
    //   65: aload_0
    //   66: aload_2
    //   67: invokevirtual 674	com/alipay/mobile/alipassapp/ui/AlipassDetailActivity:a	(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V
    //   70: return
    //   71: astore 4
    //   73: aconst_null
    //   74: astore_2
    //   75: goto -10 -> 65
    //   78: astore 8
    //   80: goto -15 -> 65
    //   83: astore_3
    //   84: aconst_null
    //   85: astore_2
    //   86: goto -21 -> 65
    //   89: astore 7
    //   91: goto -26 -> 65
    //   94: astore_1
    //   95: aconst_null
    //   96: astore_2
    //   97: goto -32 -> 65
    //   100: astore 6
    //   102: goto -37 -> 65
    //
    // Exception table:
    //   from	to	target	type
    //   9	40	71	android/database/SQLException
    //   40	65	78	android/database/SQLException
    //   9	40	83	java/lang/IllegalStateException
    //   40	65	89	java/lang/IllegalStateException
    //   9	40	94	java/sql/SQLException
    //   40	65	100	java/sql/SQLException
  }

  // ERROR //
  @Background
  void b(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ldc_w 661
    //   4: iconst_1
    //   5: aload_0
    //   6: invokevirtual 665	com/alipay/mobile/alipassapp/ui/AlipassDetailActivity:showProgressDialog	(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    //   9: aload_0
    //   10: getfield 126	com/alipay/mobile/alipassapp/ui/AlipassDetailActivity:f	Lcom/alipay/mobile/alipassapp/biz/a/a;
    //   13: aload_1
    //   14: invokeinterface 714 2 0
    //   19: istore 6
    //   21: new 519	com/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult
    //   24: dup
    //   25: invokespecial 707	com/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult:<init>	()V
    //   28: astore_3
    //   29: aload_3
    //   30: iload 6
    //   32: putfield 520	com/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult:success	Z
    //   35: new 242	java/lang/StringBuilder
    //   38: dup
    //   39: ldc_w 716
    //   42: invokespecial 247	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   45: iload 6
    //   47: invokevirtual 712	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   50: invokevirtual 254	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: pop
    //   54: aload_0
    //   55: aload_3
    //   56: invokevirtual 674	com/alipay/mobile/alipassapp/ui/AlipassDetailActivity:a	(Lcom/alipay/kabaoprod/biz/mwallet/pass/result/DeletePassResult;)V
    //   59: return
    //   60: astore 5
    //   62: aconst_null
    //   63: astore_3
    //   64: goto -10 -> 54
    //   67: astore 9
    //   69: goto -15 -> 54
    //   72: astore 4
    //   74: aconst_null
    //   75: astore_3
    //   76: goto -22 -> 54
    //   79: astore 8
    //   81: goto -27 -> 54
    //   84: astore_2
    //   85: aconst_null
    //   86: astore_3
    //   87: goto -33 -> 54
    //   90: astore 7
    //   92: goto -38 -> 54
    //
    // Exception table:
    //   from	to	target	type
    //   9	29	60	java/lang/IllegalStateException
    //   29	54	67	java/lang/IllegalStateException
    //   9	29	72	android/database/SQLException
    //   29	54	79	android/database/SQLException
    //   9	29	84	java/sql/SQLException
    //   29	54	90	java/sql/SQLException
  }

  @Background
  void c()
  {
    try
    {
      Intent localIntent = new Intent("com.alipay.mobile.intent.action.UPDATETODOLIST");
      LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(localIntent);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  @Background
  void d()
  {
    RemindNotifyReq localRemindNotifyReq = new RemindNotifyReq();
    localRemindNotifyReq.setPassId(this.g);
    this.e.a(localRemindNotifyReq);
  }

  public final void e()
  {
    i();
  }

  public void onBackPressed()
  {
    if ((this.b != null) && (this.b.b()))
    {
      this.b.c();
      return;
    }
    if ("TRAVEL".equalsIgnoreCase(this.j))
      AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "20000021", "", "travelItineraryDetails", "backIcon");
    Intent localIntent = new Intent();
    localIntent.putExtra("isNeedRefresh", this.x);
    setResult(-1, localIntent);
    finish();
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    this.p.set(true);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.z = System.currentTimeMillis();
    this.c = LayoutInflater.from(this).inflate(R.layout.main_alipass_detail, null);
    this.n = ((APPullRefreshView)this.c.findViewById(R.id.details_pull_refresh_container));
    this.n.setRefreshListener(new b(this));
    this.r = ((APRelativeLayout)LayoutInflater.from(this).inflate(R.layout.alipass_detail_item, null));
    this.n.addView(this.r);
    setContentView(this.c);
    this.s = new k(this, (ViewGroup)this.c, this.mApp, this);
    this.e = new com.alipay.mobile.alipassapp.biz.c.a(this.mApp);
    this.f = new com.alipay.mobile.alipassapp.biz.a.a.a(this.mApp, this);
    this.A = ((CreateDynamicCodeService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(CreateDynamicCodeService.class.getName()));
    if (this.B == null)
      this.B = ((AlipassPayBridgeService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AlipassPayBridgeService.class.getName()));
    Intent localIntent = getIntent();
    this.g = localIntent.getExtras().getString("p");
    this.i = localIntent.getExtras().getString("cache_version");
    this.j = localIntent.getExtras().getString("b");
    this.k = localIntent.getExtras().getBoolean("pass_is_cacheable");
    this.l = localIntent.getExtras().getBoolean("pass_is_offline");
    this.h = localIntent.getExtras().getBoolean("is_invalid");
    if (this.l)
      this.m = localIntent.getExtras().getStringArray("pass_offline_data");
    if ((this.g == null) && ((this.mApp instanceof AlipassApp)))
    {
      Bundle localBundle = ((AlipassApp)this.mApp).getAppBundle();
      if (localBundle != null)
      {
        this.g = localBundle.getString("p");
        this.j = localBundle.getString("b");
        if ((this.j == null) || (!this.j.equals("t")))
          break label406;
      }
    }
    for (this.j = "TRAVEL"; ; this.j = "COUPON")
      label406: 
      do
      {
        g();
        i();
        return;
      }
      while ((this.j == null) || (!this.j.equals("c")));
  }

  protected void onDestroy()
  {
    this.A.onDestroy();
    this.B.closePayBridge();
    super.onDestroy();
    this.f.a();
  }

  protected void onPause()
  {
    this.A.onPause();
    super.onPause();
  }

  protected void onResume()
  {
    this.A.init(this, null, 3);
    this.A.onResume();
    super.onResume();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassDetailActivity
 * JD-Core Version:    0.6.2
 */