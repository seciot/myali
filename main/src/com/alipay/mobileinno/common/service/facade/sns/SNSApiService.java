package com.alipay.mobileinno.common.service.facade.sns;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.mobileinno.common.service.facade.sns.model.MessageRPCRequest;
import com.alipay.mobileinno.common.service.facade.sns.model.SNSOperationResult;
import com.alipay.mobileinno.common.service.facade.sns.model.ShortLinkOperationResult;

public abstract interface SNSApiService
{
  @OperationType("alipay.mobileinno.sns.createSNSByMessage")
  @CheckLogin
  public abstract SNSOperationResult createSNSByMessage(MessageRPCRequest paramMessageRPCRequest);

  @OperationType("alipay.mobileinno.sns.createShortLinkByMessage")
  @CheckLogin
  public abstract ShortLinkOperationResult createShortLinkByMessage(MessageRPCRequest paramMessageRPCRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileinno.common.service.facade.sns.SNSApiService
 * JD-Core Version:    0.6.2
 */