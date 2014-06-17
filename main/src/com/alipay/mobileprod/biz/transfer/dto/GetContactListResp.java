package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.biz.transfer.vo.ContactUserVO;
import com.alipay.mobileprod.core.model.BaseRespVO;
import java.util.List;

public class GetContactListResp extends BaseRespVO
{
  public List<ContactUserVO> contactList;

  public List<ContactUserVO> getContactList()
  {
    return this.contactList;
  }

  public void setContactList(List<ContactUserVO> paramList)
  {
    this.contactList = paramList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.GetContactListResp
 * JD-Core Version:    0.6.2
 */