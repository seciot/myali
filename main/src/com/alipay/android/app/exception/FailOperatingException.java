package com.alipay.android.app.exception;

import android.text.TextUtils;

public final class FailOperatingException extends Exception
{
  public FailOperatingException()
  {
    this(null, (byte)0);
  }

  public FailOperatingException(String paramString)
  {
    this(paramString, (byte)0);
  }

  private FailOperatingException(String paramString, byte paramByte)
  {
    super(paramString, null);
    if (!TextUtils.isEmpty(paramString))
      new StringBuilder("FailOperating--").append(paramString).toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.exception.FailOperatingException
 * JD-Core Version:    0.6.2
 */