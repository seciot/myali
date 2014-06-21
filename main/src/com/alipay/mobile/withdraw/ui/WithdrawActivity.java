package com.alipay.mobile.withdraw.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.alipay.android.phone.wealth.withdraw.R.id;
import com.alipay.android.phone.wealth.withdraw.R.layout;
import com.alipay.android.phone.wealth.withdraw.R.string;
import com.alipay.asset.common.InputValidator;
import com.alipay.asset.common.ValidateResult;
import com.alipay.kabaoprod.biz.financial.withdraw.pre.ArriveDateInfo;
import com.alipay.kabaoprod.biz.financial.withdraw.pre.BankInfo;
import com.alipay.kabaoprod.biz.financial.withdraw.request.WithdrawReq;
import com.alipay.kabaoprod.biz.financial.withdraw.result.PreWithdrawResult;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.mobile.base.config.SwitchConfigUtils;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.misc.ExtViewUtil;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.rpc.ext.RpcExcutor;
import com.alipay.mobile.commonui.inputfomatter.APMoneyFormatter;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APMultiTextTableView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.security.RSAService;
import com.alipay.mobile.withdraw.app.WithdrawApp;
import com.alipay.mobile.withdraw.bean.WithdrawArriveDate;
import com.alipay.mobile.withdraw.bean.WithdrawBankInfo;
import com.alipay.mobile.withdraw.rpc.WithdrawRpcBiz;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.ArrayList;
import java.util.List;

@EActivity(resName="withdraw_main")
public class WithdrawActivity extends BaseActivity
{

  @ViewById
  APTitleBar a;
  private APInputBox b;
  private TextView c;
  private Button d;
  private TextView e;
  private p f = null;
  private ArrayList<WithdrawBankInfo> g = null;
  private String h;
  private String i;
  private String j;
  private WithdrawBankInfo k = null;
  private View l;
  private APMultiTextTableView m;
  private APTableView n;
  private BankCardListAdapter o = null;
  private AlertDialog p = null;
  private List<WithdrawArriveDate> q;
  private WithdrawArriveDate r;
  private ArriveDateListAdapter s = null;
  private AlertDialog t = null;
  private String u;
  private boolean v = false;

  private void b(String paramString1, String paramString2)
  {
    AlipayLogAgent.writeLog(this, BehaviourIdEnum.CLICKED, null, null, "20000033", null, "-", paramString1, paramString2);
  }

  private void g()
  {
    this.m.setLeftImage(ExtViewUtil.getLocalImage(this, "", "BANK_" + this.k.c()));
    this.m.setLeftText(this.k.b());
    this.m.setLeftText2(getString(R.string.l) + this.k.i() + " " + this.k.g());
    if ((this.g != null) && (this.g.size() > 1))
    {
      this.m.setArrowImageVisibility(0);
      this.m.setClickable(true);
    }
    while (true)
    {
      e();
      this.e.setText(this.k.e());
      return;
      this.m.setArrowImageVisibility(8);
      this.m.setClickable(false);
    }
  }

  private void h()
  {
    alert(null, getString(R.string.m), getString(R.string.n), new o(this), getString(R.string.BundlesManagerImpl), new b(this), Boolean.valueOf(false));
  }

  private void i()
  {
    showProgressDialog(getString(R.string.Loadable), true, null);
  }

  @AfterViews
  final void a()
  {
    this.a.setTitleText(getString(R.string.AppBundle));
    if (this.v)
    {
      new a(this, this, this.a).showWarningTip(getString(R.string.BundlesManager), null, null);
      return;
    }
    i();
    b();
    this.l = findViewById(R.id.o);
    this.l.setVisibility(8);
    this.b = ((APInputBox)findViewById(R.id.HostClassLoader));
    this.b.setTextFormatter(new APMoneyFormatter());
    this.f.addNeedCheckView(this.b.getEtContent());
    this.c = ((TextView)findViewById(R.id.AppBundle));
    this.e = ((TextView)findViewById(R.id.ZLog));
    this.m = ((APMultiTextTableView)findViewById(R.id.l));
    this.m.setOnClickListener(new f(this));
    this.n = ((APTableView)findViewById(R.id.DefaultThreadFactory));
    this.n.setClickable(false);
    this.n.setOnClickListener(new g(this));
    this.d = ((Button)findViewById(R.id.g));
    this.f.addNeedEnabledButton(this.d);
    this.d.setOnClickListener(new h(this));
    this.d.setEnabled(false);
    this.b.setOnFocusChangeListener(new e(this, "withdraw", "inputMoney"));
  }

  @UiThread
  protected void a(PreWithdrawResult paramPreWithdrawResult)
  {
    dismissProgressDialog();
    this.u = paramPreWithdrawResult.passwordType;
    List localList = paramPreWithdrawResult.bankList;
    if ((localList != null) && (localList.size() > 0))
    {
      this.l.setVisibility(0);
      this.g.clear();
      for (int i1 = 0; i1 < localList.size(); i1++)
      {
        BankInfo localBankInfo = (BankInfo)localList.get(i1);
        WithdrawBankInfo localWithdrawBankInfo2 = new WithdrawBankInfo().a(localBankInfo);
        this.g.add(localWithdrawBankInfo2);
      }
      if (this.o != null)
        this.o.notifyDataSetChanged();
      int i3;
      int i2;
      if ((this.h != null) && (!this.h.equals("")))
      {
        i3 = 0;
        i2 = 0;
      }
      while (i3 < this.g.size())
      {
        WithdrawBankInfo localWithdrawBankInfo1 = (WithdrawBankInfo)this.g.get(i3);
        String str2 = localWithdrawBankInfo1.a();
        String str3 = localWithdrawBankInfo1.i();
        if ((str2.equals(this.h)) || ((str2.contains(this.h)) && (localWithdrawBankInfo1.d().equals("katong"))) || ((str3.equals(this.j)) && (localWithdrawBankInfo1.c().equals(this.i))))
        {
          this.k = localWithdrawBankInfo1;
          i2 = 1;
        }
        i3++;
        continue;
        i2 = 0;
      }
      if (i2 == 0)
        this.k = ((WithdrawBankInfo)this.g.get(0));
      this.k.a(true);
      d();
      g();
      String str1 = paramPreWithdrawResult.availableAmount;
      this.c.setText(str1);
      return;
    }
    h();
  }

  @UiThread
  protected void a(KabaoCommonResult paramKabaoCommonResult)
  {
    dismissProgressDialog();
    ExtViewUtil.simpleAlert(this, paramKabaoCommonResult.resultView, new k(this));
  }

  protected final void a(String paramString)
  {
    int i1 = 1;
    if ((paramString != null) && (paramString.length() > 0) && (paramString.trim().length() == 0));
    while (i1 == 0)
    {
      return;
      ValidateResult localValidateResult = InputValidator.checkPaymentPassword(this, paramString, null);
      if (!localValidateResult.bRet)
      {
        toast(localValidateResult.strErr, 0);
        i1 = 0;
      }
    }
    i();
    b(paramString);
  }

  @Background
  protected void a(String paramString1, String paramString2)
  {
    WithdrawReq localWithdrawReq = new WithdrawReq();
    localWithdrawReq.bankAccountNo = this.k.a();
    localWithdrawReq.bankMark = this.k.c();
    localWithdrawReq.amount = paramString1;
    localWithdrawReq.payPassword = paramString2;
    localWithdrawReq.passwordType = this.u;
    localWithdrawReq.arrivedDateType = this.r.b();
    localWithdrawReq.needResendRandomCode = false;
    localWithdrawReq.randomCode = null;
    try
    {
      KabaoCommonResult localKabaoCommonResult = new WithdrawRpcBiz(this.mApp).a(localWithdrawReq);
      if (localKabaoCommonResult.success)
      {
        a(localKabaoCommonResult);
        return;
      }
      b(localKabaoCommonResult);
      return;
    }
    catch (RpcException localRpcException)
    {
      c();
      throw localRpcException;
    }
  }

  @Background
  protected void b()
  {
    try
    {
      PreWithdrawResult localPreWithdrawResult = new WithdrawRpcBiz(this.mApp).a();
      if (localPreWithdrawResult.success)
      {
        a(localPreWithdrawResult);
        return;
      }
      b(localPreWithdrawResult);
      return;
    }
    catch (RpcException localRpcException)
    {
      c();
      throw localRpcException;
    }
  }

  @UiThread
  protected void b(PreWithdrawResult paramPreWithdrawResult)
  {
    dismissProgressDialog();
    String str1 = paramPreWithdrawResult.resultCode;
    String str2 = paramPreWithdrawResult.resultView;
    if ((!"608".equals(str1)) && ("600".equals(str1)))
    {
      h();
      return;
    }
    alert(null, str2, getString(R.string.DefaultThreadFactory), new c(this), null, null, Boolean.valueOf(false));
  }

  @UiThread
  protected void b(KabaoCommonResult paramKabaoCommonResult)
  {
    dismissProgressDialog();
    String str1 = paramKabaoCommonResult.resultCode;
    String str2 = paramKabaoCommonResult.resultView;
    if ("2050".equals(str1))
    {
      Intent localIntent = new Intent(this, WithdrawSmsCheckActivity_.class);
      Bundle localBundle = new Bundle();
      localBundle.putString("smscheck_memo_key", str2);
      localIntent.putExtras(localBundle);
      this.mApp.getMicroApplicationContext().startActivityForResult(this.mApp, localIntent, 1);
      return;
    }
    if (("190".equals(str1)) || ("191".equals(str1)) || (str1.equals("1830")) || (str1.equals("1831")))
    {
      alert(null, str2, getString(R.string.DefaultThreadFactory), null, null, null);
      return;
    }
    if ("192".equals(str1))
    {
      alert(null, str2, getString(R.string.g), new d(this), getString(R.string.BundlesManagerImpl), null);
      return;
    }
    if (str1.equals("1832"))
    {
      alert(null, str2, getString(R.string.g), new l(this), getString(R.string.BundlesManagerImpl), null);
      return;
    }
    toast(str2, 0);
  }

  @Background
  protected void b(String paramString)
  {
    try
    {
      RSAService localRSAService = (RSAService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(RSAService.class.getName());
      if ((paramString != null) && (!paramString.equals("")))
        paramString = localRSAService.RSAEncrypt(paramString, false);
      c(paramString);
      return;
    }
    catch (RpcException localRpcException)
    {
      c();
      throw localRpcException;
    }
  }

  @UiThread
  protected void c()
  {
    dismissProgressDialog();
  }

  @UiThread
  protected void c(String paramString)
  {
    a(this.b.getInputedText().toString(), paramString);
  }

  protected final void d()
  {
    List localList = this.k.f();
    if (localList != null)
    {
      this.q.clear();
      for (int i1 = 0; i1 < localList.size(); i1++)
      {
        ArriveDateInfo localArriveDateInfo = (ArriveDateInfo)localList.get(i1);
        WithdrawArriveDate localWithdrawArriveDate = new WithdrawArriveDate();
        localWithdrawArriveDate.a(localArriveDateInfo);
        this.q.add(localWithdrawArriveDate);
      }
      if (this.s != null)
        this.s.notifyDataSetChanged();
      this.r = ((WithdrawArriveDate)this.q.get(0));
      this.r.a(true);
    }
  }

  protected final void e()
  {
    if ((this.q != null) && (this.q.size() > 0))
    {
      this.n.setRightText(this.r.a());
      if (this.q.size() > 1)
      {
        this.n.setArrowImageVisibility(0);
        this.n.setClickable(true);
      }
    }
    else
    {
      return;
    }
    this.n.setArrowImageVisibility(8);
    this.n.setClickable(false);
  }

  protected final void f()
  {
    ListView localListView = (ListView)LayoutInflater.from(this).inflate(R.layout.BundlesManager, null);
    localListView.addStatesFromChildren();
    localListView.setAdapter(this.s);
    localListView.setOnItemClickListener(new n(this));
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(getString(R.string.ZLog));
    localBuilder.setView(localListView);
    this.t = localBuilder.create();
    this.t.setCanceledOnTouchOutside(false);
    this.t.show();
    ((ViewGroup)localListView.getParent()).setPadding(0, 0, 0, 0);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((paramInt1 == 1) && (paramInt2 == -1) && (paramIntent != null) && (paramIntent.getBooleanExtra("isSmsCheckOk", false)))
      finish();
  }

  public void onBackPressed()
  {
    b("withdraw", "backIcon");
    super.onBackPressed();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.v = "true".equalsIgnoreCase(SwitchConfigUtils.getConfigValue("KABAOPROD_WITHDRAW_HIDE"));
    getWindow().setSoftInputMode(3);
    if ((this.mApp instanceof WithdrawApp))
    {
      this.h = ((WithdrawApp)this.mApp).getBankId();
      this.i = ((WithdrawApp)this.mApp).getBankMark();
      this.j = ((WithdrawApp)this.mApp).getBankIdLast4();
    }
    this.f = new p(this, (byte)0);
    this.g = new ArrayList();
    this.o = new BankCardListAdapter(this, this.g);
    this.q = new ArrayList();
    this.s = new ArriveDateListAdapter(this, this.q);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.WithdrawActivity
 * JD-Core Version:    0.6.2
 */