package com.alipay.kabaoprod.biz.mwallet.pass.manager;

import com.alipay.kabaoprod.biz.mwallet.pass.request.HomePageWidgetReq;
import com.alipay.kabaoprod.biz.mwallet.pass.request.PassListPreloadReq;
import com.alipay.kabaoprod.biz.mwallet.pass.request.PassListReq;
import com.alipay.kabaoprod.biz.mwallet.pass.request.RemindNotifyReq;
import com.alipay.kabaoprod.biz.mwallet.pass.result.DeletePassResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.IndexPassResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.IndexWidgetResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassListResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PreLoadPassListResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.RemindDateResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.ShareInfoResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.ShareResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.UpdateRemindDateResult;
import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;

public abstract interface PassManager
{
  @OperationType("alipay.kabao.pass.deleteUserPass")
  @CheckLogin
  public abstract DeletePassResult deleteUserPass(String paramString);

  @OperationType("alipay.kabao.pass.getDiscoveryHomePageInfo")
  @CheckLogin
  public abstract IndexPassResult getDiscoveryHomePageInfo();

  @OperationType("alipay.kabao.pass.getHomePageWidgetInfo")
  @CheckLogin
  public abstract IndexWidgetResult getHomePageWidgetInfo(HomePageWidgetReq paramHomePageWidgetReq);

  @OperationType("alipay.kabao.pass.getShareContent")
  @CheckLogin
  public abstract ShareResult getShareContent(String paramString1, String paramString2);

  @OperationType("alipay.kabao.pass.getShareInfo")
  @CheckLogin
  public abstract ShareInfoResult getShareInfo(String paramString);

  @OperationType("alipay.kabao.pass.notifyUpdateRemindStatus")
  @CheckLogin
  public abstract void notifyUpdateRemindStatus(RemindNotifyReq paramRemindNotifyReq);

  @OperationType("alipay.kabao.pass.preLoadPassList")
  @CheckLogin
  public abstract PreLoadPassListResult preLoadPassList(PassListPreloadReq paramPassListPreloadReq);

  @OperationType("alipay.kabao.pass.queryPassInfo")
  @CheckLogin
  public abstract PassInfoResult queryPassInfo(String paramString, boolean paramBoolean);

  @OperationType("alipay.kabao.pass.queryPassInfoById")
  @CheckLogin
  public abstract PassInfoResult queryPassInfoById(String paramString);

  @OperationType("alipay.kabao.pass.queryPassList")
  @CheckLogin
  public abstract PassListResult queryPassList(PassListReq paramPassListReq, boolean paramBoolean);

  @OperationType("alipay.kabao.pass.queryPassListByRownum")
  @CheckLogin
  public abstract PassListResult queryPassListByRownum(PassListReq paramPassListReq);

  @OperationType("alipay.kabao.pass.queryRemindDateByPassId")
  @CheckLogin
  public abstract RemindDateResult queryRemindDateByPassId(String paramString);

  @OperationType("alipay.kabao.pass.updateReminDate")
  @CheckLogin
  public abstract UpdateRemindDateResult updateReminDate(String paramString1, String paramString2, int paramInt);

  @OperationType("alipay.kabao.pass.updateRemindRealTime")
  @CheckLogin
  public abstract UpdateRemindDateResult updateRemindRealTime(String paramString1, String paramString2, long paramLong);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.pass.manager.PassManager
 * JD-Core Version:    0.6.2
 */