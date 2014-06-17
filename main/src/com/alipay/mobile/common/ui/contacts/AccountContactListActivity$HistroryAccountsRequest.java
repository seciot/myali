package com.alipay.mobile.common.ui.contacts;

import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobile.common.ui.contacts.util.RpcRequest;
import com.alipay.mobileprod.biz.transfer.TransferService;
import com.alipay.mobileprod.biz.transfer.dto.GetContactListReq;
import com.alipay.mobileprod.biz.transfer.dto.GetContactListResp;

class AccountContactListActivity$HistroryAccountsRequest extends RpcRequest<GetContactListReq, GetContactListResp>
{
  public AccountContactListActivity$HistroryAccountsRequest(AccountContactListActivity paramAccountContactListActivity)
  {
    super(paramAccountContactListActivity);
    enableCache("GetContactListResp.json");
  }

  public void onPostExecute()
  {
    super.onPostExecute();
    this.this$0.pullRefreshFinished(true);
  }

  public void onRpcException(RpcException paramRpcException)
  {
    super.onRpcException(paramRpcException);
    this.this$0.showEmptyContent("");
  }

  public GetContactListResp onRpcRequest(GetContactListReq paramGetContactListReq)
  {
    return AccountContactListActivity.access$200(this.this$0).getContactList(paramGetContactListReq);
  }

  public void onSuccess(GetContactListResp paramGetContactListResp)
  {
    AccountContactListActivity.access$300(this.this$0, paramGetContactListResp);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.AccountContactListActivity.HistroryAccountsRequest
 * JD-Core Version:    0.6.2
 */