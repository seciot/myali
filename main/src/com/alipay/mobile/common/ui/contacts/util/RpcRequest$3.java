package com.alipay.mobile.common.ui.contacts.util;

import android.app.Activity;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;

class RpcRequest$3
  implements Runnable
{
  RpcRequest$3(RpcRequest paramRpcRequest)
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
        ((BaseActivity)RpcRequest.access$100(this.this$0)).dismissProgressDialog();
        return;
      }
    }
    while (!(RpcRequest.access$100(this.this$0) instanceof BaseFragmentActivity));
    ((BaseFragmentActivity)RpcRequest.access$100(this.this$0)).dismissProgressDialog();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.util.RpcRequest.3
 * JD-Core Version:    0.6.2
 */