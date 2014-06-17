package com.alipay.mobileapp.biz.rpc.register.vo;

import java.io.Serializable;

public class VerifyCheckReq
  implements Serializable
{
  public String checkCode;
  public String mobileNo;
  public String smsVerifyType;
  public String tid;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileapp.biz.rpc.register.vo.VerifyCheckReq
 * JD-Core Version:    0.6.2
 */