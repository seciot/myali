package com.alipay.mobile.android.mvp;

class MvpBaseController$1
  implements Runnable
{
  MvpBaseController$1(MvpBaseController paramMvpBaseController, DataEvent paramDataEvent, int paramInt)
  {
  }

  public void run()
  {
    MvpBaseController.access$000(this.this$0).notifyDataObservers(this.val$dataEvent, this.val$notifyType);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.MvpBaseController.1
 * JD-Core Version:    0.6.2
 */