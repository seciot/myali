package com.alipay.android.widget.security.ui.authentication;

import android.text.method.NumberKeyListener;

class InputUserInfoFragment$1 extends NumberKeyListener
{
  InputUserInfoFragment$1(InputUserInfoFragment paramInputUserInfoFragment)
  {
  }

  protected char[] getAcceptedChars()
  {
    return new char[] { 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 120, 88 };
  }

  public int getInputType()
  {
    return 1;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.InputUserInfoFragment.1
 * JD-Core Version:    0.6.2
 */