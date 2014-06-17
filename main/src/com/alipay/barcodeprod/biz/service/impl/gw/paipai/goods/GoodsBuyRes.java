package com.alipay.barcodeprod.biz.service.impl.gw.paipai.goods;

import com.alipay.barcodeprod.core.model.common.RpcCommonResult;
import java.util.HashMap;
import java.util.Map;

public class GoodsBuyRes extends RpcCommonResult
{
  public String bizType = "trade";
  public Map<String, String> bizcontext = new HashMap();
  public String subBizType = "";
  public String tradeNo;

  public String getBizType()
  {
    return this.bizType;
  }

  public Map<String, String> getBizcontext()
  {
    return this.bizcontext;
  }

  public String getSubBizType()
  {
    return this.subBizType;
  }

  public String getTradeNo()
  {
    return this.tradeNo;
  }

  public void setBizType(String paramString)
  {
    this.bizType = paramString;
  }

  public void setBizcontext(Map<String, String> paramMap)
  {
    this.bizcontext = paramMap;
  }

  public void setSubBizType(String paramString)
  {
    this.subBizType = paramString;
  }

  public void setTradeNo(String paramString)
  {
    this.tradeNo = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.barcodeprod.biz.service.impl.gw.paipai.goods.GoodsBuyRes
 * JD-Core Version:    0.6.2
 */