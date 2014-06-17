package com.alipay.android.app.exception;

import android.text.TextUtils;

public final class UnZipException extends Exception
{
  public UnZipException()
  {
    this(null, (byte)0);
  }

  public UnZipException(String paramString)
  {
    this(paramString, (byte)0);
  }

  private UnZipException(String paramString, byte paramByte)
  {
    super(paramString, null);
    if (!TextUtils.isEmpty(paramString))
      new StringBuilder("Validation--").append(paramString).toString();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.exception.UnZipException
 * JD-Core Version:    0.6.2
 */