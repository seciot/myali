package com.alipay.android.ipp;

final class e
  implements Runnable
{
  private String a;

  public e(IppFacade paramIppFacade, String paramString)
  {
    this.a = paramString;
  }

  public final void run()
  {
    try
    {
      IppFacade.access$8(this.b, this.a);
      return;
    }
    catch (Throwable localThrowable)
    {
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.ipp.e
 * JD-Core Version:    0.6.2
 */