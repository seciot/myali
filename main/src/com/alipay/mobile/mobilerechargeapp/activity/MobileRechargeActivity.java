package com.alipay.mobile.mobilerechargeapp.activity;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.Toast;
import com.alipay.mobile.browser.HtmlActivityV2_;
import com.alipay.mobile.browser.handler.CMSHtmlActivityHandler;
import com.alipay.mobile.browser.handler.HtmlActivityHandlerRegister;
import com.alipay.mobile.browser.vo.HtmlActivityRequest;
import com.alipay.mobile.common.misc.ExtStringUtil;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.commonui.inputfomatter.APSplitTextFormatter;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APImageButton;
import com.alipay.mobile.commonui.widget.APListView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APSpinner;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierOrder;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierServcie;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.TaobaoBindingService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.mobilerechargeapp.MobileRechargeApp;
import com.alipay.mobile.mobilerechargeapp.R.color;
import com.alipay.mobile.mobilerechargeapp.R.drawable;
import com.alipay.mobile.mobilerechargeapp.R.string;
import com.alipay.mobile.mobilerechargeapp.adapter.AutoComlieteListAdapter;
import com.alipay.mobile.mobilerechargeapp.adapter.EcardVOWrapper;
import com.alipay.mobile.mobilerechargeapp.adapter.RechargeAmountAdapter;
import com.alipay.mobile.mobilerechargeapp.data.AutoInterface;
import com.alipay.mobile.mobilerechargeapp.data.ContactOperation;
import com.alipay.mobile.mobilerechargeapp.data.DisplayData;
import com.alipay.mobile.mobilerechargeapp.data.GenerateData;
import com.alipay.mobile.mobilerechargeapp.data.ItemData;
import com.alipay.mobile.mobilerechargeapp.data.SearchMatchRule;
import com.alipay.mobile.mobilerechargeapp.data.WarnStatus;
import com.alipay.mobile.mobilerechargeapp.history.RechargeHistoryInfo;
import com.alipay.mobile.mobilerechargeapp.history.RechargeHistoryManager;
import com.alipay.mobile.mobilerechargeapp.history.RechargeHistoryManagerImpl;
import com.alipay.mobile.mobilerechargeapp.utils.LogAgentWriteLog;
import com.alipay.mobile.mobilerechargeapp.utils.MobileSourceEnum;
import com.alipay.mobile.mobilerechargeapp.utils.MobilerechargeNetOperation;
import com.alipay.mobile.mobilerechargeapp.utils.PhoneContactUtil;
import com.alipay.mobile.mobilerechargeapp.utils.SelectAccountListener;
import com.alipay.mobile.mobilerechargeapp.utils.Validator;
import com.alipay.mobile.mobilerechargeapp.view.APButtonInputBoxAutoC;
import com.alipay.mobileprod.biz.recharge.MobileRechargeService;
import com.alipay.mobileprod.biz.recharge.dto.AlertSwitchRes;
import com.alipay.mobileprod.biz.recharge.dto.CreateOrderReq;
import com.alipay.mobileprod.biz.recharge.dto.CreateOrderRes;
import com.alipay.mobileprod.biz.recharge.dto.QueryEcardRes;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MobileRechargeActivity extends BaseActivity
  implements View.OnClickListener, View.OnTouchListener, AdapterView.OnItemSelectedListener, SelectAccountListener
{
  private static String l = "50";
  private static final String[] m = { "10", "20", "30", "50", "100", "200", "300", "500" };
  private Context A;
  private String B = "";
  private WarnStatus C;
  private boolean D = false;
  private int E = -1;
  private boolean F = false;
  private PhoneCashierCallback G = new av(this);
  private RechargeHistoryInfo H;
  private AutoInterface I = new ba(this);
  private boolean J = false;
  private TextWatcher K = new bc(this);
  protected APTitleBar a;
  protected APRelativeLayout b;
  protected APButtonInputBoxAutoC c;
  protected APTextView d;
  protected APSpinner e;
  protected APButton f;
  protected APButton g;
  protected APTextView h;
  protected APButton i;
  protected APButton j;
  protected APListView k;
  private MobileRechargeService n;
  private MobilerechargeNetOperation o = null;
  private AuthService p;
  private RechargeAmountAdapter q;
  private final Handler r = new Handler();
  private MobileSourceEnum s;
  private String t = "";
  private AutoComlieteListAdapter u;
  private ArrayList v = null;
  private ArrayList w = null;
  private ArrayList x = null;
  private DisplayData y = new DisplayData();
  private GenerateData z;

  private static ArrayList a(List paramList)
  {
    ArrayList localArrayList = new ArrayList();
    for (int i1 = -1 + paramList.size(); i1 >= 0; i1--)
    {
      ItemData localItemData = new ItemData();
      localItemData.a = ((RechargeHistoryInfo)paramList.get(i1)).getB();
      localItemData.b = ((RechargeHistoryInfo)paramList.get(i1)).getA();
      if (!localArrayList.contains(localItemData))
        localArrayList.add(localItemData);
    }
    return localArrayList;
  }

  private void a(String paramString1, String paramString2, String paramString3)
  {
    new StringBuilder("tradeNo= ").append(paramString1).append(" bizType=").append(paramString2).append(" bizSubType").append(paramString3).toString();
    PhoneCashierServcie localPhoneCashierServcie = (PhoneCashierServcie)this.mApp.getMicroApplicationContext().getExtServiceByInterface(PhoneCashierServcie.class.getName());
    PhoneCashierOrder localPhoneCashierOrder = new PhoneCashierOrder();
    localPhoneCashierOrder.setBizType(paramString2);
    if (paramString3 != null)
      localPhoneCashierOrder.setBizSubType(paramString3);
    while (true)
    {
      localPhoneCashierOrder.setPartnerID("");
      localPhoneCashierOrder.setOrderNo(paramString1);
      localPhoneCashierOrder.setShowBizResultPage(true);
      localPhoneCashierServcie.boot(localPhoneCashierOrder, this.G);
      return;
      localPhoneCashierOrder.setBizSubType("puc_charge");
    }
  }

  private void b(int paramInt)
  {
    g();
    a(getResources().getString(paramInt), -65536);
    this.f.setEnabled(false);
  }

  private static void b(View paramView)
  {
    paramView.setFocusableInTouchMode(true);
    paramView.setFocusable(true);
    paramView.requestFocus();
  }

  private void b(String paramString1, String paramString2)
  {
    new StringBuilder("setCurrentPhoneNumber  phoneNumber = ").append(paramString1).append(" name= ").append(paramString2).toString();
    if (this.u != null)
      this.u.a();
    this.c.getEtContent().setText(paramString1);
    c(paramString1, paramString2);
  }

  private void c(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0))
      this.c.getRightTextView().setText("");
    do
    {
      return;
      if ((this.t == null) || (this.t.length() == 0))
        this.t = "";
      if (paramString2 == null)
        paramString2 = "";
    }
    while ((this.mApp == null) || (!(this.mApp instanceof MobileRechargeApp)) || (((MobileRechargeApp)this.mApp).mHistoryManager == null));
    String str = ((MobileRechargeApp)this.mApp).mHistoryManager.b(paramString1);
    if (this.t.equals(paramString1))
      paramString2 = getString(R.string.k);
    while (true)
    {
      this.c.getRightTextView().setText(paramString2);
      return;
      if (g(paramString2))
        if (!g(str))
          paramString2 = str;
        else
          paramString2 = "";
    }
  }

  private String d(String paramString)
  {
    if (g(paramString))
      return l;
    if (!q())
      return l;
    String str = ((MobileRechargeApp)this.mApp).mHistoryManager.a(paramString);
    if (str != null)
      for (int i1 = 0; i1 < m.length; i1++)
        if (m[i1].equals(str))
          return str;
    return l;
  }

  private boolean d()
  {
    if (getIntent() == null)
      return false;
    boolean bool = q();
    Bundle localBundle = null;
    if (bool)
      localBundle = ((MobileRechargeApp)this.mApp).mParams;
    if (localBundle == null)
      return false;
    String str = localBundle.getString("actionType");
    return (str != null) && (!"".equalsIgnoreCase(str)) && (str.equalsIgnoreCase("cphc"));
  }

  private String e()
  {
    UserInfo localUserInfo = this.p.getUserInfo();
    if ((localUserInfo != null) && (localUserInfo.getMobileNumber() != null))
      return localUserInfo.getMobileNumber();
    return "";
  }

  private String e(String paramString)
  {
    if (getIntent() == null)
      return null;
    if ((this.mApp == null) || (!(this.mApp instanceof MobileRechargeApp)))
      return null;
    Bundle localBundle = ((MobileRechargeApp)this.mApp).mParams;
    new StringBuilder("External param is:").append(localBundle).toString();
    if (localBundle == null)
      return null;
    return localBundle.getString(paramString);
  }

  private String f()
  {
    String str1 = e("returnUrl");
    try
    {
      str2 = new String(Base64.decode(str1, 0));
      new StringBuilder("External param, returnUrl is:").append(str2).toString();
      return str2;
    }
    catch (Exception localException)
    {
      while (true)
        String str2 = str1;
    }
  }

  private void f(String paramString)
  {
    int i1 = 0;
    if (i1 < m.length)
      if (!m[i1].equals(paramString));
    while (true)
    {
      this.e.setSelection(i1);
      return;
      i1++;
      break;
      i1 = -1;
    }
  }

  private void g()
  {
    RechargeAmountAdapter localRechargeAmountAdapter = this.q;
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString = m;
    int i1 = arrayOfString.length;
    for (int i2 = 0; i2 < i1; i2++)
      localArrayList.add(new EcardVOWrapper(arrayOfString[i2]));
    localRechargeAmountAdapter.a(localArrayList);
    f(l);
    a("", getResources().getColor(R.color.d));
    this.h.setText("");
    this.e.setEnabled(false);
    h();
  }

  private static boolean g(String paramString)
  {
    return (paramString == null) || (paramString.length() == 0);
  }

  private void h()
  {
    EcardVOWrapper localEcardVOWrapper = (EcardVOWrapper)this.e.getSelectedItem();
    if (localEcardVOWrapper == null)
      return;
    if (localEcardVOWrapper.f())
    {
      this.f.setEnabled(false);
      return;
    }
    this.f.setEnabled(true);
  }

  private void h(String paramString)
  {
    alert(null, paramString, "确定", new aq(this), null, null);
  }

  private String i()
  {
    return Validator.b(k(this.c.getInputedText().trim()));
  }

  private void i(String paramString)
  {
    alert(null, paramString, "重试", new ar(this), "取消", new as(this));
  }

  private String j()
  {
    return k(this.c.getRightTextView().getText().toString().trim());
  }

  private void j(String paramString)
  {
    alert(null, paramString, "重试", new at(this), "取消", new au(this));
  }

  private static String k(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0))
      paramString = paramString.replace(" ", "");
    return paramString;
  }

  private void k()
  {
    EcardVOWrapper localEcardVOWrapper = (EcardVOWrapper)this.e.getSelectedItem();
    if ((localEcardVOWrapper == null) || (localEcardVOWrapper.f()))
    {
      Toast.makeText(this, "请选择正确的充值面额", 1).show();
      return;
    }
    String str = j();
    if (Validator.a(str, getResources().getString(R.string.k)))
      str = "";
    this.H = new RechargeHistoryInfo(i(), str, this.d.getText().toString(), localEcardVOWrapper.a());
    a(i(), localEcardVOWrapper);
  }

  private ArrayList l()
  {
    if (!q())
      return new ArrayList();
    RechargeHistoryManager localRechargeHistoryManager = ((MobileRechargeApp)this.mApp).mHistoryManager;
    Object localObject = new ArrayList();
    if (localRechargeHistoryManager != null)
      localObject = localRechargeHistoryManager.a();
    return a((List)localObject);
  }

  private void m()
  {
    ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
  }

  private void n()
  {
    g();
    this.c.getRightTextView().setText("");
    this.f.setEnabled(false);
  }

  private void o()
  {
    if (this.u != null)
      this.u.b();
  }

  private void p()
  {
    if (this.u != null)
      this.u.a(this.y);
  }

  private boolean q()
  {
    return (this.mApp != null) && ((this.mApp instanceof MobileRechargeApp));
  }

  protected final void a()
  {
    if ((this.mApp == null) || (!(this.mApp instanceof MobileRechargeApp)))
    {
      finish();
      return;
    }
    this.A = this;
    this.o = new MobilerechargeNetOperation(this.mApp);
    this.z = new GenerateData(this.A);
    this.i.setOnClickListener(this);
    RpcService localRpcService = (RpcService)this.mApp.getServiceByInterface(RpcService.class.getName());
    this.p = ((AuthService)getExtServiceByInterface(AuthService.class.getName()));
    this.n = ((MobileRechargeService)localRpcService.getRpcProxy(MobileRechargeService.class));
    this.t = e();
    MobileRechargeApp localMobileRechargeApp = (MobileRechargeApp)this.mApp;
    UserInfo localUserInfo = this.p.getUserInfo();
    String str1;
    int i1;
    if ((localUserInfo != null) && (localUserInfo.getUserId() != null))
    {
      str1 = localUserInfo.getUserId();
      localMobileRechargeApp.mHistoryManager = new RechargeHistoryManagerImpl(this, str1);
      this.C = WarnStatus.a();
      this.w = l();
      String str2 = e("sourceId");
      if ((str2 == null) || (!str2.equalsIgnoreCase("publicplatform")))
        break label641;
      i1 = 1;
      label211: if (i1 == 0)
        break label647;
      LogAgentWriteLog.a(this, e("publicId"));
      label227: DisplayData localDisplayData = new DisplayData();
      if (this.u == null)
        this.u = new AutoComlieteListAdapter(this, this.t, localDisplayData);
      this.k.setAdapter(this.u);
      this.u.a(this.t);
      this.u.a(this.I);
      this.k.setAdapter(this.u);
      String str4 = e("dfp");
      if ((str4 != null) && (!"".equalsIgnoreCase(str4)))
        l = str4;
      this.c.getEtContent().setImeOptions(6);
      this.c.setNeedShowClearButton(true);
      this.c.getEtContent().setOnClickListener(this);
      this.c.getEtContent().setOnTouchListener(this);
      this.c.getEtContent().setLongClickable(true);
      this.c.setTextFormatter(new APSplitTextFormatter("3,8"));
      this.c.getRightTextView().setVisibility(0);
      this.c.setLength(13);
      this.c.getLastImgButton().setVisibility(0);
      this.c.getRightTextView().setTextColor(getResources().getColor(R.color.d));
      this.c.showLastImgBtn(true);
      this.c.getRightTextView().setOnClickListener(new bb(this));
      this.c.setLastImgButtonClickListener(new bd(this));
      b(this.a);
      this.q = new RechargeAmountAdapter(this);
      this.e.setOnItemSelectedListener(this);
      this.e.setAdapter(this.q);
      g();
      this.f.setEnabled(false);
      this.f.setOnClickListener(this);
      this.g.setOnClickListener(this);
      this.j.setOnClickListener(this);
      this.a.setGenericButtonVisiable(false);
      this.a.setGenericButtonIcon(getResources().getDrawable(R.drawable.a));
      this.a.setGenericButtonListener(new an(this));
      if (!this.p.isLogin())
        break label700;
      b();
    }
    while (true)
    {
      a(this.t);
      return;
      str1 = "anonymous";
      break;
      label641: i1 = 0;
      break label211;
      label647: String str3 = e("sourceId");
      if ((str3 != null) && (str3.equalsIgnoreCase("todo")));
      for (int i2 = 1; ; i2 = 0)
      {
        if (i2 == 0)
          break label693;
        LogAgentWriteLog.a(this);
        break;
      }
      label693: LogAgentWriteLog.b(this);
      break label227;
      label700: new be(this).start();
    }
  }

  protected void a(int paramInt)
  {
    showProgressDialog(getResources().getString(paramInt), true, new bh(this));
  }

  protected void a(int paramInt, ItemData paramItemData)
  {
    m();
    switch (paramInt)
    {
    default:
    case 0:
    case 30:
      do
      {
        do
          return;
        while (paramItemData == null);
        b(paramItemData.b, paramItemData.a);
        o();
        this.c.showLastImgBtn(true);
        this.s = MobileSourceEnum.b;
        b(paramItemData.b);
        return;
      }
      while (paramItemData == null);
      this.c.showLastImgBtn(true);
      c(paramItemData.b, paramItemData.a);
      this.s = MobileSourceEnum.f;
      b(paramItemData.b);
      return;
    case 2:
      o();
    case 40:
    }
    String str = k(this.c.getInputedText());
    if (!Validator.a(str))
      c(str, "");
    while (true)
    {
      this.c.showLastImgBtn(true);
      b(str);
      return;
      c(str, getString(R.string.l));
    }
  }

  protected void a(AlertSwitchRes paramAlertSwitchRes)
  {
    if (paramAlertSwitchRes == null);
    do
    {
      do
      {
        return;
        new StringBuilder("Rpc response.resultStatus:").append(paramAlertSwitchRes.resultStatus).toString();
      }
      while (paramAlertSwitchRes.resultStatus != 100);
      this.D = paramAlertSwitchRes.valid;
      this.E = paramAlertSwitchRes.bindingMobileStatus;
      this.F = paramAlertSwitchRes.totalSwitch;
      this.C.a(this.t, this.E, this.D);
    }
    while (!this.F);
    this.a.setGenericButtonVisiable(true);
  }

  protected void a(CreateOrderRes paramCreateOrderRes)
  {
    if (paramCreateOrderRes == null)
    {
      dismissProgressDialog();
      a("创建手机充值订单失败，未知错误。", -65536);
      this.f.setEnabled(true);
      return;
    }
    new StringBuilder("createOrder getResultStatus =").append(paramCreateOrderRes.getResultStatus()).toString();
    if (paramCreateOrderRes.getResultStatus() == 100)
    {
      LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(new Intent("com.alipay.mobile.basebiz.TRADE_STATUS_CHANGED"));
      a(paramCreateOrderRes.getTradeNo(), paramCreateOrderRes.getBizType(), paramCreateOrderRes.getBizSubType());
      dismissProgressDialog();
      return;
    }
    dismissProgressDialog();
    if (paramCreateOrderRes.getResultStatus() == 2002)
    {
      UserInfo localUserInfo = this.p.getUserInfo();
      if (ExtStringUtil.isEmpty(localUserInfo.getMobileNumber()))
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(this).setMessage(getResources().getString(R.string.i)).setPositiveButton(getResources().getString(R.string.e), new bj(this));
        localBuilder.setNegativeButton(getResources().getString(R.string.d), new ao(this));
        localBuilder.create().show();
        return;
      }
      String str = localUserInfo.getMobileNumber();
      TaobaoBindingService localTaobaoBindingService = (TaobaoBindingService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(TaobaoBindingService.class.getName());
      localTaobaoBindingService.attachContext(AlipayApplication.getInstance().getMicroApplicationContext());
      localTaobaoBindingService.setMicroApplication(this.mApp);
      localTaobaoBindingService.setBindingCallback(new bi(this));
      localTaobaoBindingService.queryTaobaoBindingByMobile(str);
      return;
    }
    j(paramCreateOrderRes.getMemo());
    new StringBuilder("CreateOrder=result.getMemo()").append(paramCreateOrderRes.getMemo()).toString();
  }

  protected void a(QueryEcardRes paramQueryEcardRes)
  {
    if (paramQueryEcardRes == null)
    {
      this.B = "";
      return;
    }
    dismissProgressDialog();
    new StringBuilder("queryEcard =").append(paramQueryEcardRes.getResultStatus()).toString();
    Bundle localBundle;
    if (paramQueryEcardRes.getResultStatus() == 100)
    {
      this.B = i();
      this.q.b(paramQueryEcardRes.getEcardVOList());
      f(d(k(this.c.getInputedText().trim())));
      this.d.setText(paramQueryEcardRes.getShowCatname());
      this.d.setVisibility(0);
      boolean bool = q();
      localBundle = null;
      if (bool)
        localBundle = ((MobileRechargeApp)this.mApp).mParams;
      if (localBundle == null)
        break label247;
    }
    label247: for (String str2 = localBundle.getString("cmsMsg"); ; str2 = "")
    {
      if ((str2 != null) && (!"".equalsIgnoreCase(str2)))
        this.h.setText(str2);
      while (true)
      {
        this.e.setEnabled(true);
        h();
        return;
        this.h.setText(paramQueryEcardRes.getCmsMsg());
      }
      this.B = "";
      if (paramQueryEcardRes.getResultStatus() == 2001)
      {
        String str1 = paramQueryEcardRes.getMemo();
        g();
        a(str1, -65536);
        this.f.setEnabled(false);
        return;
      }
      i(paramQueryEcardRes.getMemo());
      return;
    }
  }

  public final void a(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null);
    String str;
    do
    {
      return;
      str = paramCharSequence.toString().replace(" ", "");
      if (str.length() < 4)
      {
        n();
        this.y = GenerateData.a(this.w);
        p();
        return;
      }
      if (this.J)
      {
        new StringBuilder("isTouchItem = ").append(this.J).toString();
        return;
      }
      new StringBuilder("iLastNum = ").append(this.B).toString();
    }
    while ((paramCharSequence.length() == 0) || ((this.B.length() > 4) && (this.B.equals(str))));
    this.B = str;
    this.y = SearchMatchRule.a(this.x, paramCharSequence);
    new StringBuilder("mDisplayData.mDisplayType =").append(this.y.b).toString();
    if (str.length() != 11)
      n();
    switch (this.y.b)
    {
    default:
      new StringBuilder("都没有啊亲爱的 mDisplayData.mDisplayType=").append(this.y.b).toString();
      return;
    case 50:
      p();
      return;
    case 60:
      n();
      o();
      return;
    case 20:
      this.c.showLastImgBtn(true);
      m();
      if (Validator.a(str))
      {
        p();
        n();
        return;
      }
      o();
      b(R.string.j);
      return;
    case 30:
      o();
      if (Validator.a(str))
      {
        this.s = MobileSourceEnum.f;
        if (this.y.a.size() == 1)
        {
          a(30, (ItemData)this.y.a.get(0));
          return;
        }
        a(30, null);
        return;
      }
      m();
      b(R.string.j);
      return;
    case 40:
    }
    o();
    if (Validator.a(str))
    {
      a(40, null);
      return;
    }
    m();
    b(R.string.j);
  }

  protected void a(String paramString)
  {
    try
    {
      a(this.o.a());
      return;
    }
    catch (RpcException localRpcException)
    {
      new StringBuilder("Rpc Exception:").append(localRpcException).toString();
    }
  }

  protected void a(String paramString, int paramInt)
  {
    this.d.setVisibility(0);
    this.d.setText(paramString);
    this.d.setTextColor(paramInt);
  }

  protected void a(String paramString, EcardVOWrapper paramEcardVOWrapper)
  {
    a(R.string.f);
    try
    {
      String str1 = paramEcardVOWrapper.a();
      String str2 = paramEcardVOWrapper.b();
      String str3 = paramEcardVOWrapper.c();
      String str4 = paramEcardVOWrapper.d();
      String str5 = paramEcardVOWrapper.e();
      CreateOrderReq localCreateOrderReq = new CreateOrderReq();
      localCreateOrderReq.setMobile(paramString);
      localCreateOrderReq.setFacePrice(str1);
      localCreateOrderReq.setShowedPrice(str4);
      localCreateOrderReq.setItemId(str2);
      localCreateOrderReq.setChannelType(str5);
      localCreateOrderReq.setPromotionPrice(str3);
      String str6 = e("sourceId");
      new StringBuilder("get create source from param:").append(str6).toString();
      if (str6 == null)
        str6 = "default";
      localCreateOrderReq.setCreateSource(str6);
      if (this.s == null);
      for (MobileSourceEnum localMobileSourceEnum = MobileSourceEnum.a; ; localMobileSourceEnum = this.s)
      {
        localCreateOrderReq.setMobileSource(localMobileSourceEnum.toString());
        String str7 = e("activity");
        if (str7 == null)
          str7 = "";
        localCreateOrderReq.setActivity(str7);
        String str8 = e("tagid");
        if (str8 == null)
          str8 = "";
        localCreateOrderReq.setPromotion(str8);
        a(this.o.a(localCreateOrderReq));
        return;
      }
    }
    catch (RpcException localRpcException)
    {
      dismissProgressDialog();
      if ((localRpcException.getCode() != 4) && ((localRpcException.getCode() == 7) || (localRpcException.getCode() == 5)))
      {
        j("网络连接超时，请稍后再试。");
        return;
      }
      j("网络无法连接，请检查您的网络。");
    }
  }

  public final void a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || (paramString1.length() == 0))
    {
      alert(null, getResources().getString(R.string.a), "确定", new bg(this), null, null);
      return;
    }
    if (!Validator.a(paramString1))
    {
      toast("请选择正确的手机号码", 0);
      return;
    }
    o();
    this.c.showLastImgBtn(true);
    b(this.a);
    int i1;
    if (paramString1 != null)
    {
      int i4 = paramString1.length();
      i1 = 0;
      if (i4 > 0);
    }
    else
    {
      String str = e();
      i1 = 0;
      if (str != null)
      {
        int i2 = str.length();
        i1 = 0;
        if (i2 > 0)
        {
          int i3 = paramString1.indexOf(str);
          i1 = 0;
          if (i3 >= 0)
            i1 = 1;
        }
      }
    }
    if (i1 != 0)
      paramString2 = getResources().getString(R.string.k);
    this.J = true;
    b(paramString1, paramString2);
    this.s = MobileSourceEnum.e;
    b(paramString1);
  }

  protected final void a(ArrayList paramArrayList)
  {
    this.v = paramArrayList;
    if ((this.w == null) || (this.w.size() == 0))
      this.w = l();
    Iterator localIterator1 = this.w.iterator();
    while (localIterator1.hasNext())
    {
      ItemData localItemData2 = (ItemData)localIterator1.next();
      new StringBuilder("readRechargeHistoryInfo : name=").append(localItemData2.a).append("- number=").append(localItemData2.b).append("-").toString();
    }
    this.x = this.z.a(this.w, this.v, this.t);
    if (i().length() <= 0);
    for (this.y = GenerateData.a(this.w); ; this.y = new DisplayData())
    {
      Iterator localIterator2 = this.y.a.iterator();
      while (localIterator2.hasNext())
      {
        ItemData localItemData1 = (ItemData)localIterator2.next();
        new StringBuilder("mDisplayData.mList : name=").append(localItemData1.a).append("- number=").append(localItemData1.b).append("-").toString();
      }
    }
  }

  protected void b()
  {
    if ((this.mApp == null) || (!(this.mApp instanceof MobileRechargeApp)))
    {
      finish();
      return;
    }
    if (d())
    {
      if (getIntent() == null)
      {
        finish();
        return;
      }
      boolean bool = q();
      Bundle localBundle = null;
      if (bool)
        localBundle = ((MobileRechargeApp)this.mApp).mParams;
      if (localBundle == null)
      {
        finish();
        return;
      }
      String str3 = localBundle.getString("tn");
      String str4 = localBundle.getString("bt");
      String str5 = localBundle.getString("bst");
      if ((str3 != null) && (!"".equalsIgnoreCase(str3)) && (str4 != null) && (!"".equalsIgnoreCase(str4)) && (str5 != null) && (!"".equalsIgnoreCase(str5)))
      {
        a(str3, str4, str5);
        return;
      }
      toast("跳入该业务传入的参数不完整", 1);
      finish();
      return;
    }
    c();
    String str1 = PhoneContactUtil.a(e("mobileNo"));
    new StringBuilder("External param, phoneNumber is:").append(str1).toString();
    Validator.a(str1);
    if (Validator.a(str1));
    String str2;
    while (true)
    {
      b(str1, "");
      str2 = i();
      this.c.getEtContent().addTextChangedListener(this.K);
      if (!g(str2))
        break;
      g();
      return;
      str1 = e();
      if (!Validator.a(str1))
        if (q())
        {
          RechargeHistoryInfo localRechargeHistoryInfo = ((MobileRechargeApp)this.mApp).mHistoryManager.b();
          if (localRechargeHistoryInfo != null)
            str1 = localRechargeHistoryInfo.getA();
        }
        else
        {
          str1 = "";
        }
    }
    if (Validator.a(str2))
    {
      this.s = MobileSourceEnum.a;
      b(str2);
      return;
    }
    h("手机号码格式不正确");
  }

  protected final void b(String paramString)
  {
    if (!Validator.a(paramString))
    {
      this.J = false;
      a(getResources().getString(R.string.j), -65536);
      this.f.setEnabled(false);
      return;
    }
    g();
    c(paramString);
  }

  protected void c()
  {
    new ContactOperation(this, new az(this)).a();
  }

  protected void c(String paramString)
  {
    a(R.string.m);
    try
    {
      String str1 = e("sceneCode");
      String str2 = e("appId");
      a(this.o.a(paramString, str1, str2));
      this.J = false;
      return;
    }
    catch (RpcException localRpcException)
    {
      this.B = "";
      new StringBuilder("RpcException =").append(localRpcException.getCode()).toString();
      dismissProgressDialog();
      if ((localRpcException.getCode() != 4) && ((localRpcException.getCode() == 7) || (localRpcException.getCode() == 5)))
      {
        i("网络连接超时，请稍后再试。");
        return;
      }
      i("网络无法连接，请检查您的网络。");
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    this.mMicroApplicationContext.updateActivity(this);
    if (paramInt1 == 8)
    {
      String str = f();
      if (!TextUtils.isEmpty(str))
      {
        Intent localIntent = new Intent("android.intent.action.VIEW");
        localIntent.setData(Uri.parse(str));
        startActivity(localIntent);
      }
      this.mApp.destroy(null);
    }
    do
    {
      do
        return;
      while (paramIntent == null);
      new StringBuilder("onActivityResult, requestCode:").append(paramInt1).append(",resultCode:").append(paramInt2).toString();
    }
    while (paramInt1 != 1);
    PhoneContactUtil.a(this, paramIntent, this);
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == com.alipay.mobile.ui.R.id.lastImgBtn)
      PhoneContactUtil.a(this.mApp);
    do
    {
      return;
      if (paramView.getId() == com.alipay.mobile.mobilerechargeapp.R.id.h)
      {
        LogAgentWriteLog.e(this);
        k();
        return;
      }
      if (paramView.getId() == com.alipay.mobile.mobilerechargeapp.R.id.d)
      {
        ((MobileRechargeApp)this.mApp).mHistoryManager.c();
        return;
      }
      if (paramView.getId() == com.alipay.mobile.mobilerechargeapp.R.id.a)
      {
        RechargeHistoryManager localRechargeHistoryManager = ((MobileRechargeApp)this.mApp).mHistoryManager;
        EcardVOWrapper localEcardVOWrapper = (EcardVOWrapper)this.e.getSelectedItem();
        String str1 = j();
        if (Validator.a(str1, getResources().getString(R.string.k)))
          str1 = "";
        String str2 = localEcardVOWrapper.a();
        localRechargeHistoryManager.a(new RechargeHistoryInfo(i(), str1, this.d.getText().toString(), str2));
        return;
      }
    }
    while (paramView.getId() != com.alipay.mobile.mobilerechargeapp.R.id.z);
    HtmlActivityRequest localHtmlActivityRequest = new HtmlActivityRequest();
    localHtmlActivityRequest.setRequestUrl("http://d.alipay.com/mbresultyy/prc.htm");
    localHtmlActivityRequest.setTitle("运营活动");
    localHtmlActivityRequest.setNeedLogin(true);
    HtmlActivityHandlerRegister localHtmlActivityHandlerRegister = HtmlActivityHandlerRegister.getInstance();
    Intent localIntent = new Intent(this, HtmlActivityV2_.class);
    localIntent.putExtra("HARequest", localHtmlActivityRequest);
    localIntent.putExtra("HandlerRegisterKey", localHtmlActivityHandlerRegister.registerHandler(new CMSHtmlActivityHandler()));
    this.mApp.getMicroApplicationContext().startActivity(this.mApp, localIntent);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    h();
  }

  public void onNothingSelected(AdapterView paramAdapterView)
  {
  }

  protected void onPause()
  {
    super.onPause();
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    new StringBuilder("mobile recharge activity onTouch  event =").append(paramMotionEvent.getAction()).toString();
    if ((paramMotionEvent.getAction() == 1) && (i().length() == 11))
      this.c.showLastImgBtn(false);
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.activity.MobileRechargeActivity
 * JD-Core Version:    0.6.2
 */