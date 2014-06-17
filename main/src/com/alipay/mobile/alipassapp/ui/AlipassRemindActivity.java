package com.alipay.mobile.alipassapp.ui;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.alipay.kabaoprod.biz.mwallet.pass.result.RemindDateResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.UpdateRemindDateResult;
import com.alipay.kabaoprod.core.model.model.RemindInfo;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.ui.common.k;
import com.alipay.mobile.alipassapp.ui.common.p;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.commonui.widget.APAbsTableView.ViewID;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APRadioTableView;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APToggleButton;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.rome.pushservice.PushSettingService;
import com.alipay.mobile.ui.R.drawable;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.atomic.AtomicBoolean;

@SuppressLint({"SimpleDateFormat"})
@EActivity
public class AlipassRemindActivity extends BaseActivity
  implements DialogInterface.OnCancelListener, p
{
  private APRadioTableView a;
  private APTableView b;
  private APTextView c;
  private APLinearLayout d;
  private APLinearLayout e;
  private AlertDialog f;
  private String g;
  private String h;
  private RemindInfo i;
  private String j;
  private com.alipay.mobile.alipassapp.biz.a k;
  private String l;
  private long m;
  private boolean n;
  private AtomicBoolean o = new AtomicBoolean();
  private APButton p;
  private Date q;
  private Date r;
  private k s;
  private String t;
  private Calendar u = Calendar.getInstance();
  private long v;

  private boolean a(long paramLong)
  {
    try
    {
      Date localDate1 = new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(this.i.getSysdate());
      Date localDate2 = new SimpleDateFormat("yyyy-MM-dd HH:mm").parse(this.j);
      if ((localDate1.getTime() > paramLong) || (localDate2.getTime() < paramLong))
      {
        runOnUiThread(new cs(this));
        return false;
      }
      return true;
    }
    catch (ParseException localParseException)
    {
    }
    return false;
  }

  @SuppressLint({"SimpleDateFormat"})
  private static boolean a(Date paramDate1, Date paramDate2)
  {
    try
    {
      SimpleDateFormat localSimpleDateFormat = new SimpleDateFormat("yyyy");
      String str = localSimpleDateFormat.format(paramDate2);
      int i1 = localSimpleDateFormat.format(paramDate1).compareTo(str);
      boolean bool = false;
      if (i1 > 0)
        bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      AlipassRemindActivity.class.getName();
      new StringBuilder("isUpThanSysdate(sysdate,newRemindDate):").append(localException.getMessage()).toString();
    }
    return false;
  }

  private void b(RemindInfo paramRemindInfo)
  {
    String str1;
    if (StringUtils.equalsIgnoreCase(this.t, "TRAVEL"))
    {
      APTableView localAPTableView = this.b;
      String str2 = this.g;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Long.valueOf(paramRemindInfo.getRemindSet());
      localAPTableView.setRightText(String.format(str2, arrayOfObject));
      if ((this.q != null) && (this.r != null))
        break label154;
      str1 = null;
    }
    while (true)
    {
      if (str1 != null)
        this.c.setText(String.format(this.h, new Object[] { str1 }));
      if (!paramRemindInfo.getRemindSwitch().equals("1"))
        break label276;
      this.e.setVisibility(0);
      return;
      if (!StringUtils.equalsIgnoreCase(this.t, "COUPON"))
        break;
      this.b.setRightText(new SimpleDateFormat("yyyy-MM-dd HH:mm").format(this.q));
      break;
      label154: Date localDate = new Date();
      if (StringUtils.equalsIgnoreCase(this.t, "TRAVEL"))
      {
        long l1 = paramRemindInfo.getRemindSet() - this.m;
        localDate = new Date(this.q.getTime() - 1000L * (l1 * 3600L));
      }
      while (true)
      {
        if (!a(localDate, this.r))
          break label259;
        str1 = new SimpleDateFormat("yyyy年MM月dd日 HH:mm").format(localDate);
        break;
        if (StringUtils.equalsIgnoreCase(this.t, "COUPON"))
          localDate = this.q;
      }
      label259: str1 = new SimpleDateFormat("MM月dd日 HH:mm").format(localDate);
    }
    label276: this.e.setVisibility(8);
  }

  @Background
  public void a()
  {
    showProgressDialog("加载中", true, this);
    try
    {
      this.o.set(false);
      a(this.k.a(this.l));
      return;
    }
    catch (RpcException localRpcException)
    {
      do
        a(null);
      while (this.s.a(localRpcException));
      throw localRpcException;
    }
  }

  @UiThread
  public void a(RemindDateResult paramRemindDateResult)
  {
    dismissProgressDialog();
    SimpleDateFormat localSimpleDateFormat;
    if ((!this.o.get()) && (paramRemindDateResult != null) && (paramRemindDateResult.success))
    {
      this.i = paramRemindDateResult.getInfo();
      this.j = this.i.getRemindSupportTime();
      this.m = this.i.getRemindSet();
      localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
    }
    try
    {
      this.q = localSimpleDateFormat.parse(this.i.getRemindTime());
      this.r = localSimpleDateFormat.parse(this.i.getSysdate());
      label95: this.u.setTime(this.q);
      RemindInfo localRemindInfo = this.i;
      this.d.setVisibility(0);
      boolean bool;
      APToggleButton localAPToggleButton;
      int i1;
      label172: APRadioTableView localAPRadioTableView;
      if (localRemindInfo.getRemindSwitch().equals("1"))
      {
        bool = true;
        localAPToggleButton = (APToggleButton)this.a.getChildView(APAbsTableView.ViewID.TOGGLE_BUTTON);
        localAPToggleButton.setChecked(bool);
        APLinearLayout localAPLinearLayout = this.e;
        if (!bool)
          break label390;
        i1 = 0;
        localAPLinearLayout.setVisibility(i1);
        localAPRadioTableView = this.a;
        if (!bool)
          break label397;
      }
      label390: label397: for (int i2 = 17; ; i2 = 16)
      {
        localAPRadioTableView.setType(i2);
        localAPToggleButton.setOnCheckedChangeListener(new co(this));
        b(this.i);
        this.b.setOnClickListener(new cp(this));
        this.p.setVisibility(0);
        this.p.setOnClickListener(new cn(this));
        long l1 = System.currentTimeMillis() - this.v;
        new StringBuilder("提醒AlipassRemindActivity加载时间").append(l1).toString();
        this.v = 0L;
        AlipayApplication localAlipayApplication = this.mMicroApplicationContext.getApplicationContext();
        BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITORPERF;
        String str = getClass().getName();
        String[] arrayOfString = new String[4];
        arrayOfString[0] = "";
        arrayOfString[1] = "";
        arrayOfString[2] = String.valueOf(l1);
        arrayOfString[3] = "";
        AlipayLogAgent.writeLog(localAlipayApplication, localBehaviourIdEnum, null, null, null, null, str, "-", "perf_open_passnotifyremind", null, "s", "c", arrayOfString);
        return;
        bool = false;
        break;
        i1 = 8;
        break label172;
      }
    }
    catch (ParseException localParseException)
    {
      break label95;
    }
  }

  @UiThread
  public void a(UpdateRemindDateResult paramUpdateRemindDateResult)
  {
    dismissProgressDialog();
    if ((!this.o.get()) && (paramUpdateRemindDateResult != null) && (paramUpdateRemindDateResult.success))
    {
      SimpleToast.makeToast(this, R.drawable.simple_toast_ok, getResources().getString(R.string.alipass_remind_save_success), 0).show();
      new Handler().postDelayed(new ct(this), 2000L);
    }
    long l1 = System.currentTimeMillis() - this.v;
    new StringBuilder("卡券提醒设置加载时间").append(l1).toString();
    this.v = 0L;
  }

  @Background
  public void a(RemindInfo paramRemindInfo)
  {
    this.v = System.currentTimeMillis();
    UpdateRemindDateResult localUpdateRemindDateResult = null;
    try
    {
      this.o.set(false);
      if (StringUtils.equalsIgnoreCase(this.t, "TRAVEL"))
      {
        showProgressDialog("保存中", true, this);
        localUpdateRemindDateResult = this.k.a(paramRemindInfo.getPassId(), paramRemindInfo.getRemindSwitch(), (int)paramRemindInfo.getRemindSet());
        a(localUpdateRemindDateResult);
        return;
      }
      if (StringUtils.equalsIgnoreCase(this.t, "COUPON"))
      {
        showProgressDialog("保存中", true, this);
        localUpdateRemindDateResult = this.k.a(paramRemindInfo.getPassId(), paramRemindInfo.getRemindSwitch(), this.q.getTime());
        a(localUpdateRemindDateResult);
        return;
      }
    }
    catch (RpcException localRpcException)
    {
      a(localUpdateRemindDateResult);
      throw localRpcException;
    }
  }

  public final void e()
  {
    a();
  }

  public void onCancel(DialogInterface paramDialogInterface)
  {
    this.o.set(true);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.v = System.currentTimeMillis();
    setContentView(R.layout.main_alipass_remind);
    this.s = new k(this, (ViewGroup)findViewById(R.id.layout_viewgroup), this.mApp, this);
    this.d = ((APLinearLayout)findViewById(R.id.layout_remind_alt_switch));
    this.d.setVisibility(8);
    this.e = ((APLinearLayout)findViewById(R.id.layout_remind_alt_time));
    this.e.setVisibility(8);
    this.p = ((APButton)findViewById(R.id.btn_remind_save));
    this.p.setVisibility(8);
    this.k = new com.alipay.mobile.alipassapp.biz.c.a(this.mApp);
    PushSettingService localPushSettingService = (PushSettingService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(PushSettingService.class.getName());
    if (localPushSettingService == null);
    for (boolean bool = false; ; bool = Boolean.valueOf(localPushSettingService.getPushState()).booleanValue())
    {
      this.n = bool;
      if (this.n)
        break;
      findViewById(R.id.tv_remind_push_not_open).setVisibility(0);
      return;
    }
    this.a = ((APRadioTableView)findViewById(R.id.tv_alt_tv1));
    this.a.setEnabled(false);
    this.b = ((APTableView)findViewById(R.id.tv_alt_tv2));
    this.c = ((APTextView)findViewById(R.id.tv_remind_alt_msg));
    this.g = getResources().getString(R.string.travel_remind_alt_format);
    this.h = getResources().getString(R.string.travel_remind_alt_msg);
    Intent localIntent = getIntent();
    this.l = localIntent.getExtras().getString("p");
    this.j = localIntent.getExtras().getString("pass_enddate");
    this.t = localIntent.getExtras().getString("b");
    if (StringUtils.equalsIgnoreCase(this.t, "COUPON"))
      this.a.setLeftText(getString(R.string.coupon_remind_opt_set));
    a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.AlipassRemindActivity
 * JD-Core Version:    0.6.2
 */