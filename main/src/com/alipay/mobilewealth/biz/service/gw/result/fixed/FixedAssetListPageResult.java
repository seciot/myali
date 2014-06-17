package com.alipay.mobilewealth.biz.service.gw.result.fixed;

import com.alipay.mobilewealth.biz.service.gw.model.fixed.FixedAssetInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonPageResult;
import java.io.Serializable;
import java.util.List;

public class FixedAssetListPageResult extends CommonPageResult
  implements Serializable
{
  public List<FixedAssetInfo> assetInfos;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.fixed.FixedAssetListPageResult
 * JD-Core Version:    0.6.2
 */