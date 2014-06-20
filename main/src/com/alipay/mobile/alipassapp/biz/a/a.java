package com.alipay.mobile.alipassapp.biz.a;

import com.alipay.kabaoprod.biz.mwallet.pass.result.PassInfoResult;
import com.alipay.kabaoprod.biz.mwallet.pass.result.PassListResult;
import com.alipay.kabaoprod.core.model.model.PassTimelineInfo;
import com.alipay.mobile.alipassapp.biz.bean.AlipassListCache;
import com.alipay.mobile.alipassapp.biz.bean.AlipassOffline;
import com.alipay.mobile.alipassapp.biz.bean.AlipassOfflineV2;
import java.util.List;

public abstract interface a
{
  public abstract PassInfoResult a(String paramString1, String paramString2);

  public abstract PassInfoResult a(String paramString1, String paramString2, String paramString3);

  public abstract PassListResult a(String paramString);

  public abstract AlipassOffline a(String paramString, long paramLong);

  public abstract Object a(String paramString, int paramInt, Class<?> paramClass);

  public abstract void a();

  public abstract void a(PassInfoResult paramPassInfoResult, String paramString, int paramInt);

  public abstract void a(PassListResult paramPassListResult, String paramString);

  public abstract void a(String paramString1, String paramString2, List<String> paramList);

  public abstract void a(List<AlipassOffline> paramList);

  public abstract void a(List<String> paramList, String paramString);

  public abstract void a(List<PassTimelineInfo> paramList, String paramString, int paramInt);

  public abstract boolean a(AlipassListCache paramAlipassListCache);

  public abstract boolean a(AlipassOffline paramAlipassOffline);

  public abstract boolean a(String paramString, AlipassOffline paramAlipassOffline);

  public abstract boolean a(String paramString1, String paramString2, String paramString3, PassInfoResult paramPassInfoResult);

  public abstract PassInfoResult b(String paramString1, String paramString2);

  public abstract List<AlipassOfflineV2> b();

  public abstract void b(List<String> paramList, String paramString);

  public abstract boolean b(AlipassListCache paramAlipassListCache);

  public abstract boolean b(String paramString);

  public abstract int c(String paramString);

  public abstract AlipassOffline c(String paramString1, String paramString2);

  public abstract List<String> getBundleName();

  public abstract PassListResult d(String paramString);

  public abstract List<String> d();

  public abstract boolean d(String paramString1, String paramString2);

  public abstract PassListResult e();

  public abstract AlipassListCache e(String paramString);

  public abstract void e(String paramString1, String paramString2);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.biz.a.a
 * JD-Core Version:    0.6.2
 */