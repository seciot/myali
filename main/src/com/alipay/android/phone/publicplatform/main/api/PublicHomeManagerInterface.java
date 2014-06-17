package com.alipay.android.phone.publicplatform.main.api;

import com.alipay.android.phone.publicplatform.main.listener.OnPublicHomeListQueryFinishListener;
import com.alipay.android.phone.publicplatform.main.model.MsgCountModel;
import com.alipay.mobile.android.main.publichome.dao.impl.FollowAccountInfoModel;
import com.alipay.publiccore.client.result.OfficialHomeListResult;
import java.util.List;
import java.util.Observer;

public abstract interface PublicHomeManagerInterface
{
  public abstract void addObserver(Observer paramObserver);

  public abstract MsgCountModel calculateMsgCount(String paramString);

  public abstract FollowAccountInfoModel getFollowAccountInfoModelById(String paramString1, String paramString2);

  public abstract void init();

  public abstract boolean isRpcReq();

  public abstract void notifyMsgCountUpdate();

  public abstract OfficialHomeListResult queryFewUserFollowAccountFromRemote(List<String> paramList);

  public abstract List<FollowAccountInfoModel> queryUserFollowAccountFromLocal(String paramString, boolean paramBoolean);

  public abstract OfficialHomeListResult queryUserFollowAccountFromRemote();

  public abstract boolean removeLocalFollow(String paramString1, String paramString2);

  public abstract void setOnPublicHomeListQueryFinishListener(OnPublicHomeListQueryFinishListener paramOnPublicHomeListQueryFinishListener);

  public abstract List<FollowAccountInfoModel> syncFewFollowAccountInfoToLocal(OfficialHomeListResult paramOfficialHomeListResult);

  public abstract List<FollowAccountInfoModel> syncFollowAccountInfoToLocal(OfficialHomeListResult paramOfficialHomeListResult);

  public abstract boolean updateThirdPartyLastMsg(String paramString1, String paramString2, String paramString3, long paramLong, String paramString4);

  public abstract boolean updateUnReadMsgCount(String paramString1, String paramString2, int paramInt);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.main.api.PublicHomeManagerInterface
 * JD-Core Version:    0.6.2
 */