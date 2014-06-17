package com.alipay.mobile.common.transport.spdy;

public enum ResponseSource
{
  static
  {
    ResponseSource[] arrayOfResponseSource = new ResponseSource[3];
    arrayOfResponseSource[0] = CACHE;
    arrayOfResponseSource[1] = CONDITIONAL_CACHE;
    arrayOfResponseSource[2] = NETWORK;
  }

  public final boolean requiresConnection()
  {
    return (this == CONDITIONAL_CACHE) || (this == NETWORK);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.transport.spdy.ResponseSource
 * JD-Core Version:    0.6.2
 */