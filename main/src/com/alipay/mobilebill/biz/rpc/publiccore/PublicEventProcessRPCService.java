package com.alipay.mobilebill.biz.rpc.publiccore;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilebill.common.service.facade.model.BaseContactInfoReq;
import com.alipay.mobilebill.common.service.facade.model.BaseContactInfoResp;
import com.alipay.mobilebill.common.service.facade.model.ContactListReq;
import com.alipay.publiccore.common.service.facade.model.request.PublicEventProcessReq;
import com.alipay.publiccore.common.service.facade.model.result.PublicEventMessageResult;

public abstract interface PublicEventProcessRPCService
{
  @OperationType("alipay.mobile.bill.publicBaseContactInfo")
  public abstract BaseContactInfoResp getBaseContactInfo(BaseContactInfoReq paramBaseContactInfoReq);

  @OperationType("alipay.mobile.bill.getPublicContactList")
  public abstract PublicEventMessageResult getPublicContactList(ContactListReq paramContactListReq);

  @OperationType("alipay.mobile.bill.getPublicEventProcess")
  public abstract PublicEventMessageResult getPublicEventProcess(PublicEventProcessReq paramPublicEventProcessReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.rpc.publiccore.PublicEventProcessRPCService
 * JD-Core Version:    0.6.2
 */