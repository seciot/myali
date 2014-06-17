package com.alipay.mobile.common.ui.contacts.dao;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.text.TextUtils;
import com.alipay.mobile.base.commonbiz.R.string;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.ui.contacts.util.RpcRequest;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobileprod.biz.contact.dto.ContactMatchRequest;
import com.alipay.mobileprod.biz.contact.dto.ContactMatchResponse;
import com.alipay.mobileprod.biz.contact.facade.MobileContactMatchService;
import com.alipay.mobileprod.core.model.BaseRespVO;
import java.util.List;

class MobileContactDAO$MatchMobileRequest extends RpcRequest<ContactMatchRequest, ContactMatchResponse>
{
  private boolean a = false;

  public MobileContactDAO$MatchMobileRequest(MobileContactDAO paramMobileContactDAO, Activity paramActivity)
  {
    super(paramActivity);
  }

  private void a(String paramString)
  {
    if ((MobileContactDAO.access$900(this.this$0) != null) && (MobileContactDAO.access$1000(this.this$0) != null))
      MobileContactDAO.access$900(this.this$0).post(new MobileContactDAO.MatchMobileRequest.1(this, paramString));
  }

  public void onFail(ContactMatchResponse paramContactMatchResponse)
  {
    new StringBuilder("rpc onFail ").append(paramContactMatchResponse).toString();
    if ((!MobileContactDAO.access$600(this.this$0)) || (this.a));
    String str;
    do
    {
      do
      {
        return;
        this.a = true;
      }
      while ((paramContactMatchResponse == null) || (!(paramContactMatchResponse instanceof BaseRespVO)) || (MobileContactDAO.access$900(this.this$0) == null));
      str = paramContactMatchResponse.getMemo();
    }
    while (TextUtils.isEmpty(str));
    a(str);
  }

  public void onRpcException(RpcException paramRpcException)
  {
    new StringBuilder("onRpcException ").append(paramRpcException).toString();
    if ((!MobileContactDAO.access$600(this.this$0)) || (this.a))
      return;
    this.a = true;
    if (paramRpcException.getCode() == 4)
    {
      a(AlipayApplication.getInstance().getString(R.string.network_error_wait_retry));
      return;
    }
    if ((paramRpcException.getCode() == 7) || (paramRpcException.getCode() == 5))
    {
      a(AlipayApplication.getInstance().getString(R.string.network_error_check_network));
      return;
    }
    a(AlipayApplication.getInstance().getString(R.string.network_error_check_network));
  }

  public ContactMatchResponse onRpcRequest(ContactMatchRequest paramContactMatchRequest)
  {
    if (!MobileContactDAO.access$600(this.this$0))
      return null;
    return MobileContactDAO.access$700(this.this$0).queryBindingInfo(paramContactMatchRequest);
  }

  public void onSuccess(ContactMatchResponse paramContactMatchResponse)
  {
    if (!MobileContactDAO.access$600(this.this$0));
    List localList;
    do
    {
      return;
      localList = paramContactMatchResponse.mobileBindingList;
      MobileContactDAO.access$502(this.this$0, paramContactMatchResponse.latestMatchTime);
      if ((MobileContactDAO.access$500(this.this$0) != 0L) && (MobileContactDAO.access$300(this.this$0) != null))
        MobileContactDAO.access$300(this.this$0).edit().putLong(MobileContactDAO.access$400(this.this$0), MobileContactDAO.access$500(this.this$0)).commit();
    }
    while ((localList == null) || (localList.size() <= 0));
    MobileContactDAO.access$800(this.this$0, localList);
  }

  public void resetShowedError()
  {
    this.a = false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.dao.MobileContactDAO.MatchMobileRequest
 * JD-Core Version:    0.6.2
 */