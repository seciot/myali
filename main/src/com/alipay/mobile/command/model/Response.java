package com.alipay.mobile.command.model;

public abstract class Response
{
  protected byte[] a;
  protected String b;

  public String getContentType()
  {
    return this.b;
  }

  public byte[] getResData()
  {
    return this.a;
  }

  public abstract RpcTypeEnum rpcTypeEnum();

  public void setContentType(String paramString)
  {
    this.b = paramString;
  }

  public void setResData(byte[] paramArrayOfByte)
  {
    this.a = paramArrayOfByte;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.Response
 * JD-Core Version:    0.6.2
 */