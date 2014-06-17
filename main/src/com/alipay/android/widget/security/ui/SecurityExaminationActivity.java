package com.alipay.android.widget.security.ui;

import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.view.KeyEvent;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.LinearInterpolator;
import com.alipay.android.widget.security.app.SecurityGradeApp;
import com.alipay.android.widget.security.msgreceiver.SecurityCertifiedMsgReceiver;
import com.alipay.android.widget.security.msgreceiver.SecurityCertifiedMsgReceiver.a;
import com.alipay.android.widget.security.service.SecurityGradeViewModel;
import com.alipay.android.widget.security.service.b;
import com.alipay.mobile.clientsecurity.R.anim;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.BindPhoneCallBack;
import com.alipay.mobile.framework.service.ext.security.DeviceService;
import com.alipay.mobile.framework.service.ext.security.bean.SecurityLevel;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.ext.security.domain.MspDeviceInfoBean;
import com.alipay.mobile.rome.pushservice.PushSettingService;
import com.alipay.mobile.security.securitycommon.SecurityUtil;
import com.alipay.mobile.ui.R.color;
import com.alipay.mobilesecurity.biz.gw.service.securitywidget.SecurityWidgetFacade;
import com.alipay.mobilesecurity.core.model.Tid;
import com.alipay.mobilesecurity.core.model.mainpage.level.QueryAccountSecurityLevelResp;
import com.alipay.mobilesecurity.core.model.mainpage.level.SecurityCheckReq;
import com.alipay.mobilesecurity.core.model.mainpage.level.SecuritySettings;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.Map;
import java.util.Timer;
import java.util.TimerTask;

@EActivity(resName="security_examination")
public class SecurityExaminationActivity extends BaseActivity
  implements SecurityCertifiedMsgReceiver.a, BindPhoneCallBack
{
  private boolean A = false;
  private b B;
  private SecurityLevel C;
  private SecurityGradeViewModel D;
  private Timer E = null;
  private TimerTask F = null;
  private String G;
  private Tid H;
  private boolean I;
  private boolean J;
  private boolean K;
  private boolean L;
  private boolean M;
  private boolean N;
  private Animation O = null;
  private Animation P = null;
  private int Q;
  private PushSettingService R;
  private SchemeService S;

  @ViewById(resName="titleBar")
  protected APTitleBar a;

  @ViewById(resName="firstLineOfBlock")
  protected APRelativeLayout b;

  @ViewById(resName="security_main_layout")
  protected APLinearLayout c;

  @ViewById(resName="security_score_img")
  protected APImageView d;

  @ViewById(resName="security_examination_tip")
  protected APTextView e;

  @ViewById(resName="security_examination_status")
  protected APTextView f;

  @ViewById(resName="security_cellphone_bind")
  protected APTableView g;

  @ViewById(resName="security_examination_nameCertified")
  protected APTableView h;

  @ViewById(resName="security_examination_portraitSet")
  protected APTableView i;

  @ViewById(resName="security_examination_gestureSet")
  protected APTableView j;

  @ViewById(resName="security_examination_pushSet")
  protected APTableView k;

  @ViewById(resName="security_score_number")
  protected APTextView l;

  @ViewById(resName="security_score_unit")
  protected APTextView m;

  @ViewById(resName="security_score_100")
  protected APImageView n;
  protected AuthService o;
  protected DeviceService p;
  protected UserInfo q;
  protected String r;
  View.OnClickListener s = new SecurityExaminationActivity.4(this);
  View.OnClickListener t = new SecurityExaminationActivity.5(this);
  View.OnClickListener u = new SecurityExaminationActivity.6(this);
  View.OnClickListener v = new SecurityExaminationActivity.7(this);
  View.OnClickListener w = new SecurityExaminationActivity.8(this);
  View.OnClickListener x = new SecurityExaminationActivity.9(this);
  private SecurityCertifiedMsgReceiver y;
  private boolean z = false;

  private void a(QueryAccountSecurityLevelResp paramQueryAccountSecurityLevelResp)
  {
    if (paramQueryAccountSecurityLevelResp != null)
    {
      if (paramQueryAccountSecurityLevelResp.isSuccess())
      {
        this.C = this.B.b(paramQueryAccountSecurityLevelResp);
        this.D = this.B.a(paramQueryAccountSecurityLevelResp);
        this.D.setCellphone(paramQueryAccountSecurityLevelResp.getSecuritySettings().getMobileBindNo());
        this.K = true;
        return;
      }
      new StringBuilder("{[info=onPostGetSecurityLevel], [msg=").append(paramQueryAccountSecurityLevelResp.getMessage()).append("]}").toString();
      this.M = true;
      toast(paramQueryAccountSecurityLevelResp.getMessage(), 1);
      return;
    }
    toast(getResources().getString(R.string.c), 1);
  }

  public void BindPhoneResult(boolean paramBoolean)
  {
    new StringBuilder("bind phone result: ").append(paramBoolean).toString();
    if (paramBoolean)
      e();
  }

  @AfterViews
  protected final void a()
  {
    this.Q = SecurityUtil.a(this.d);
    new StringBuilder(" measured height: ").append(this.Q).toString();
    this.l.setTextSize(0, 0.54F * this.Q);
    this.m.setTextSize(0, 0.11F * this.Q);
    this.f.setTextSize(0, 0.12F * this.Q);
    this.l.setTypeface(Typeface.MONOSPACE, 0);
    e();
  }

  public final void a(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    new StringBuilder("name certified receive action: ").append(str).toString();
    if (("com.alipay.mobile.android.main.avatar.action.changed".equalsIgnoreCase(str)) || (("com.alipay.security.namecertified".equalsIgnoreCase(str)) && (paramIntent.getBooleanExtra("isCertified", false))))
      e();
  }

  @UiThread
  protected void a(SecurityGradeViewModel paramSecurityGradeViewModel)
  {
    this.f.startAnimation(this.P);
    this.f.setVisibility(8);
    this.e.setText(paramSecurityGradeViewModel.getMemo());
    int i1 = paramSecurityGradeViewModel.getScore();
    this.P.setAnimationListener(new SecurityExaminationActivity.3(this, i1));
    if (paramSecurityGradeViewModel.getIsShowArrowBindPhone().booleanValue())
    {
      this.N = false;
      this.g.setRightText((String)paramSecurityGradeViewModel.getFirstBlock().get(Integer.valueOf(R.string.aK)));
      this.g.getArrowImage().setVisibility(0);
      this.g.setOnClickListener(this.s);
      this.g.getRightTextView().setTextColor(getResources().getColor(R.color.colorDarkBlue));
      String str2 = (String)paramSecurityGradeViewModel.getFirstBlock().get(Integer.valueOf(R.string.aM));
      this.h.setRightText(str2);
      if (!paramSecurityGradeViewModel.getIsShowArrowCertified().booleanValue())
        break label595;
      this.h.getArrowImage().setVisibility(0);
      this.h.setOnClickListener(this.t);
      this.h.getRightTextView().setTextColor(getResources().getColor(R.color.colorDarkBlue));
      label215: String str3 = (String)paramSecurityGradeViewModel.getFirstBlock().get(Integer.valueOf(R.string.bz));
      this.j.setRightText(str3);
      if (!paramSecurityGradeViewModel.getIsShowArrowGestureSet().booleanValue())
        break label638;
      this.j.getArrowImage().setVisibility(0);
      this.j.setOnClickListener(this.v);
      this.j.getRightTextView().setTextColor(getResources().getColor(R.color.colorDarkBlue));
      label296: String str4 = (String)paramSecurityGradeViewModel.getFirstBlock().get(Integer.valueOf(R.string.bY));
      this.i.setRightText(str4);
      if (!paramSecurityGradeViewModel.getIsShowArrowPortraitSet().booleanValue())
        break label681;
      this.i.getArrowImage().setVisibility(0);
      this.i.setOnClickListener(this.u);
      this.i.getRightTextView().setTextColor(getResources().getColor(R.color.colorDarkBlue));
    }
    while (true)
    {
      String str5 = (String)paramSecurityGradeViewModel.getFirstBlock().get(Integer.valueOf(R.string.cb));
      this.k.setRightText(str5);
      if (!paramSecurityGradeViewModel.getIsShowArrowPushSet().booleanValue())
        break label724;
      this.k.getArrowImage().setVisibility(0);
      this.k.setOnClickListener(this.w);
      this.k.getRightTextView().setTextColor(getResources().getColor(R.color.colorDarkBlue));
      return;
      this.N = true;
      this.g.getArrowImage().setVisibility(8);
      this.g.getRightTextView().setTextColor(getResources().getColor(R.color.colorLightGray));
      String str1 = (String)paramSecurityGradeViewModel.getFirstBlock().get(Integer.valueOf(R.string.aK));
      if ((str1 != null) && (str1.length() == 11))
        str1 = str1.subSequence(0, 3) + "****" + str1.substring(7, 11);
      while (true)
      {
        this.g.setRightText(str1);
        this.g.setClickable(false);
        break;
        if (str1 == null)
          str1 = "";
      }
      label595: this.h.getArrowImage().setVisibility(8);
      this.h.setClickable(false);
      this.h.getRightTextView().setTextColor(getResources().getColor(R.color.colorLightGray));
      break label215;
      label638: this.j.getArrowImage().setVisibility(8);
      this.j.setClickable(false);
      this.j.getRightTextView().setTextColor(getResources().getColor(R.color.colorLightGray));
      break label296;
      label681: this.i.getArrowImage().setVisibility(8);
      this.i.setClickable(false);
      this.i.getRightTextView().setTextColor(getResources().getColor(R.color.colorLightGray));
    }
    label724: this.k.getArrowImage().setVisibility(8);
    this.k.setClickable(false);
    this.k.getRightTextView().setTextColor(getResources().getColor(R.color.colorLightGray));
  }

  @UiThread
  protected void a(String paramString)
  {
    toast(paramString, 0);
  }

  @UiThread
  protected void b()
  {
    this.l.setVisibility(8);
    this.m.setVisibility(8);
    this.n.setVisibility(8);
    this.f.setVisibility(0);
    this.f.setText(R.string.bx);
    this.e.setText(this.G);
    this.d.startAnimation(this.O);
    this.a.setTitleText(getResources().getString(R.string.cq));
    this.b.setClickable(false);
    this.g.setRightText("");
    this.g.getArrowImage().setVisibility(8);
    this.g.setClickable(false);
    this.h.setRightText("");
    this.h.getArrowImage().setVisibility(8);
    this.h.setClickable(false);
    this.i.setRightText("");
    this.i.getArrowImage().setVisibility(8);
    this.i.setClickable(false);
    this.j.setRightText("");
    this.j.getArrowImage().setVisibility(8);
    this.j.setClickable(false);
    this.k.setRightText("");
    this.k.getArrowImage().setVisibility(8);
    this.k.setClickable(false);
  }

  final void b(String paramString)
  {
    LocalBroadcastManager localLocalBroadcastManager = LocalBroadcastManager.getInstance(this);
    if (this.y == null)
    {
      this.y = new SecurityCertifiedMsgReceiver();
      this.y.a(this);
    }
    localLocalBroadcastManager.registerReceiver(this.y, new IntentFilter(paramString));
  }

  @UiThread
  protected void c()
  {
    if (this.M)
    {
      this.E.cancel();
      this.d.clearAnimation();
      this.f.setText(R.string.bw);
      this.b.setOnClickListener(new SecurityExaminationActivity.2(this));
    }
    do
    {
      do
        return;
      while (!this.K);
      this.E.cancel();
      this.d.clearAnimation();
      d();
    }
    while (this.D == null);
    a(this.D);
  }

  @Background
  protected void d()
  {
    if (this.C != null)
    {
      this.B.a(this.C.getLogonId());
      this.B.a(this.C);
      SharedPreferences.Editor localEditor = getSharedPreferences("examinationSetting", 0).edit();
      localEditor.putBoolean(this.r, true);
      localEditor.commit();
    }
  }

  @Background
  protected void e()
  {
    this.q = null;
    this.K = false;
    this.M = false;
    this.L = false;
    this.I = false;
    this.r = "";
    this.H = null;
    if (this.o == null)
      break label44;
    label44: 
    while ((!this.o.isLogin()) && (!this.o.auth(new Bundle())))
      return;
    this.q = this.o.getUserInfo();
    if (this.q != null)
    {
      this.r = this.q.getLogonId();
      this.G = SecurityUtil.a(this.r, "hideaccount");
      if ((this.q.getGesturePwd() != null) && (!"".equalsIgnoreCase(this.q.getGesturePwd())))
        break label440;
      this.I = false;
    }
    while (true)
    {
      b();
      this.F = new SecurityExaminationActivity.1(this);
      this.E = new Timer(true);
      this.E.schedule(this.F, 3000L, 500L);
      MspDeviceInfoBean localMspDeviceInfoBean = this.p.queryCertification();
      this.H = new Tid();
      if ((localMspDeviceInfoBean != null) && (localMspDeviceInfoBean.getTid() != null))
      {
        this.H.setClientKey(localMspDeviceInfoBean.getMspkey());
        this.H.setImei(localMspDeviceInfoBean.getImei());
        this.H.setImsi(localMspDeviceInfoBean.getImsi());
        this.H.setTid(localMspDeviceInfoBean.getTid());
        this.H.setVimei(localMspDeviceInfoBean.getVimei());
        this.H.setVimsi(localMspDeviceInfoBean.getVimsi());
      }
      this.J = StringUtils.equalsIgnoreCase(this.R.getPushState(), "true");
      if ((this.q == null) || (this.r == null) || ("".equals(this.r)) || (!(this.mApp instanceof SecurityGradeApp)))
        break;
      this.B = new b(this.mApp, this.r);
      SecurityCheckReq localSecurityCheckReq = new SecurityCheckReq();
      localSecurityCheckReq.setLogonId(this.r);
      localSecurityCheckReq.setSetGesture(this.I);
      localSecurityCheckReq.setTid(this.H);
      localSecurityCheckReq.setOpenPush(this.J);
      try
      {
        QueryAccountSecurityLevelResp localQueryAccountSecurityLevelResp = ((SecurityWidgetFacade)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(SecurityWidgetFacade.class)).securityCheck(localSecurityCheckReq);
        a(localQueryAccountSecurityLevelResp);
        return;
        label440: this.I = true;
      }
      catch (RpcException localRpcException)
      {
        new StringBuilder("{[info=getSecurityDetectResult], [msg=").append(localRpcException.getMessage()).append("]}").toString();
        this.M = true;
        return;
      }
      finally
      {
        a(null);
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.o = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName()));
    this.p = ((DeviceService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(DeviceService.class.getName()));
    this.R = ((PushSettingService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(PushSettingService.class.getName()));
    try
    {
      this.O = AnimationUtils.loadAnimation(this, R.anim.a);
      this.P = AnimationUtils.loadAnimation(this, R.anim.b);
      LinearInterpolator localLinearInterpolator = new LinearInterpolator();
      this.O.setInterpolator(localLinearInterpolator);
      return;
    }
    catch (Resources.NotFoundException localNotFoundException)
    {
      localNotFoundException.getMessage();
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    LocalBroadcastManager.getInstance(this).unregisterReceiver(this.y);
    if ((this.E != null) && (this.F != null))
    {
      while (!this.F.cancel());
      this.E.cancel();
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onResume()
  {
    super.onResume();
    new StringBuilder("on resume isTableViewClick: ").append(this.L).toString();
    if (this.L)
      e();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityExaminationActivity
 * JD-Core Version:    0.6.2
 */