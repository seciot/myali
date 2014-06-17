package com.alipay.livetradeprod.core.model.rpc;

import com.alipay.livetradeprod.core.model.base.OnsiteBaseRes;
import com.alipay.livetradeprod.core.model.base.OnsiteTradeInfo;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class QuerySellerRes extends OnsiteBaseRes
  implements Serializable
{
  public List<OnsiteTradeInfo> tradeInfo = new ArrayList();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.livetradeprod.core.model.rpc.QuerySellerRes
 * JD-Core Version:    0.6.2
 */