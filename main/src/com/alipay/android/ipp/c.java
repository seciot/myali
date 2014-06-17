package com.alipay.android.ipp;

final class c
  implements Runnable
{
  private c(IppFacade paramIppFacade)
  {
  }

  public final void run()
  {
    try
    {
      IppFacade.access$7(this.a);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.ipp.c
 * JD-Core Version:    0.6.2
 */