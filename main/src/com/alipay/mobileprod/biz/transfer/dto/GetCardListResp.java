package com.alipay.mobileprod.biz.transfer.dto;

import com.alipay.mobileprod.biz.transfer.vo.CardVO;
import com.alipay.mobileprod.core.model.BaseRespVO;
import java.util.List;

public class GetCardListResp extends BaseRespVO
{
  public List<CardVO> cardList;
  public List<CardVO> dexCardList;
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobileprod.biz.transfer.dto.GetCardListResp
 * JD-Core Version:    0.6.2
 */