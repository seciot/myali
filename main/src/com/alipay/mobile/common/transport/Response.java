package com.alipay.mobile.common.transport;

public class Response
{
  protected String mContentType;
  protected byte[] mResData;

  public String getContentType()
  {
    return this.mContentType;
  }

  public byte[] getResData()
  {
    return this.mResData;
  }

  public void setContentType(String paramString)
  {
    this.mContentType = paramString;
  }

  public void setResData(byte[] paramArrayOfByte)
  {
    this.mResData = paramArrayOfByte;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.Response
 * JD-Core Version:    0.6.2
 */