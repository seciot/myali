package com.alipay.mobilewealth.biz.service.gw.result.home;

import com.alipay.mobilewealth.biz.service.gw.model.home.WealthHomeInfo;
import com.alipay.mobilewealth.biz.service.gw.model.home.WealthHomeMarkInfo;
import com.alipay.mobilewealth.common.service.facade.result.CommonResult;
import java.io.Serializable;
import java.util.Map;

public class WealthHomeInfoResult extends CommonResult
  implements Serializable
{
  public Map<String, WealthHomeInfo> homeInfo;
  public Map<String, WealthHomeMarkInfo> homeMarkInfo;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.biz.service.gw.result.home.WealthHomeInfoResult
 * JD-Core Version:    0.6.2
 */