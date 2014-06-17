package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.biz.transfer.vo.MobileBindInfoVO;
import com.alipay.mobileprod.core.model.BaseRespVO;
import java.util.ArrayList;
import java.util.List;

public class QueryMobileBindInfoResp extends BaseRespVO
{
  public List<MobileBindInfoVO> mobileBindInfoList = new ArrayList(0);
  public String mobileNo;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.QueryMobileBindInfoResp
 * JD-Core Version:    0.6.2
 */