package com.alipay.mobileapp.biz.rpc.dynamic.conf.vo;

import java.io.Serializable;
import java.util.List;

public class AppDynamicConfReq
  implements Serializable
{
  public String channel;
  public String platform;
  public String platformVersion;
  public String productId;
  public String productStatus;
  public String productVersion;
  public String resolution;
  public List<String> tabNames;
  public String userAgent;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.dynamic.conf.vo.AppDynamicConfReq
 * JD-Core Version:    0.6.2
 */