package com.alipay.mobilebill.biz.shared.contact.model;

import com.alipay.mobile.framework.service.ext.BizResult;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ContactListResp
{
  public BizResult bizResult;
  public List<ContactModel> contactList;
  public Map<String, List<String>> extendField = new HashMap();
  public boolean hasNext;
  public long nextPageStartTime;

  public BizResult getBizResult()
  {
    return this.bizResult;
  }

  public List<ContactModel> getContactList()
  {
    return this.contactList;
  }

  public Map<String, List<String>> getExtendField()
  {
    return this.extendField;
  }

  public long getNextPageStartTime()
  {
    return this.nextPageStartTime;
  }

  public boolean isHasNext()
  {
    return this.hasNext;
  }

  public void setBizResult(BizResult paramBizResult)
  {
    this.bizResult = paramBizResult;
  }

  public void setContactList(List<ContactModel> paramList)
  {
    this.contactList = paramList;
  }

  public void setExtendField(Map<String, List<String>> paramMap)
  {
    this.extendField = paramMap;
  }

  public void setHasNext(boolean paramBoolean)
  {
    this.hasNext = paramBoolean;
  }

  public void setNextPageStartTime(long paramLong)
  {
    this.nextPageStartTime = paramLong;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilebill.biz.shared.contact.model.ContactListResp
 * JD-Core Version:    0.6.2
 */