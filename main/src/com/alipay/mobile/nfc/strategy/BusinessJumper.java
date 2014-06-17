package com.alipay.mobile.nfc.strategy;

import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.security.AuthService;

public class BusinessJumper
{
  private static String a = "NFC/BusinessJumper";
  private static BusinessJumper e;
  private MicroApplicationContext b;
  private BusinessJumpable c;
  private boolean d = false;

  private BusinessJumper(MicroApplicationContext paramMicroApplicationContext)
  {
    this.b = paramMicroApplicationContext;
  }

  public static BusinessJumper a(MicroApplicationContext paramMicroApplicationContext)
  {
    if (e == null)
      e = new BusinessJumper(paramMicroApplicationContext);
    return e;
  }

  public final void a()
  {
    try
    {
      if (NfcStrategy.b())
      {
        if (((AuthService)this.b.getExtServiceByInterface(AuthService.class.getName())).isLogin())
        {
          this.c.a();
          return;
        }
        this.c.b();
        return;
      }
    }
    catch (Exception localException)
    {
    }
  }

  public final void a(BusinessJumpable paramBusinessJumpable)
  {
    this.c = paramBusinessJumpable;
    this.d = true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.strategy.BusinessJumper
 * JD-Core Version:    0.6.2
 */