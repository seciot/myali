package com.alipay.trobot.external;

import com.alipay.test.ui.core.EventObject;
import com.alipay.test.ui.core.IMesssageHandle;

class DefaultMesssageHandler$1
  implements Runnable
{
  DefaultMesssageHandler$1(DefaultMesssageHandler paramDefaultMesssageHandler, EventObject paramEventObject, Object[] paramArrayOfObject)
  {
  }

  public void run()
  {
    this.this$0.handler.onChangeEvent(this.a, this.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.trobot.external.DefaultMesssageHandler.1
 * JD-Core Version:    0.6.2
 */