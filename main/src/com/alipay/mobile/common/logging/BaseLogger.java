package com.alipay.mobile.common.logging;

import com.alipay.mobile.common.utils.SerialExecutor;
import java.io.PrintWriter;
import java.util.concurrent.atomic.AtomicBoolean;

public abstract class BaseLogger
{
  private SerialExecutor a = new SerialExecutor("BaseLogger");
  private AtomicBoolean b = new AtomicBoolean();
  protected PrintWriter mPrintWriter;
  protected String mSpecifiers;

  public BaseLogger()
  {
    this.b.set(false);
  }

  protected void doLog(Object[] paramArrayOfObject)
  {
    if (this.mPrintWriter != null)
    {
      this.mPrintWriter.format(this.mSpecifiers, paramArrayOfObject);
      this.mPrintWriter.println();
      if (!this.b.get())
      {
        this.b.set(true);
        this.a.execute(new BaseLogger.1(this));
      }
    }
  }

  protected abstract void init();
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.logging.BaseLogger
 * JD-Core Version:    0.6.2
 */