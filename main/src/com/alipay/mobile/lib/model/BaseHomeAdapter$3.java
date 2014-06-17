package com.alipay.mobile.lib.model;

import java.util.List;

class BaseHomeAdapter$3
  implements Runnable
{
  BaseHomeAdapter$3(BaseHomeAdapter paramBaseHomeAdapter, List paramList)
  {
  }

  public void run()
  {
    if (BaseHomeAdapter.access$000(this.this$0) != null)
      BaseHomeAdapter.access$000(this.this$0).onDataAdd(this.val$list);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.lib.model.BaseHomeAdapter.3
 * JD-Core Version:    0.6.2
 */