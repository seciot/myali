package com.alipay.android.phone.home.ui;

import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.common.rpc.RpcException;
import com.alipay.mobilebill.biz.bill.model.billremind.BillRemindInfoReq;
import com.alipay.mobilebill.biz.bill.model.billremind.BillRemindInfoResp;
import com.alipay.mobilebill.biz.rpc.bill.QueryBillRemindInfoRPCService;

final class i
  implements Runnable
{
  i(HeaderAreaLayout paramHeaderAreaLayout)
  {
  }

  public final void run()
  {
    BillRemindInfoReq localBillRemindInfoReq = new BillRemindInfoReq();
    try
    {
      LogCatLog.i(HeaderAreaLayout.h(this.a), "query bill remind info");
      BillRemindInfoResp localBillRemindInfoResp = HeaderAreaLayout.i(this.a).getWaitPayRecordNum(localBillRemindInfoReq);
      HeaderAreaLayout.v(this.a, localBillRemindInfoResp);
      return;
    }
    catch (RpcException localRpcException)
    {
      LogCatLog.e(HeaderAreaLayout.h(this.a), localRpcException.getMessage());
      localRpcException.printStackTrace();
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.ui.i
 * JD-Core Version:    0.6.2
 */