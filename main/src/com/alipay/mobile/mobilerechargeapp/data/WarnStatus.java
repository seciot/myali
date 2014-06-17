package com.alipay.mobile.mobilerechargeapp.data;

public class WarnStatus
{
  private static WarnStatus a = null;
  private String b = "";
  private int c = -1;
  private boolean d = false;

  public static WarnStatus a()
  {
    if (a == null)
      a = new WarnStatus();
    return a;
  }

  public final void a(int paramInt)
  {
    this.c = paramInt;
  }

  public final void a(String paramString, int paramInt, boolean paramBoolean)
  {
    this.b = paramString;
    this.c = paramInt;
    this.d = paramBoolean;
  }

  public final int b()
  {
    return this.c;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.mobilerechargeapp.data.WarnStatus
 * JD-Core Version:    0.6.2
 */