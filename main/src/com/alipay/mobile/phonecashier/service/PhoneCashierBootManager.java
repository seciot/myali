package com.alipay.mobile.phonecashier.service;

import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import com.alipay.android.app.IRemoteServiceCallback;
import com.alipay.android.app.helper.PayHelper;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierOrder;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierPaymentResult;
import com.alipay.mobile.phonecashier.assist.PhoneCashierAssistService;
import com.alipay.mobile.phonecashier.service.util.PhoneCashierUtil;
import org.json.JSONObject;

public class PhoneCashierBootManager
{
  private MicroApplicationContext a;
  private PhoneCashierOrder b;
  private PhoneCashierCallback c;
  private String d = null;
  private String e;
  private IRemoteServiceCallback f = new a(this);

  public PhoneCashierBootManager(MicroApplicationContext paramMicroApplicationContext, PhoneCashierOrder paramPhoneCashierOrder, String paramString, PhoneCashierCallback paramPhoneCashierCallback)
  {
    this.a = paramMicroApplicationContext;
    this.b = paramPhoneCashierOrder;
    this.c = paramPhoneCashierCallback;
    this.e = paramString;
    this.d = ((PhoneCashierAssistService)paramMicroApplicationContext.getExtServiceByInterface(PhoneCashierAssistService.class.getName())).getUserInfoSessionId();
  }

  public final void a()
  {
    int i = -7777;
    try
    {
      if ((this.d == null) || (this.d.trim().equals("")))
      {
        this.c.onPayFailed(-7776, "系统繁忙请稍候重试！");
        return;
      }
      String str1 = PhoneCashierUtil.a(this.b, this.e, this.d);
      localJSONObject1 = PhoneCashierUtil.a(PayHelper.a(this.a.getApplicationContext()).a(str1, this.f).replaceAll("(\".*);(.*\")", "$1-$2"), ";");
      String str2 = localJSONObject1.optString("resultStatus");
      str3 = localJSONObject1.optString("memo");
      new StringBuilder().append(str2).append(",memo:").append(str3).toString();
      if ((str2 != null) && (!str2.equals("")))
      {
        i = Integer.valueOf(str2.substring(1, -1 + str2.length())).intValue();
        localJSONObject1.toString();
        if ((i == 9000) || (i == 8000))
        {
          PhoneCashierPaymentResult localPhoneCashierPaymentResult1 = new PhoneCashierPaymentResult();
          String str4 = localJSONObject1.optString("result");
          if ((str4 == null) || (str4.equals("")))
            break label600;
          String str5 = str4.substring(1, -1 + str4.length());
          JSONObject localJSONObject2 = PhoneCashierUtil.b(str5, "\"&");
          localPhoneCashierPaymentResult1.setBody(localJSONObject2.optString("body"));
          localPhoneCashierPaymentResult1.setNotifyUrl(localJSONObject2.optString("notify_url"));
          localPhoneCashierPaymentResult1.setOutTradeNo(localJSONObject2.optString("out_trade_no"));
          localPhoneCashierPaymentResult1.setPartner(localJSONObject2.optString("partner"));
          localPhoneCashierPaymentResult1.setSeller(localJSONObject2.optString("seller"));
          localPhoneCashierPaymentResult1.setSubject(localJSONObject2.optString("subject"));
          localPhoneCashierPaymentResult1.setTotalFee("total_fee");
          localPhoneCashierPaymentResult1.setCallBackUrl(localJSONObject2.optString("call_back_url"));
          localPhoneCashierPaymentResult1.setOriginalString(str5);
          localPhoneCashierPaymentResult1.setResultCode(i);
          try
          {
            Intent localIntent = new Intent("com.alipay.mobile.basebiz.TRADE_STATUS_CHANGED");
            if (this.b != null);
            for (String str6 = this.b.getBizType(); ; str6 = null)
            {
              if ((TextUtils.isEmpty(str6)) || (!"confirm_goods".equalsIgnoreCase(str6)))
                localIntent.putExtra("phonecashier.pay.success", "phonecashier.pay.success");
              LocalBroadcastManager.getInstance(AlipayApplication.getInstance()).sendBroadcast(localIntent);
              this.c.onPaySuccess(localPhoneCashierPaymentResult1);
              return;
            }
          }
          catch (Exception localException2)
          {
            while (true)
              new StringBuilder().append(localException2).toString();
          }
        }
      }
    }
    catch (Exception localException1)
    {
      JSONObject localJSONObject1;
      String str3;
      localException1.printStackTrace();
      this.c.onPayFailed(-8888, localException1);
      return;
      if (i == 10000)
      {
        String str7 = localJSONObject1.optString("result");
        PhoneCashierPaymentResult localPhoneCashierPaymentResult2 = new PhoneCashierPaymentResult();
        if ((str7 != null) && (!str7.equals("")))
        {
          String str8 = str7.replace("BANK_CARD-", "BANK_CARD;");
          localPhoneCashierPaymentResult2.setResultCode(i);
          localPhoneCashierPaymentResult2.setResult(str8);
          this.c.onPaySuccess(localPhoneCashierPaymentResult2);
          return;
          this.c.onPayFailed(-7777, "支付失败");
        }
      }
      label600: this.c.onPayFailed(i, str3);
      return;
    }
    finally
    {
      PhoneCashierServiceImpl.a = false;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.phonecashier.service.PhoneCashierBootManager
 * JD-Core Version:    0.6.2
 */