package com.alipay.mobile.core.exception;

import android.content.Context;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.R.string;
import com.alipay.mobile.framework.app.MicroApplication;

class FrameworkExceptionHandler$1
  implements Runnable
{
  FrameworkExceptionHandler$1(FrameworkExceptionHandler paramFrameworkExceptionHandler, MicroApplicationContext paramMicroApplicationContext, MicroApplication paramMicroApplication)
  {
  }

  public void run()
  {
    this.a.Alert(null, FrameworkExceptionHandler.access$0(this.this$0).getText(R.string.businessStop), FrameworkExceptionHandler.access$0(this.this$0).getText(R.string.confirm), new FrameworkExceptionHandler.1.1(this, this.b), null, null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.core.exception.FrameworkExceptionHandler.1
 * JD-Core Version:    0.6.2
 */