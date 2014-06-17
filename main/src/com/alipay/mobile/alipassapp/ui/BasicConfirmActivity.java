package com.alipay.mobile.alipassapp.ui;

import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import com.alipay.android.app.helper.PayHelperServcie;
import com.alipay.livetradeprod.core.model.rpc.SoundWavePayRes;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierOrder;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierServcie;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
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
  protected UserInfo d;
  protected String e = null;
  protected String f = null;

  @UiThread
  protected void a()
  {
    getClass().getName();
    UserInfo localUserInfo = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).getUserInfo();
    Context localContext = getApplicationContext();
    BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITOR;
    String str1 = this.b;
    String str2 = localUserInfo.getUserId();
    String[] arrayOfString = new String[5];
    arrayOfString[0] = "kf";
    arrayOfString[1] = "orderpay";
    arrayOfString[2] = (System.currentTimeMillis() - this.c);
    arrayOfString[3] = "y";
    arrayOfString[4] = "alipayclient";
    AlipayLogAgent.writeLog(localContext, localBehaviourIdEnum, "kf", null, null, null, null, null, "KJ", str1, str2, "-", arrayOfString);
    finish();
  }

  protected final void a(SoundWavePayRes paramSoundWavePayRes)
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
    a(paramSoundWavePayRes.realAmount);
  }

  @UiThread
  protected void a(String paramString)
  {
    Intent localIntent = new Intent(this, AlipassAutoPaySuccessActivity.class);
    if (StringUtils.isNotBlank(paramString));
    for (String str = "成功付款" + paramString + "元"; ; str = "")
    {
      localIntent.putExtra("message", str);
      this.mApp.getMicroApplicationContext().startActivityForResult(this.mApp, localIntent, 0);
      return;
    }
  }

  @UiThread
  public void a(String paramString1, String paramString2)
  {
    dismissProgressDialog();
    getClass().getName();
    UserInfo localUserInfo = ((AuthService)this.mApp.getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName())).getUserInfo();
    AlipayLogAgent.writeLog(getApplicationContext(), BehaviourIdEnum.MONITOR, "kf", null, null, null, null, null, "KJ", this.b, localUserInfo.getUserId(), "-", new String[] { "kf", "callcashier", "", "y", "alipayclient" });
    PhoneCashierOrder localPhoneCashierOrder = new PhoneCashierOrder();
    localPhoneCashierOrder.setBizType("trade");
    if (paramString2 == null)
      paramString2 = "";
    localPhoneCashierOrder.setBizSubType(paramString2);
    localPhoneCashierOrder.setOrderNo(paramString1);
    new StringBuilder("bizType").append(localPhoneCashierOrder.getBizType()).append(" BizSubType=").append(localPhoneCashierOrder.getBizSubType()).append(" OrderNo=").append(localPhoneCashierOrder.getOrderNo()).append(" OrderToken").append(localPhoneCashierOrder.getOrderToken()).toString();
    ((PhoneCashierServcie)this.mApp.getMicroApplicationContext().getExtServiceByInterface(PhoneCashierServcie.class.getName())).boot(localPhoneCashierOrder, new de(this));
  }

  @UiThread
  protected void a(String paramString, boolean paramBoolean)
  {
    getClass().getName();
    finish();
  }

  @UiThread
  protected void b()
  {
    getClass().getName();
    Toast localToast = Toast.makeText(this, "调用移动快捷失败", 0);
    localToast.setGravity(17, 0, 0);
    localToast.show();
    finish();
  }

  @Background
  public void c()
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

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt2 == 0)
      finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.BasicConfirmActivity
 * JD-Core Version:    0.6.2
 */