package com.alipay.b.b;

import com.alipay.sonicwavenfc.SonicWaveNFC;

public final class e extends Thread
{
  private boolean a = true;

  protected e(d paramd)
  {
  }

  private boolean a()
  {
    try
    {
      boolean bool = this.a;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(boolean paramBoolean)
  {
    try
    {
      this.a = false;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void run()
  {
    if (SonicWaveNFC.getInstance().getSendDataHandler() != null)
      SonicWaveNFC.getInstance().getSendDataHandler().onSendDataStarted();
    try
    {
      Thread.sleep(1000L);
      d locald1 = this.b;
      locald1.b = (-1000 + locald1.b);
      if ((!a()) || (this.b.a == null))
        return;
    }
    catch (Exception localException1)
    {
      try
      {
        while (true)
        {
          Thread.sleep(100L);
          label67: d locald2 = this.b;
          locald2.b = (-100 + locald2.b);
          if ((this.b.b <= 0) && (a()))
          {
            this.b.c();
            try
            {
              if (SonicWaveNFC.getInstance().getSendDataHandler() != null)
              {
                SonicWaveNFC.getInstance().getSendDataHandler().onSendDataTimeout();
                return;
              }
            }
            catch (Exception localException3)
            {
              return;
            }
          }
        }
        localException1 = localException1;
      }
      catch (Exception localException2)
      {
        break label67;
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.b.b.e
 * JD-Core Version:    0.6.2
 */