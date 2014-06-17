package com.alipay.mobile.common.cache.disk;

public class CacheException extends Exception
{
  private CacheException.ErrorCode a;
  private String b;

  public CacheException(CacheException.ErrorCode paramErrorCode, String paramString)
  {
    super(localStringBuilder.toString());
    this.a = paramErrorCode;
    this.b = paramString;
  }

  public CacheException(String paramString)
  {
    super(paramString);
    this.a = CacheException.ErrorCode.WRITE_IO_ERROR;
    this.b = paramString;
  }

  public CacheException.ErrorCode getCode()
  {
    return this.a;
  }

  public String getMsg()
  {
    return this.b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.cache.disk.CacheException
 * JD-Core Version:    0.6.2
 */