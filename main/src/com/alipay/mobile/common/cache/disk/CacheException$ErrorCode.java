package com.alipay.mobile.common.cache.disk;

public enum CacheException$ErrorCode
{
  private int a;

  static
  {
    READ_IO_ERROR = new ErrorCode("READ_IO_ERROR", 1, 1);
    ErrorCode[] arrayOfErrorCode = new ErrorCode[2];
    arrayOfErrorCode[0] = WRITE_IO_ERROR;
    arrayOfErrorCode[1] = READ_IO_ERROR;
  }

  private CacheException$ErrorCode(int arg3)
  {
    int j;
    this.a = j;
  }

  public final int getValue()
  {
    return this.a;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.disk.CacheException.ErrorCode
 * JD-Core Version:    0.6.2
 */