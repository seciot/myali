package com.alipay.mobile.onsitepay.payer.sound;

import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.BitmapDrawable;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import com.alipay.livetradeprod.core.model.rpc.FindLbsUserReq;
import com.alipay.livetradeprod.core.model.rpc.FindLbsUserRes;
import com.alipay.livetradeprod.core.model.rpc.GetDynamicIdReq;
import com.alipay.livetradeprod.core.model.rpc.GetDynamicIdRes;
import com.alipay.livetradeprod.core.service.gw.SoundWavePayRpcFacade;
import com.alipay.mobile.base.config.SwitchConfigUtils;
import com.alipay.mobile.common.info.AppInfo;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.AlipayLogAgent.AlipayLogInfo;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.CacheSet;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.lbsinfo.LBSInfoGather;
import com.alipay.mobile.framework.lbsinfo.LBSInfoListener;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.framework.service.phoneblacklist.PhoneBlackList;
import com.alipay.mobile.onsitepay.d;
import com.alipay.mobile.onsitepay.exception.FacepaymentException;
import com.alipay.mobile.onsitepay.payer.AutoPaySuccessActivity;
import com.alipay.mobile.onsitepay.payer.BasicFacePayerActivity;
import com.alipay.mobile.onsitepay.payer.confirm.C2BConfirmActivity_;
import com.alipay.mobile.onsitepay.payer.confirm.C2CConfirmActivity_;
import com.alipay.mobilelbs.common.service.facade.vo.Location;
import com.alipay.sonicwavenfc.SonicWaveNFC;
import com.alipay.sonicwavenfc.SonicWaveNFCHandler;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.List;
import org.json.JSONObject;

@EActivity(resName="sendsound_pay_activity")
public class SendSoundViewActivity extends BasicFacePayerActivity
{
  private boolean A = false;
  private boolean B = false;
  private FindLbsUserRes C;
  private boolean D = true;
  private SonicWaveNFCHandler E = new n(this);
  private Location F;

  @ViewById
  APTextView k;

  @ViewById
  LinearLayout l;

  @ViewById
  SoundButtonActivity m;

  @ViewById
  APTextView n;

  @ViewById
  RelativeLayout o;

  @ViewById
  APTitleBar p;
  NearbyFriend[] q = new NearbyFriend[3];
  PopupWindow r = null;
  boolean s = true;
  View.OnClickListener t = new m(this);
  View.OnClickListener u = new o(this);
  LBSInfoListener v = new f(this);
  BroadcastReceiver w = new g(this);
  private boolean x = false;
  private SonicWaveNFC y;
  private SendSoundViewActivity.HeadSetReceiver z;

  private void A()
  {
    this.k.setVisibility(4);
  }

  private void B()
  {
    try
    {
      int i = com.alipay.mobile.onsitepay.e.l;
      if (this.x)
        i = com.alipay.mobile.onsitepay.e.m;
      a.a(getApplicationContext(), "promptFlag", "true");
      View localView = LayoutInflater.from(this).inflate(i, null);
      this.r = new PopupWindow(localView, -1, -1, true);
      this.r.setFocusable(true);
      this.r.setBackgroundDrawable(new BitmapDrawable());
      this.r.setOutsideTouchable(true);
      this.r.showAtLocation(localView, 119, 0, 0);
      localView.setOnClickListener(this.u);
      ((LinearLayout)localView.findViewById(d.J)).setOnClickListener(this.u);
      return;
    }
    catch (Exception localException)
    {
    }
  }

  private static boolean C()
  {
    String str = SwitchConfigUtils.getConfigValue("ONSITE_ANDROID_PAYER_LBS_SWITCH");
    new StringBuilder("ONSITE_ANDROID_PAYER_LBS_SWITCH=").append(str).toString();
    return !"false".equals(str);
  }

  private void a(String paramString1, String paramString2)
  {
    new StringBuilder("startSend dynamicId=").append(paramString1).append("  dynamicIdType=").append(paramString2).toString();
    this.y.setBkSoundWave4MixFromAsset(getApplicationContext(), "SendingData.wav");
    try
    {
      this.y.startSendData(paramString1, 30, 2, 70, getApplicationContext(), this.E);
      this.j = System.currentTimeMillis();
      if (StringUtils.isNotBlank(paramString1))
      {
        j();
        AlipayLogAgent.writeLog(getApplicationContext(), BehaviourIdEnum.MONITOR, "kf", null, null, null, null, null, paramString2, paramString1, g(), "-", new String[] { "kf", "sendwave", "", "y", "alipayclient" });
      }
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  private void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    String str = f().getUserInfo().getExtern_token();
    t();
    Intent localIntent = new Intent();
    localIntent.putExtra("dynamicId", paramString6);
    localIntent.putExtra("extern_token", str);
    localIntent.putExtra("fromAppid", "10000014");
    localIntent.putExtra("payeeName", paramString2);
    localIntent.putExtra("payeeUserId", paramString1);
    localIntent.putExtra("headImageUrl", paramString3);
    localIntent.putExtra("payeeAccount", paramString4);
    localIntent.putExtra("c2cpaytype", paramString5);
    localIntent.setClass(this, C2CConfirmActivity_.class);
    this.mApp.getMicroApplicationContext().startActivity(this.mApp, localIntent);
  }

  private boolean x()
  {
    return "true".equals(a.a(getApplicationContext(), "promptFlag"));
  }

  private void y()
  {
    if (getBundle(this))
    {
      r();
      return;
    }
    try
    {
      a();
      a(this.e, this.c);
      return;
    }
    catch (FacepaymentException localFacepaymentException)
    {
      c(localFacepaymentException.getMessage());
    }
  }

  private void z()
  {
    if (this.z != null);
    try
    {
      getApplication().unregisterReceiver(this.z);
      this.z = null;
      return;
    }
    catch (Exception localException)
    {
    }
  }

  @UiThread
  protected void a(GetDynamicIdRes paramGetDynamicIdRes)
  {
    new StringBuilder("onReceiveDynamicId ").append(paramGetDynamicIdRes.dynamicId).toString();
    if ((paramGetDynamicIdRes != null) && (paramGetDynamicIdRes.success))
    {
      if (paramGetDynamicIdRes.dynamicId == null);
      for (String str1 = ""; ; str1 = paramGetDynamicIdRes.dynamicId)
      {
        this.e = str1;
        this.d.add(this.e);
        new StringBuilder("获取动态ID成功 mDynamicId=").append(this.e).append(" wave_button.isWaveNow()=").append(this.m.isWaveNow()).toString();
        if (this.m.isWaveNow())
        {
          if (this.e != null)
          {
            Context localContext = getApplicationContext();
            BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
            String str2 = this.e;
            String str3 = g();
            String[] arrayOfString = new String[5];
            arrayOfString[0] = "kf";
            arrayOfString[1] = "applyid";
            arrayOfString[2] = (System.currentTimeMillis() - this.g);
            arrayOfString[3] = "y";
            arrayOfString[4] = "alipayclient";
            AlipayLogAgent.writeLog(localContext, localBehaviourIdEnum, "kf", null, null, null, null, null, "SC", str2, str3, "-", arrayOfString);
          }
          a(this.e, "SC");
        }
        return;
      }
    }
    c("系统繁忙，点击重试");
  }

  protected final void a(String paramString)
  {
    this.k.setText(paramString);
    this.k.setVisibility(0);
  }

  public final void a(JSONObject paramJSONObject, String paramString)
  {
    String str1 = paramJSONObject.optString("amount");
    String str2 = paramJSONObject.optString("promoUrl");
    String str3 = paramJSONObject.optString("dynamicId");
    new StringBuilder("amount=").append(str1).append(" promoUrl=").append(str2).append(" dynamicId=").append(str3).toString();
    if (StringUtils.isNotBlank(str1));
    for (String str4 = "成功付款" + str1 + "元"; ; str4 = "付款成功")
    {
      s();
      BehaviourIdEnum localBehaviourIdEnum1 = BehaviourIdEnum.MONITOR;
      String str5 = this.e;
      String str6 = g();
      String[] arrayOfString1 = new String[5];
      arrayOfString1[0] = "kf";
      arrayOfString1[1] = paramString;
      arrayOfString1[2] = (System.currentTimeMillis() - this.j);
      arrayOfString1[3] = "y";
      arrayOfString1[4] = "alipayclient";
      AlipayLogAgent.writeLog(this, localBehaviourIdEnum1, "kf", null, null, null, null, null, "C2B", str5, str6, "-", arrayOfString1);
      BehaviourIdEnum localBehaviourIdEnum2 = BehaviourIdEnum.MONITOR;
      String str7 = this.e;
      String str8 = g();
      String[] arrayOfString2 = new String[5];
      arrayOfString2[0] = "kf";
      arrayOfString2[1] = "orderpay";
      arrayOfString2[2] = (System.currentTimeMillis() - this.j);
      arrayOfString2[3] = "y";
      arrayOfString2[4] = "alipayclient";
      AlipayLogAgent.writeLog(this, localBehaviourIdEnum2, "kf", null, null, null, null, null, "ZD", str7, str8, "-", arrayOfString2);
      Intent localIntent = new Intent(this, AutoPaySuccessActivity.class);
      localIntent.putExtra("needPayResultAck", true);
      localIntent.putExtra("paysucceedMsg", str4);
      localIntent.putExtra("dynamicId", str3);
      localIntent.putExtra("promoUrl", str2);
      this.mApp.getMicroApplicationContext().startActivityForResult(this.mApp, localIntent, 0);
      return;
    }
  }

  public final boolean a(Context paramContext)
  {
    try
    {
      if (((AudioManager)paramContext.getSystemService("audio")).isBluetoothA2dpOn())
      {
        this.B = true;
        return true;
      }
    }
    catch (Exception localException1)
    {
      if (this.A);
    }
    try
    {
      this.B = ((AudioManager)paramContext.getSystemService("audio")).isWiredHeadsetOn();
      new StringBuilder("misHeadSetOn  =").append(this.B).toString();
      this.A = true;
      label74: return this.B;
    }
    catch (Exception localException2)
    {
      break label74;
    }
  }

  @UiThread
  public void b(String paramString)
  {
    new StringBuilder("phoneBlackList=").append(paramString).toString();
    if (StringUtils.isNotBlank(paramString))
    {
      new StringBuilder("  黑名单信息 black=").append(paramString).toString();
      if (!StringUtils.isNotBlank(paramString));
    }
    try
    {
      String[] arrayOfString1 = paramString.split("\\|");
      if ((arrayOfString1 != null) && (arrayOfString1.length >= 9))
      {
        String[] arrayOfString2 = arrayOfString1[8].split("=");
        String str1 = arrayOfString2[0];
        String str2 = arrayOfString2[1];
        if ("micBottom".equalsIgnoreCase(str1))
          this.x = "true".equals(str2);
      }
      this.y.setPhoneConfig(paramString);
      new StringBuilder("CheckPhoneBlack blacks=").append(paramString).toString();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void b(JSONObject paramJSONObject, String paramString)
  {
    String str1 = f().getUserInfo().getExtern_token();
    Intent localIntent = new Intent();
    localIntent.putExtra("responseStr", paramJSONObject.toString());
    localIntent.putExtra("extern_token", str1);
    localIntent.putExtra("fromAppid", "10000014");
    localIntent.setClass(this, C2BConfirmActivity_.class);
    this.mApp.getMicroApplicationContext().startActivity(this.mApp, localIntent);
    BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
    String str2 = this.e;
    String str3 = g();
    String[] arrayOfString = new String[5];
    arrayOfString[0] = "kf";
    arrayOfString[1] = paramString;
    arrayOfString[2] = (System.currentTimeMillis() - this.j);
    arrayOfString[3] = "y";
    arrayOfString[4] = "alipayclient";
    AlipayLogAgent.writeLog(this, localBehaviourIdEnum, "kf", null, null, null, null, null, "C2B", str2, str3, "-", arrayOfString);
  }

  @UiThread
  public void c(String paramString)
  {
    s();
    a(paramString);
  }

  public final void c(JSONObject paramJSONObject, String paramString)
  {
    if (paramJSONObject.isNull("payeeName"));
    for (String str1 = ""; ; str1 = paramJSONObject.optString("payeeName"))
    {
      String str2 = paramJSONObject.optString("payeeAccount");
      a("", str1, paramJSONObject.optString("headImageUrl"), str2, "otp", paramJSONObject.optString("dynamicId"));
      Context localContext = getApplicationContext();
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
      String str3 = this.e;
      String str4 = g();
      String[] arrayOfString = new String[5];
      arrayOfString[0] = "kf";
      arrayOfString[1] = paramString;
      arrayOfString[2] = (System.currentTimeMillis() - this.j);
      arrayOfString[3] = "y";
      arrayOfString[4] = "alipayclient";
      AlipayLogAgent.writeLog(localContext, localBehaviourIdEnum, "kf", null, null, null, null, null, "C2C", str3, str4, "-", arrayOfString);
      return;
    }
  }

  @Background
  protected void d()
  {
    try
    {
      GetDynamicIdReq localGetDynamicIdReq = new GetDynamicIdReq();
      this.g = System.currentTimeMillis();
      a(c().getDynamicId(localGetDynamicIdReq));
      return;
    }
    catch (Exception localException)
    {
      c("系统繁忙，点击重试");
    }
  }

  protected final boolean k()
  {
    StringBuilder localStringBuilder = new StringBuilder("needLoopQuery wave_button.isWaveNow()=").append(this.m.isWaveNow()).append("  !wave_button.isTimeOut()");
    if (!this.m.isTimeOut());
    for (boolean bool = true; ; bool = false)
    {
      localStringBuilder.append(bool).toString();
      if ((!this.m.isWaveNow()) || (this.m.isTimeOut()))
        break;
      return true;
    }
    return false;
  }

  @UiThread
  protected void m()
  {
    if (this.h)
    {
      this.l.setVisibility(0);
      return;
    }
    this.l.setVisibility(8);
  }

  @AfterViews
  protected final void n()
  {
    this.o.setOnClickListener(new e(this));
    this.l.setOnClickListener(new k(this));
    this.q[0] = ((NearbyFriend)findViewById(d.P));
    this.q[1] = ((NearbyFriend)findViewById(d.Q));
    this.q[2] = ((NearbyFriend)findViewById(d.R));
    NearbyFriend[] arrayOfNearbyFriend = this.q;
    int i = arrayOfNearbyFriend.length;
    for (int j = 0; j < i; j++)
      arrayOfNearbyFriend[j].setOnClickListener(this.t);
    l();
    a(this.w);
    if (C())
    {
      this.F = null;
      LBSInfoGather.getInstance(this).requestLBSInfoUpdates(this.v);
    }
    this.y = SonicWaveNFC.getInstance();
    ((PhoneBlackList)this.mApp.getMicroApplicationContext().getExtServiceByInterface(PhoneBlackList.class.getName())).queryPhoneBlackList(this.mApp.getMicroApplicationContext().getApplicationContext(), new p(this));
    this.m.setWaveButtonListener(new h(this));
    BackgroundExecutor.execute(new i(this));
    A();
    p();
    z();
    try
    {
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("android.intent.action.HEADSET_PLUG");
      if (this.z == null)
        this.z = new SendSoundViewActivity.HeadSetReceiver(this);
      getApplication().registerReceiver(this.z, localIntentFilter);
      label282: a(this.w);
      CacheSet.getInstance(getApplicationContext()).putBoolean(AppInfo.getInstance().getmProductVersion() + "SErunning", false);
      return;
    }
    catch (Exception localException)
    {
      break label282;
    }
  }

  @UiThread(delay=600L)
  protected void o()
  {
    this.p.setGenericButtonListener(new j(this));
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    AlipayLogAgent.AlipayLogInfo localAlipayLogInfo = new AlipayLogAgent.AlipayLogInfo();
    localAlipayLogInfo.behaviourIdEnum = BehaviourIdEnum.OPENPAGE;
    localAlipayLogInfo.appID = "10000014";
    localAlipayLogInfo.viewID = "10000014Home";
    AlipayLogAgent.writeLog(getApplicationContext(), localAlipayLogInfo);
  }

  public void onDestroy()
  {
    z();
    b(this.w);
    super.onDestroy();
  }

  public void onPause()
  {
    s();
    if (getBundle(this))
      r();
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
    try
    {
      if (StringUtils.isNotBlank(h()))
      {
        this.l.setVisibility(8);
        return;
      }
      this.l.setVisibility(0);
      return;
    }
    catch (Exception localException)
    {
      this.l.setVisibility(0);
    }
  }

  protected void onStart()
  {
    super.onStart();
  }

  public void onStop()
  {
    s();
    if ((this.r != null) && (this.r.isShowing()))
      this.r.dismiss();
    super.onStop();
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    new StringBuilder("onWindowFocusChanged hasFocus=").append(paramBoolean).append(" checkSkip()=").append(x()).toString();
    if ((paramBoolean) && (!x()))
      B();
  }

  @Background
  protected void p()
  {
    if (x())
    {
      SystemClock.sleep(500L);
      q();
    }
  }

  @UiThread
  void q()
  {
    this.s = false;
    this.l.setVisibility(8);
    A();
    this.m.waveRetry();
    y();
  }

  public final void r()
  {
    if (this.y != null)
      this.y.stopSendData();
    c("请拔下耳机后，点击重试");
    m();
  }

  public final void s()
  {
    i();
    a("点击重试");
    if (getBundle(getApplicationContext()))
      a("请拔下耳机后，点击重试");
    m();
    this.m.pause();
    if (this.y != null)
      this.y.stopSendData();
  }

  public final void t()
  {
    this.n.setVisibility(8);
    NearbyFriend[] arrayOfNearbyFriend = this.q;
    int i = arrayOfNearbyFriend.length;
    for (int j = 0; j < i; j++)
      arrayOfNearbyFriend[j].setVisibility(8);
    this.C = null;
  }

  @Background
  protected void u()
  {
    SoundWavePayRpcFacade localSoundWavePayRpcFacade;
    FindLbsUserReq localFindLbsUserReq;
    if ((this.F != null) && (this.F.longitude != 0.0D) && (this.F.latitude != 0.0D) && (this.D) && (C()))
    {
      localSoundWavePayRpcFacade = (SoundWavePayRpcFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(SoundWavePayRpcFacade.class);
      localFindLbsUserReq = new FindLbsUserReq();
      localFindLbsUserReq.location = this.F;
      localFindLbsUserReq.dynamicId = this.e;
      new StringBuilder("location=").append(this.F.longitude).append(",").append(this.F.latitude).toString();
    }
    try
    {
      this.C = localSoundWavePayRpcFacade.findLbsUser(localFindLbsUserReq);
      if ((this.C != null) && (this.C.userList != null))
        new StringBuilder("findLbsUserRes resultsize=").append(this.C.userList.size()).toString();
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.sound.SendSoundViewActivity
 * JD-Core Version:    0.6.2
 */