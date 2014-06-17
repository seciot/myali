package com.alipay.mobile.command.model;

public enum RpcTypeEnum
{
  static
  {
    HTTP = new RpcTypeEnum("HTTP", 1);
    RpcTypeEnum[] arrayOfRpcTypeEnum = new RpcTypeEnum[2];
    arrayOfRpcTypeEnum[0] = HTTP_DOWNLAOD;
    arrayOfRpcTypeEnum[1] = HTTP;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.command.model.RpcTypeEnum
 * JD-Core Version:    0.6.2
 */