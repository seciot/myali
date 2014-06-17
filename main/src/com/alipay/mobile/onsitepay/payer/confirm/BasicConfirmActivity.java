package com.alipay.mobile.onsitepay.payer.confirm;

import android.content.Context;
import android.content.Intent;
import android.os.Vibrator;
import android.widget.Toast;
import com.alipay.android.app.helper.PayHelperServcie;
import com.alipay.livetradeprod.core.model.rpc.SoundWavePayRes;
import com.alipay.livetradeprod.core.service.gw.SoundWavePayRpcFacade;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierOrder;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierServcie;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.alipay.mobile.onsitepay.payer.AutoPaySuccessActivity;
import com.alipay.mobile.security.otp.OtpManager;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;

@EActivity
public abstract class BasicConfirmActivity extends BaseActivity
{
  public static String a = "BasicConfirmActivity";
  protected String b = "";
  protected long c;
  protected String d = null;
  protected String e = null;
  protected String f = "";

  protected static SoundWavePayRpcFacade c()
  {
    return (SoundWavePayRpcFacade)((RpcService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(RpcService.class.getName())).getRpcProxy(SoundWavePayRpcFacade.class);
  }

  private String e()
  {
    if ((this instanceof C2CConfirmActivity))
      return "C2C_";
    if ((this instanceof C2BConfirmActivity))
      return "C2B_";
    return "";
  }

  protected final String a()
  {
    return ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).getUserInfo().getUserId();
  }

  @UiThread
  protected void a(SoundWavePayRes paramSoundWavePayRes)
  {
    ((Vibrator)getApplicationContext().getSystemService("vibrator")).vibrate(com.alipay.mobile.onsitepay.a.a.a.f, -1);
    try
    {
      UserInfo localUserInfo = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).getUserInfo();
      Context localContext = getApplicationContext();
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
      String str4 = this.f;
      String str5 = this.b;
      String str6 = localUserInfo.getUserId();
      String[] arrayOfString = new String[6];
      arrayOfString[0] = paramSoundWavePayRes.tradeNo;
      arrayOfString[1] = "orderpay";
      arrayOfString[2] = (System.currentTimeMillis() - this.c);
      arrayOfString[3] = "y";
      arrayOfString[4] = "alipayclient";
      arrayOfString[5] = (e() + "ZD_SUCCESS");
      AlipayLogAgent.writeLog(localContext, localBehaviourIdEnum, "kf", null, str4, null, null, null, "ZD", str5, str6, "-", arrayOfString);
      label183: Intent localIntent = new Intent(this, AutoPaySuccessActivity.class);
      String str1 = "成功付款";
      String str2 = "";
      String str3 = "";
      if ((paramSoundWavePayRes != null) && (StringUtils.isNotEmpty(paramSoundWavePayRes.realAmount)))
        str1 = str1 + paramSoundWavePayRes.realAmount + "元";
      if ((paramSoundWavePayRes != null) && (StringUtils.isNotEmpty(paramSoundWavePayRes.promoUrl)))
        str2 = paramSoundWavePayRes.promoUrl;
      if ((paramSoundWavePayRes != null) && (StringUtils.isNotEmpty(paramSoundWavePayRes.dynamicId)))
        str3 = paramSoundWavePayRes.dynamicId;
      localIntent.putExtra("needPayResultAck", b());
      localIntent.putExtra("paysucceedMsg", str1);
      localIntent.putExtra("promoUrl", str2);
      localIntent.putExtra("dynamicId", str3);
      startActivity(localIntent);
      finish();
      return;
    }
    catch (Exception localException)
    {
      break label183;
    }
  }

  @UiThread
  protected void a(String paramString)
  {
    getClass().getName();
    Context localContext = getApplicationContext();
    BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
    String str1 = this.f;
    String str2 = this.b;
    String str3 = a();
    String[] arrayOfString = new String[6];
    arrayOfString[0] = paramString;
    arrayOfString[1] = "orderpay";
    arrayOfString[2] = (System.currentTimeMillis() - this.c);
    arrayOfString[3] = "y";
    arrayOfString[4] = "alipayclient";
    arrayOfString[5] = (e() + "KJ_SUCCESS");
    AlipayLogAgent.writeLog(localContext, localBehaviourIdEnum, "kf", null, str1, null, null, null, "KJ", str2, str3, "-", arrayOfString);
    finish();
  }

  @UiThread
  public void a(String paramString1, String paramString2)
  {
    dismissProgressDialog();
    getClass().getName();
    UserInfo localUserInfo = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).getUserInfo();
    AlipayLogAgent.writeLog(getApplicationContext(), BehaviourIdEnum.MONITOR, "kf", null, this.f, null, null, null, "KJ", this.b, localUserInfo.getUserId(), "-", new String[] { paramString1, "callcashier", "", "y", "alipayclient" });
    PhoneCashierOrder localPhoneCashierOrder = new PhoneCashierOrder();
    localPhoneCashierOrder.setBizType("trade");
    if (paramString2 == null)
      paramString2 = "";
    localPhoneCashierOrder.setBizSubType(paramString2);
    localPhoneCashierOrder.setOrderNo(paramString1);
    new StringBuilder("bizType").append(localPhoneCashierOrder.getBizType()).append(" BizSubType=").append(localPhoneCashierOrder.getBizSubType()).append(" OrderNo=").append(localPhoneCashierOrder.getOrderNo()).append(" OrderToken").append(localPhoneCashierOrder.getOrderToken()).toString();
    ((PhoneCashierServcie)this.mApp.getMicroApplicationContext().getExtServiceByInterface(PhoneCashierServcie.class.getName())).boot(localPhoneCashierOrder, new a(this, paramString1));
  }

  @UiThread
  protected void a(String paramString1, boolean paramBoolean, String paramString2)
  {
    getClass().getName();
    Context localContext = getApplicationContext();
    BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
    String str1 = this.f;
    String str2 = this.b;
    String str3 = a();
    String[] arrayOfString = new String[6];
    arrayOfString[0] = paramString2;
    arrayOfString[1] = "orderpay";
    arrayOfString[2] = (System.currentTimeMillis() - this.c);
    arrayOfString[3] = "y";
    arrayOfString[4] = "alipayclient";
    arrayOfString[5] = ("reason:" + paramString1);
    AlipayLogAgent.writeLog(localContext, localBehaviourIdEnum, "kf", null, str1, null, null, null, "KJ", str2, str3, "-", arrayOfString);
    finish();
  }

  protected final void b(SoundWavePayRes paramSoundWavePayRes)
  {
    try
    {
      dismissProgressDialog();
      if ((paramSoundWavePayRes != null) && (!paramSoundWavePayRes.success))
      {
        getClass().getName();
        if ("DELSEED".equals(paramSoundWavePayRes.attachAction))
        {
          getClass().getName();
          ((OtpManager)this.mApp.getMicroApplicationContext().getExtServiceByInterface(OtpManager.class.getName())).deleteSeed();
          getClass().getName();
        }
        String str = paramSoundWavePayRes.tradeNo;
        if ((str == null) || ("".equals(str)))
        {
          getClass().getName();
          toast(paramSoundWavePayRes.resultDes, 0);
          return;
        }
        a(str, paramSoundWavePayRes.bizSubType);
        return;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      return;
    }
    getClass().getName();
    a(paramSoundWavePayRes);
  }

  @UiThread
  protected void b(String paramString)
  {
    getClass().getName();
    Toast localToast = Toast.makeText(this, "调用移动快捷失败", 0);
    localToast.setGravity(17, 0, 0);
    localToast.show();
    Context localContext = getApplicationContext();
    BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
    String str1 = this.f;
    String str2 = this.b;
    String str3 = a();
    String[] arrayOfString = new String[6];
    arrayOfString[0] = paramString;
    arrayOfString[1] = "orderpay";
    arrayOfString[2] = (System.currentTimeMillis() - this.c);
    arrayOfString[3] = "y";
    arrayOfString[4] = "alipayclient";
    arrayOfString[5] = "reason:调用移动快捷失败CashierPayInstallFailed";
    AlipayLogAgent.writeLog(localContext, localBehaviourIdEnum, "kf", null, str1, null, null, null, "KJ", str2, str3, "-", arrayOfString);
    finish();
  }

  protected boolean b()
  {
    return true;
  }

  @Background
  public void d()
  {
    try
    {
      ((PayHelperServcie)this.mApp.getMicroApplicationContext().getExtServiceByInterface(PayHelperServcie.class.getName())).createLiveConnection();
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payer.confirm.BasicConfirmActivity
 * JD-Core Version:    0.6.2
 */