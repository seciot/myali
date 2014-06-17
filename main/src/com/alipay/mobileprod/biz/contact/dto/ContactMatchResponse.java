package com.alipay.mobileprod.biz.contact.dto;

import com.alipay.mobileprod.biz.contact.model.MobileBindingInfo;
import com.alipay.mobileprod.core.model.BaseRespVO;
import java.util.List;

public class ContactMatchResponse extends BaseRespVO
{
  public long latestMatchTime;
  public List<MobileBindingInfo> mobileBindingList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.contact.dto.ContactMatchResponse
 * JD-Core Version:    0.6.2
 */