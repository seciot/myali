package com.alipay.mobile.alipassapp.biz.c;

import android.os.Handler;
import android.os.Looper;
import com.alipay.kabaoprod.biz.mwallet.card.manager.CardManager;
import com.alipay.kabaoprod.biz.mwallet.card.request.ListCardMerchantReq;
import com.alipay.kabaoprod.biz.mwallet.card.request.MemberCardRequest;
import com.alipay.kabaoprod.biz.mwallet.card.result.CardListResult;
import com.alipay.kabaoprod.biz.mwallet.card.result.CardPreviewResult;
import com.alipay.kabaoprod.biz.mwallet.pass.manager.PassManager;
import com.alipay.kabaoprod.biz.mwallet.pass.manager.ThirdEvoucherCreateManager;
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
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.common.RpcService;

public class a
  implements com.alipay.mobile.alipassapp.biz.a
{
  public static final String a = a.class.getName();
  PassManager b;
  ThirdEvoucherCreateManager c;
  CardManager d;
  private Handler e = new Handler(Looper.getMainLooper());
  private ActivityApplication f;

  public a(MicroApplicationContext paramMicroApplicationContext)
  {
    this.b = ((PassManager)((RpcService)paramMicroApplicationContext.findServiceByInterface(RpcService.class.getName())).getRpcProxy(PassManager.class));
    this.c = ((ThirdEvoucherCreateManager)((RpcService)paramMicroApplicationContext.findServiceByInterface(RpcService.class.getName())).getRpcProxy(ThirdEvoucherCreateManager.class));
    this.d = ((CardManager)((RpcService)paramMicroApplicationContext.findServiceByInterface(RpcService.class.getName())).getRpcProxy(CardManager.class));
  }

  public a(ActivityApplication paramActivityApplication)
  {
    this.f = paramActivityApplication;
    this.b = ((PassManager)((RpcService)this.f.getServiceByInterface(RpcService.class.getName())).getRpcProxy(PassManager.class));
    this.c = ((ThirdEvoucherCreateManager)((RpcService)this.f.getServiceByInterface(RpcService.class.getName())).getRpcProxy(ThirdEvoucherCreateManager.class));
    this.d = ((CardManager)((RpcService)this.f.getServiceByInterface(RpcService.class.getName())).getRpcProxy(CardManager.class));
  }

  private void a(KabaoCommonResult paramKabaoCommonResult)
  {
    this.e.post(new b(this, paramKabaoCommonResult));
  }

  public final CardListResult a(ListCardMerchantReq paramListCardMerchantReq)
  {
    return this.d.queryAvailableCardList(paramListCardMerchantReq);
  }

  public final DeletePassResult a(String paramString, boolean paramBoolean)
  {
    DeletePassResult localDeletePassResult = this.b.deleteUserPass(paramString);
    if (paramBoolean)
      a(localDeletePassResult);
    return localDeletePassResult;
  }

  public final PassInfoResult a()
  {
    return this.b.queryPassInfoById(null);
  }

  public final PassInfoResult a(MemberCardRequest paramMemberCardRequest)
  {
    return this.d.queryMemberCardInfo(paramMemberCardRequest);
  }

  public final PassInfoResult a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    PassInfoResult localPassInfoResult = this.b.queryPassInfo(paramString, paramBoolean1);
    if (paramBoolean2)
      a(localPassInfoResult);
    return localPassInfoResult;
  }

  public final PassListResult a(PassListReq paramPassListReq)
  {
    PassListResult localPassListResult = this.b.queryPassList(paramPassListReq, false);
    a(localPassListResult);
    return localPassListResult;
  }

  public final PreLoadPassListResult a(PassListPreloadReq paramPassListPreloadReq)
  {
    return this.b.preLoadPassList(paramPassListPreloadReq);
  }

  public final RemindDateResult a(String paramString)
  {
    RemindDateResult localRemindDateResult = this.b.queryRemindDateByPassId(paramString);
    a(localRemindDateResult);
    return localRemindDateResult;
  }

  public final ShareResult a(String paramString1, String paramString2)
  {
    ShareResult localShareResult = this.b.getShareContent(paramString1, paramString2);
    a(localShareResult);
    return localShareResult;
  }

  public final UpdateRemindDateResult a(String paramString1, String paramString2, int paramInt)
  {
    UpdateRemindDateResult localUpdateRemindDateResult = this.b.updateReminDate(paramString1, paramString2, paramInt);
    a(localUpdateRemindDateResult);
    return localUpdateRemindDateResult;
  }

  public final UpdateRemindDateResult a(String paramString1, String paramString2, long paramLong)
  {
    UpdateRemindDateResult localUpdateRemindDateResult = this.b.updateRemindRealTime(paramString1, paramString2, paramLong);
    a(localUpdateRemindDateResult);
    return localUpdateRemindDateResult;
  }

  public final void a(RemindNotifyReq paramRemindNotifyReq)
  {
    this.b.notifyUpdateRemindStatus(paramRemindNotifyReq);
  }

  public final PassAddResult b(String paramString1, String paramString2)
  {
    return this.c.asynCreateAlipass(paramString1, paramString2);
  }

  public final PassInfoResult b(String paramString)
  {
    PassInfoResult localPassInfoResult = this.c.addAlipass(paramString);
    a(localPassInfoResult);
    return localPassInfoResult;
  }

  public final KabaoCommonResult b(MemberCardRequest paramMemberCardRequest)
  {
    return this.d.createMemberCard(paramMemberCardRequest);
  }

  public final CardPreviewResult c(MemberCardRequest paramMemberCardRequest)
  {
    return this.d.queryCardPreviewInfo(paramMemberCardRequest);
  }

  public final ShareInfoResult c(String paramString)
  {
    return this.b.getShareInfo(paramString);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.c.a
 * JD-Core Version:    0.6.2
 */