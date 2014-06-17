package com.alipay.mobile.onsitepay.payer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Vibrator;
import android.support.v4.content.LocalBroadcastManager;
import com.alibaba.fastjson.JSON;
import com.alipay.livetradeprod.core.model.rpc.QueryBuyerReq;
import com.alipay.livetradeprod.core.model.rpc.QueryBuyerRes;
import com.alipay.livetradeprod.core.service.gw.SoundWavePayRpcFacade;
import com.alipay.mobile.base.config.SwitchConfigUtils;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.AlipayLogAgent.AlipayLogInfo;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierOrder;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierServcie;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.onsitepay.a.a.a;
import com.alipay.mobile.onsitepay.exception.FacepaymentException;
import com.alipay.mobile.security.otp.OtpManager;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

@EActivity
public abstract class BasicFacePayerActivity extends BaseActivity
{
  public static String a = "BasicFacePayerAcitivity";
  public static String b = "com.alipay.longlink.TRANSFER_10000014";
  protected String c = "OTP";
  protected List<String> d = new ArrayList();
  protected volatile String e = "";
  protected boolean f = false;
  protected long g;
  protected boolean h = false;
  protected Boolean i = Boolean.valueOf(false);
  protected long j;
  private boolean k;
  private int l = 0;
  private BroadcastReceiver m = new g(this);

  protected static SoundWavePayRpcFacade c()
  {
    return (SoundWavePayRpcFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(SoundWavePayRpcFacade.class);
  }

  protected static OtpManager e()
  {
    return (OtpManager)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(OtpManager.class.getName());
  }

  protected static AuthService f()
  {
    return (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
  }

  protected static String g()
  {
    UserInfo localUserInfo = f().getLastLoginedUserInfo();
    if (localUserInfo != null)
      return localUserInfo.getUserId();
    return null;
  }

  private boolean m()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)getSystemService("connectivity")).getActiveNetworkInfo();
    if (localNetworkInfo == null)
      return false;
    return localNetworkInfo.isAvailable();
  }

  private LocalBroadcastManager n()
  {
    return LocalBroadcastManager.getInstance(this.mApp.getMicroApplicationContext().getApplicationContext());
  }

  public final void a()
  {
    int n = 0;
    this.c = "OTP";
    String str = h();
    if (str != null)
    {
      this.d.add(str);
      this.h = false;
      this.e = str;
    }
    while (true)
    {
      return;
      this.e = "";
      if (!m())
        break;
      AuthService localAuthService = f();
      if (!localAuthService.isLogin())
        BackgroundExecutor.execute(new e(this, localAuthService, new Handler()));
      while (n != 0)
      {
        this.h = true;
        return;
        d();
        n = 1;
      }
    }
    this.h = false;
    b();
  }

  protected final void a(BroadcastReceiver paramBroadcastReceiver)
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("seed_init_complete");
    n().registerReceiver(paramBroadcastReceiver, localIntentFilter);
  }

  protected final void a(PhoneCashierCallback paramPhoneCashierCallback)
  {
    BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
    String str1 = this.e;
    String str2 = g();
    String[] arrayOfString = new String[5];
    arrayOfString[0] = "kf";
    arrayOfString[1] = "startDeviceAuth";
    arrayOfString[2] = (System.currentTimeMillis() - this.j);
    arrayOfString[3] = "y";
    arrayOfString[4] = "alipayclient";
    AlipayLogAgent.writeLog(this, localBehaviourIdEnum, "kf", null, null, null, null, null, "startDeviceAuth", str1, str2, "-", arrayOfString);
    PhoneCashierOrder localPhoneCashierOrder = new PhoneCashierOrder();
    localPhoneCashierOrder.setBizType("prepay_initial");
    localPhoneCashierOrder.setBizSubType("");
    localPhoneCashierOrder.setOrderNo("");
    ((PhoneCashierServcie)this.mApp.getMicroApplicationContext().getExtServiceByInterface(PhoneCashierServcie.class.getName())).boot(localPhoneCashierOrder, paramPhoneCashierCallback);
  }

  public abstract void a(JSONObject paramJSONObject, String paramString);

  protected void b()
  {
    throw new FacepaymentException("网络无法连接，点击重试");
  }

  protected final void b(BroadcastReceiver paramBroadcastReceiver)
  {
    n().unregisterReceiver(paramBroadcastReceiver);
  }

  public abstract void b(JSONObject paramJSONObject, String paramString);

  public abstract void c(JSONObject paramJSONObject, String paramString);

  protected abstract void d();

  @UiThread
  public void d(JSONObject paramJSONObject, String paramString)
  {
    new StringBuilder("开关的状态continueLoop=:").append(this.k).toString();
    new StringBuilder("response=").append(paramJSONObject.toString()).toString();
    if ((paramJSONObject != null) && (k()))
    {
      while (true)
      {
        AlipayLogAgent.AlipayLogInfo localAlipayLogInfo;
        synchronized (this.i)
        {
          localAlipayLogInfo = new AlipayLogAgent.AlipayLogInfo();
          localAlipayLogInfo.appID = "10000013";
          localAlipayLogInfo.viewID = "10000013HOME";
          if ("looporder".equals(paramString))
          {
            localAlipayLogInfo.seed = "getResultFromQuery";
            localAlipayLogInfo.behaviourPro = "s";
            localAlipayLogInfo.logPro = "c";
            localAlipayLogInfo.extendParams = new String[0];
            AlipayLogAgent.writeLog(getApplicationContext(), localAlipayLogInfo);
            if (!this.i.booleanValue())
              break;
            return;
          }
          if ("pushorder".equals(paramString))
            localAlipayLogInfo.seed = "getResultFromLong";
        }
        localAlipayLogInfo.seed = "unexpect";
      }
      if ("DELSEED".equals(paramJSONObject.optString("attachAction")))
        e().deleteSeed();
      String str1 = paramJSONObject.optString("action");
      ((Vibrator)getApplicationContext().getSystemService("vibrator")).vibrate(a.f, -1);
      if ("soundWavePaySuccessPush".equalsIgnoreCase(str1))
        a(paramJSONObject, paramString);
      while (true)
      {
        this.e = "";
        this.i = Boolean.valueOf(true);
        return;
        if ("getGoodsList".equalsIgnoreCase(str1))
        {
          String str2 = paramJSONObject.optString("dynamicId");
          if (this.d.contains(str2))
            b(paramJSONObject, paramString);
        }
        else if ("fastpay".equalsIgnoreCase(str1))
        {
          c(paramJSONObject, paramString);
        }
      }
    }
  }

  protected String h()
  {
    return e().getDynamicOtp(OtpManager.OTP_SOUND);
  }

  protected final void i()
  {
    this.k = false;
  }

  @Background
  protected void j()
  {
    this.i = Boolean.valueOf(false);
    String str1 = SwitchConfigUtils.getConfigValue("ONSITE_ANDROID_PAYER_POLLINGQUERY_SWITCH");
    new StringBuilder("loopQuerySwitch=").append(str1).toString();
    boolean bool1 = "false".equals(str1);
    int n = 0;
    if (!bool1)
      n = 1;
    if (n == 0)
      return;
    new StringBuilder("loopQueryTask dynamicId=").append(this.e).toString();
    this.k = true;
    this.l = (1 + this.l);
    int i1 = this.l;
    int i2 = 1;
    while (i2 < 100)
    {
      new StringBuilder("loopQueryTask continueLoop=").append(this.k).toString();
      if (!this.k)
        break;
      new StringBuilder("loopQueryTask mDynamicId=").append(this.e).toString();
      if (StringUtils.isBlank(this.e))
        break;
      new StringBuilder("loopQueryTask needLoopQuery()=").append(k()).toString();
      if (!k())
        break;
      new StringBuilder("loopQueryTask currentLoopQueryTime=").append(i1).append(" excuteloopQueryTimes=").append(this.l).toString();
      if (i1 != this.l)
        break;
      new StringBuilder("过滤后:第{").append(i1).append("}次调用loopQueryTask,动态码:{").append(this.e).append("}  短轮询第{").append(i2).append("}次").toString();
      if (i2 == 1)
        SystemClock.sleep(3000L);
      try
      {
        label328: QueryBuyerReq localQueryBuyerReq;
        if (m())
        {
          localQueryBuyerReq = new QueryBuyerReq();
          localQueryBuyerReq.dynamicId = this.e;
          localQueryBuyerReq.userId = g();
        }
        while (true)
          try
          {
            boolean bool2 = StringUtils.isBlank(this.e);
            if (bool2)
            {
              label383: i2++;
              break;
              SystemClock.sleep(2000L);
              break label328;
            }
            localQueryBuyerRes = c().queryBuySoundWavePayRes(localQueryBuyerReq);
            if (localQueryBuyerRes != null)
            {
              if (!localQueryBuyerRes.queryOrNo)
                this.k = false;
              if (localQueryBuyerRes.success)
              {
                this.k = false;
                String str2 = JSON.toJSONString(localQueryBuyerRes);
                d(new JSONObject(str2), "looporder");
                new StringBuilder("轮询查询付款方接收状态 getJsonData= ").append(str2).toString();
              }
            }
          }
          catch (Exception localException2)
          {
            QueryBuyerRes localQueryBuyerRes;
            continue;
            if ((!localQueryBuyerRes.success) && (localQueryBuyerRes.queryOrNo == true));
          }
      }
      catch (Exception localException1)
      {
        break label383;
      }
    }
  }

  protected abstract boolean k();

  protected final void l()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction(b);
    n().registerReceiver(this.m, localIntentFilter);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  public void onDestroy()
  {
    this.k = false;
    super.onDestroy();
  }

  protected void onPause()
  {
    this.k = false;
    super.onPause();
  }

  protected void onRestart()
  {
    l();
    super.onRestart();
  }

  protected void onResume()
  {
    this.i = Boolean.valueOf(false);
    super.onResume();
  }

  protected void onStart()
  {
    super.onStart();
  }

  protected void onStop()
  {
    this.k = false;
    n().unregisterReceiver(this.m);
    super.onStop();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.BasicFacePayerActivity
 * JD-Core Version:    0.6.2
 */