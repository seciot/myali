package com.alipay.barcodeprod.biz.service.impl.gw.paipai.goods;

import com.alipay.barcodeprod.common.domain.result.ToString;
import java.util.Map;

public class GoodsBuyReq extends ToString
{
  public String goodscode;
  public Map<String, String> productContext;

  public String getGoodscode()
  {
    return this.goodscode;
  }

  public Map<String, String> getProductContext()
  {
    return this.productContext;
  }

  public void setGoodscode(String paramString)
  {
    this.goodscode = paramString;
  }

  public void setProductContext(Map<String, String> paramMap)
  {
    this.productContext = paramMap;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.barcodeprod.biz.service.impl.gw.paipai.goods.GoodsBuyReq
 * JD-Core Version:    0.6.2
 */