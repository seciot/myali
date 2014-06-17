package com.alipay.barcodeprod.biz.service.impl.gw.paipai.goods;

import com.alipay.mobile.framework.service.annotation.OperationType;

public abstract interface PaiGoodsFacade
{
  @OperationType("com.alipay.barcodeprod.paipai.goods.buy")
  public abstract GoodsBuyRes buy(GoodsBuyReq paramGoodsBuyReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.barcodeprod.biz.service.impl.gw.paipai.goods.PaiGoodsFacade
 * JD-Core Version:    0.6.2
 */