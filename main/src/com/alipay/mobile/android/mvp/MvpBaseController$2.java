package com.alipay.mobile.android.mvp;

class MvpBaseController$2
  implements Runnable
{
  MvpBaseController$2(MvpBaseController paramMvpBaseController, DataEvent paramDataEvent)
  {
  }

  public void run()
  {
    MvpBaseController.access$000(this.this$0).notifyDataObservers(this.val$dataEvent, 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.android.mvp.MvpBaseController.2
 * JD-Core Version:    0.6.2
 */