package com.alipay.mobilewealth.common.service.facade.result;

import com.alipay.mobilewealth.common.service.facade.result.weaving.MobileRedirectWeaving;
import com.alipay.mobilewealth.common.service.facade.util.ToString;
import java.io.Serializable;
import java.util.List;

public class CommonResult extends ToString
  implements Serializable
{
  public String resultCode;
  public String resultDesc;
  public String resultView;
  public int showType = 0;
  public boolean success = false;
  public List<MobileRedirectWeaving> weavingList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobilewealth.common.service.facade.result.CommonResult
 * JD-Core Version:    0.6.2
 */