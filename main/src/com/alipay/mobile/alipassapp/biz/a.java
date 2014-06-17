package com.alipay.mobile.alipassapp.biz;

import com.alipay.kabaoprod.biz.mwallet.card.request.ListCardMerchantReq;
import com.alipay.kabaoprod.biz.mwallet.card.request.MemberCardRequest;
import com.alipay.kabaoprod.biz.mwallet.card.result.CardListResult;
import com.alipay.kabaoprod.biz.mwallet.card.result.CardPreviewResult;
import com.alipay.kabaoprod.biz.mwallet.pass.request.PassListPreloadReq;
import com.alipay.kabaoprod.biz.mwallet.pass.request.PassListReq;
import com.alipay.kabaoprod.biz.mwallet.pass.request.RemindNotifyReq;
import com.alipay.kabaoprod.biz.mwallet.pass.result.DeletePassResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassAddResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassListResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PreLoadPassListResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.RemindDateResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.ShareInfoResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.ShareResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.UpdateRemindDateResult;
import com.alipay.kabaoprod.biz.shared.result.KabaoCommonResult;

public abstract interface a
{
  public abstract CardListResult a(ListCardMerchantReq paramListCardMerchantReq);

  public abstract DeletePassResult a(String paramString, boolean paramBoolean);

  public abstract PassInfoResult a();

  public abstract PassInfoResult a(MemberCardRequest paramMemberCardRequest);

  public abstract PassInfoResult a(String paramString, boolean paramBoolean1, boolean paramBoolean2);

  public abstract PassListResult a(PassListReq paramPassListReq);

  public abstract PreLoadPassListResult a(PassListPreloadReq paramPassListPreloadReq);

  public abstract RemindDateResult a(String paramString);

  public abstract ShareResult a(String paramString1, String paramString2);

  public abstract UpdateRemindDateResult a(String paramString1, String paramString2, int paramInt);

  public abstract UpdateRemindDateResult a(String paramString1, String paramString2, long paramLong);

  public abstract void a(RemindNotifyReq paramRemindNotifyReq);

  public abstract PassAddResult b(String paramString1, String paramString2);

  public abstract PassInfoResult b(String paramString);

  public abstract KabaoCommonResult b(MemberCardRequest paramMemberCardRequest);

  public abstract CardPreviewResult c(MemberCardRequest paramMemberCardRequest);

  public abstract ShareInfoResult c(String paramString);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.a
 * JD-Core Version:    0.6.2
 */