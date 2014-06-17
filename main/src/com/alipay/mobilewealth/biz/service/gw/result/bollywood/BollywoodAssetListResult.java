package com.alipay.mobilewealth.biz.service.gw.result.bollywood;

import com.alipay.mobilewealth.biz.service.gw.model.bollywood.BollywoodAssetInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonPageResult;
import java.io.Serializable;
import java.util.List;

public class BollywoodAssetListResult extends CommonPageResult
  implements Serializable
{
  public List<BollywoodAssetInfo> bollywoodAssetList;
  public String totalAsset;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.bollywood.BollywoodAssetListResult
 * JD-Core Version:    0.6.2
 */