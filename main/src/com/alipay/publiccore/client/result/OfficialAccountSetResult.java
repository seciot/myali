package com.alipay.publiccore.client.result;

import com.alipay.publiccore.client.model.OfficialAccountSetInfo;
import com.alipay.publiccore.client.model.ThirdPartyAccountInfo;
import com.alipay.publiccore.common.service.facade.model.result.PublicResult;
import java.util.List;

public class OfficialAccountSetResult extends PublicResult
{
  public String buttonName;
  public String buttonUrl;
  public OfficialAccountSetInfo officialAccountSetInfo;
  public OfficialAccountShareInfo officialAccountShareInfo;
  public List<ThirdPartyAccountInfo> thirdPartyAccountInfos;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.client.result.OfficialAccountSetResult
 * JD-Core Version:    0.6.2
 */