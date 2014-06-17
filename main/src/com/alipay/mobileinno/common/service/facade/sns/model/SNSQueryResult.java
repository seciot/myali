package com.alipay.mobileinno.common.service.facade.sns.model;

import java.io.Serializable;

public class SNSQueryResult
  implements Serializable
{
  public AcceptUserInfo acceptUser = new AcceptUserInfo();
  public String resultCode = "success";
  public ShareBizInfo shareBizInfo = new ShareBizInfo();
  public ShareUserInfo shareUser = new ShareUserInfo();
  public boolean success = true;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileinno.common.service.facade.sns.model.SNSQueryResult
 * JD-Core Version:    0.6.2
 */