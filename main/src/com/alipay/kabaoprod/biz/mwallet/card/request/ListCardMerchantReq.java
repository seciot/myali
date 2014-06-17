package com.alipay.kabaoprod.biz.mwallet.card.request;

import com.alipay.kabaoprod.service.facade.model.ToString;
import java.io.Serializable;

public class ListCardMerchantReq extends ToString
  implements Serializable
{
  public boolean needPaging;
  public int pageNum;
  public int pageSize;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.card.request.ListCardMerchantReq
 * JD-Core Version:    0.6.2
 */