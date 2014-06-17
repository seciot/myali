package com.alipay.android.app.exception;

import android.text.TextUtils;

public final class ValifyException extends Exception
{
  public ValifyException()
  {
    this((byte)0);
  }

  private ValifyException(byte paramByte)
  {
    super(null, null);
    if (!TextUtils.isEmpty(null))
      new StringBuilder("Validation--").append(null).toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.exception.ValifyException
 * JD-Core Version:    0.6.2
 */