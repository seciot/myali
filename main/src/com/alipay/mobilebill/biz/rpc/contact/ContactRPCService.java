package com.alipay.mobilebill.biz.rpc.contact;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobilebill.biz.shared.contact.model.BaseContactInfoReq;
import com.alipay.mobilebill.biz.shared.contact.model.BaseContactInfoResp;
import com.alipay.mobilebill.biz.shared.contact.model.ContactListReq;
import com.alipay.mobilebill.biz.shared.contact.model.ContactListResp;

public abstract interface ContactRPCService
{
  @OperationType("alipay.mobile.bill.baseContactInfo")
  public abstract BaseContactInfoResp getBaseContactInfo(BaseContactInfoReq paramBaseContactInfoReq);

  @OperationType("alipay.mobile.bill.getContactList")
  public abstract ContactListResp getContactList(ContactListReq paramContactListReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.rpc.contact.ContactRPCService
 * JD-Core Version:    0.6.2
 */