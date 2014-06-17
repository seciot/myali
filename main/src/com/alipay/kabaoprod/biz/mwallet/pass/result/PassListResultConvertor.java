package com.alipay.kabaoprod.biz.mwallet.pass.result;

import java.util.List;

public class PassListResultConvertor
{
  public static PassListResult converCouponListFromPreLoadPassList(PreLoadPassListResult paramPreLoadPassListResult)
  {
    if (paramPreLoadPassListResult == null)
      return null;
    PassListResult localPassListResult = new PassListResult();
    if ((paramPreLoadPassListResult.getCouponList() != null) && (paramPreLoadPassListResult.getCouponList().size() > 0))
      localPassListResult.setPassTimelineList(paramPreLoadPassListResult.getCouponList());
    localPassListResult.setPassListPreLoaderInterval(paramPreLoadPassListResult.getPassListPreLoaderInterval());
    localPassListResult.success = paramPreLoadPassListResult.success;
    return localPassListResult;
  }

  public static PassListResult converTravelListFromPreLoadPassList(PreLoadPassListResult paramPreLoadPassListResult)
  {
    if (paramPreLoadPassListResult == null)
      return null;
    PassListResult localPassListResult = new PassListResult();
    if ((paramPreLoadPassListResult.getTravelList() != null) && (paramPreLoadPassListResult.getTravelList().size() > 0))
      localPassListResult.setPassTimelineList(paramPreLoadPassListResult.getTravelList());
    localPassListResult.setPassListPreLoaderInterval(paramPreLoadPassListResult.getPassListPreLoaderInterval());
    localPassListResult.success = paramPreLoadPassListResult.success;
    return localPassListResult;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.kabaoprod.biz.mwallet.pass.result.PassListResultConvertor
 * JD-Core Version:    0.6.2
 */