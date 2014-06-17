package com.alipay.kabaoprod.biz.mwallet.card.manager;

import com.alipay.kabaoprod.biz.mwallet.card.request.ListCardMerchantReq;
import com.alipay.kabaoprod.biz.mwallet.card.request.MemberCardRequest;
import com.alipay.kabaoprod.biz.mwallet.card.result.CardListResult;
import com.alipay.kabaoprod.biz.mwallet.card.result.CardPreviewResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface CardManager
{
  @OperationType("alipay.kabao.card.createMemberCard")
  @CheckLogin
  public abstract KabaoCommonResult createMemberCard(MemberCardRequest paramMemberCardRequest);

  @OperationType("alipay.kabao.card.queryAvailableCardList")
  @CheckLogin
  public abstract CardListResult queryAvailableCardList(ListCardMerchantReq paramListCardMerchantReq);

  @OperationType("alipay.kabao.card.queryCardPreviewInfo")
  @CheckLogin
  public abstract CardPreviewResult queryCardPreviewInfo(MemberCardRequest paramMemberCardRequest);

  @OperationType("alipay.kabao.card.queryMemberCard")
  @CheckLogin
  public abstract PassInfoResult queryMemberCardInfo(MemberCardRequest paramMemberCardRequest);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.card.manager.CardManager
 * JD-Core Version:    0.6.2
 */