package com.alipay.mobile.security.accountmanager.ui;

import android.text.method.NumberKeyListener;

final class bq extends NumberKeyListener
{
  bq(ForgotPayPwdActivity paramForgotPayPwdActivity)
  {
  }

  protected final char[] getAcceptedChars()
  {
    return new char[] { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 120, 88 };
  }

  public final int getInputType()
  {
    return 1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.bq
 * JD-Core Version:    0.6.2
 */