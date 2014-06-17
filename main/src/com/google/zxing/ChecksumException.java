package com.google.zxing;

public final class ChecksumException extends ReaderException
{
  private static final ChecksumException a = new ChecksumException();

  public static ChecksumException getChecksumInstance()
  {
    return a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.google.zxing.ChecksumException
 * JD-Core Version:    0.6.2
 */