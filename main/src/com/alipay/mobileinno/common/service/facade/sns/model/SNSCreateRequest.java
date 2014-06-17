package com.alipay.mobileinno.common.service.facade.sns.model;

import java.io.Serializable;

public class SNSCreateRequest
  implements Serializable
{
  public AcceptUserInfo acceptUser = new AcceptUserInfo();
  public ShareBizInfo bizInfo = new ShareBizInfo();
  public ShareUserInfo shareUser = new ShareUserInfo();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileinno.common.service.facade.sns.model.SNSCreateRequest
 * JD-Core Version:    0.6.2
 */