package com.alipay.mobile.common.ui.contacts.util;

import android.app.Activity;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;

class RpcRequest$2
  implements Runnable
{
  RpcRequest$2(RpcRequest paramRpcRequest)
  {
  }

  public void run()
  {
    if (RpcRequest.access$100(this.this$0).isFinishing());
    do
    {
      return;
      if ((RpcRequest.access$100(this.this$0) instanceof BaseActivity))
      {
        ((BaseActivity)RpcRequest.access$100(this.this$0)).showProgressDialog(null, false, null);
        return;
      }
    }
    while (!(RpcRequest.access$100(this.this$0) instanceof BaseFragmentActivity));
    ((BaseFragmentActivity)RpcRequest.access$100(this.this$0)).showProgressDialog(null, false, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.RpcRequest.2
 * JD-Core Version:    0.6.2
 */