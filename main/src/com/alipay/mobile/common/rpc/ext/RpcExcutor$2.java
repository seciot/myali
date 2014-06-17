package com.alipay.mobile.common.rpc.ext;

import android.app.Activity;
import android.widget.ScrollView;
import com.alipay.mobile.base.commonbiz.R.string;
import com.alipay.mobile.commonui.widget.APFlowTipView;

class RpcExcutor$2
  implements Runnable
{
  RpcExcutor$2(RpcExcutor paramRpcExcutor, Object[] paramArrayOfObject)
  {
  }

  public void run()
  {
    RpcExcutor.access$100(this.this$0);
    RpcExcutor.access$200(this.this$0).resetFlowTipType(16);
    RpcExcutor.access$200(this.this$0).setTips(RpcExcutor.access$300(this.this$0).getString(R.string.flow_network_error));
    RpcExcutor.access$200(this.this$0).setAction(RpcExcutor.access$300(this.this$0).getString(R.string.tryAgin), new RpcExcutor.2.1(this));
    RpcExcutor.access$400(this.this$0).setVisibility(0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.rpc.ext.RpcExcutor.2
 * JD-Core Version:    0.6.2
 */