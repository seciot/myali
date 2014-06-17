package com.alipay.publiccore.biz.service.impl.rpc;

import com.alipay.mobile.framework.service.annotation.OperationType;
import com.alipay.mobile.framework.service.ext.annotation.CheckLogin;
import com.alipay.publiccore.client.req.FollowReq;
import com.alipay.publiccore.client.req.MoreOfficialListReq;
import com.alipay.publiccore.client.req.OfficialAccountListReq;
import com.alipay.publiccore.client.req.OfficialAccountReq;
import com.alipay.publiccore.client.req.OfficialAccountSetReq;
import com.alipay.publiccore.client.req.OfficialCategoriesReq;
import com.alipay.publiccore.client.req.OfficialHomeReq;
import com.alipay.publiccore.client.req.OfficialQueryByInstIdReq;
import com.alipay.publiccore.client.req.OfficialRecommendReq;
import com.alipay.publiccore.client.req.OfficialTypeReq;
import com.alipay.publiccore.client.req.UserAccountReq;
import com.alipay.publiccore.client.result.OfficialAccountLinkResult;
import com.alipay.publiccore.client.result.OfficialAccountListResult;
import com.alipay.publiccore.client.result.OfficialAccountResult;
import com.alipay.publiccore.client.result.OfficialAccountSetResult;
import com.alipay.publiccore.client.result.OfficialHomeListResult;
import com.alipay.publiccore.client.result.OfficialRecommendListResult;
import com.alipay.publiccore.client.result.OfficialTypeListResult;
import com.alipay.publiccore.client.result.UserAccountResult;
import com.alipay.publiccore.common.service.facade.model.result.PublicResult;

public abstract interface OfficialAccountFacade
{
  @OperationType("alipay.publicplatform.account.addFollow")
  @CheckLogin
  public abstract PublicResult addFollow(FollowReq paramFollowReq);

  @OperationType("alipay.publicplatform.account.getUserAccount")
  @CheckLogin
  public abstract UserAccountResult getUserAccount(UserAccountReq paramUserAccountReq);

  @OperationType("alipay.publicplatform.account.modifyPushSwitch")
  @CheckLogin
  public abstract PublicResult modifyPushSwitch(FollowReq paramFollowReq);

  @OperationType("alipay.publicplatform.account.queryCategories")
  @CheckLogin
  public abstract OfficialTypeListResult queryCategories(OfficialCategoriesReq paramOfficialCategoriesReq);

  @OperationType("alipay.publicplatform.account.queryCategoryRecommendAccount")
  @CheckLogin
  public abstract OfficialAccountListResult queryCategoryRecommendAccount(MoreOfficialListReq paramMoreOfficialListReq);

  @OperationType("alipay.publicplatform.account.queryMoreOfficialAccount")
  @CheckLogin
  public abstract OfficialAccountListResult queryMoreOfficialAccount(MoreOfficialListReq paramMoreOfficialListReq);

  @OperationType("alipay.publicplatform.account.queryOfficialAccount")
  @CheckLogin
  public abstract OfficialAccountListResult queryOfficialAccount(OfficialAccountListReq paramOfficialAccountListReq);

  @OperationType("alipay.publicplatform.account.queryOfficialAccountByInstIdAndCardType")
  @CheckLogin
  public abstract OfficialAccountLinkResult queryOfficialAccountByInstIdAndCardType(OfficialQueryByInstIdReq paramOfficialQueryByInstIdReq);

  @OperationType("alipay.publicplatform.account.queryOfficialAccountSetMsg")
  @CheckLogin
  public abstract OfficialAccountSetResult queryOfficialAccountSetMsg(OfficialAccountSetReq paramOfficialAccountSetReq);

  @OperationType("alipay.publicplatform.account.queryOfficialDetail")
  @CheckLogin
  public abstract OfficialAccountResult queryOfficialDetail(OfficialAccountReq paramOfficialAccountReq);

  @OperationType("alipay.publicplatform.account.queryRecommendOfficial")
  @CheckLogin
  public abstract OfficialRecommendListResult queryRecommendOfficial(OfficialRecommendReq paramOfficialRecommendReq);

  @OperationType("alipay.publicplatform.account.querySubOfficialType")
  @CheckLogin
  public abstract OfficialTypeListResult querySubOfficialType(OfficialTypeReq paramOfficialTypeReq);

  @OperationType("alipay.publicplatform.account.queryUserFollowAccount")
  @CheckLogin
  public abstract OfficialHomeListResult queryUserFollowAccount(OfficialHomeReq paramOfficialHomeReq);

  @OperationType("alipay.publicplatform.account.queryUserFollowAccountByPIds")
  @CheckLogin
  public abstract OfficialHomeListResult queryUserFollowAccountByPIds(OfficialHomeReq paramOfficialHomeReq);

  @OperationType("alipay.publicplatform.account.removeFollow")
  @CheckLogin
  public abstract PublicResult removeFollow(FollowReq paramFollowReq);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.publiccore.biz.service.impl.rpc.OfficialAccountFacade
 * JD-Core Version:    0.6.2
 */