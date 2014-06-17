package com.androidquery.callback;

import com.androidquery.util.Common;

class AbstractAjaxCallback$1
  implements Runnable
{
  AbstractAjaxCallback$1(AbstractAjaxCallback paramAbstractAjaxCallback, Object paramObject, boolean paramBoolean)
  {
  }

  public void run()
  {
    Common.showProgress(this.a, AbstractAjaxCallback.access$0(this.this$0), this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.callback.AbstractAjaxCallback.1
 * JD-Core Version:    0.6.2
 */