package com.alipay.mobile.phonecashier.service;

import android.os.AsyncTask;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierCallback;
import com.alipay.mobile.framework.service.ext.phonecashier.PhoneCashierOrder;

public class PhoneCashierTask extends AsyncTask
{
  static final String a = PhoneCashierTask.class.getName();
  private MicroApplicationContext b;
  private PhoneCashierOrder c;
  private PhoneCashierCallback d;
  private String e;

  public PhoneCashierTask(MicroApplicationContext paramMicroApplicationContext, PhoneCashierOrder paramPhoneCashierOrder, PhoneCashierCallback paramPhoneCashierCallback)
  {
    this.b = paramMicroApplicationContext;
    this.c = paramPhoneCashierOrder;
    this.d = paramPhoneCashierCallback;
  }

  public PhoneCashierTask(MicroApplicationContext paramMicroApplicationContext, String paramString, PhoneCashierCallback paramPhoneCashierCallback)
  {
    this.b = paramMicroApplicationContext;
    this.e = paramString;
    this.d = paramPhoneCashierCallback;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.phonecashier.service.PhoneCashierTask
 * JD-Core Version:    0.6.2
 */