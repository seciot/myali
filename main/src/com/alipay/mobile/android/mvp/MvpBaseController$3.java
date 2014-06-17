package com.alipay.mobile.android.mvp;

class MvpBaseController$3
  implements Runnable
{
  MvpBaseController$3(MvpBaseController paramMvpBaseController, DataEvent paramDataEvent)
  {
  }

  public void run()
  {
    MvpBaseController.access$000(this.this$0).notifyDataObservers(this.val$dataEvent, 1);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.MvpBaseController.3
 * JD-Core Version:    0.6.2
 */