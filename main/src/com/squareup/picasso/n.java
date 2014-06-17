package com.squareup.picasso;

import java.util.concurrent.ThreadFactory;

final class n
  implements ThreadFactory
{
  public final Thread newThread(Runnable paramRunnable)
  {
    return new m(paramRunnable);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.squareup.picasso.n
 * JD-Core Version:    0.6.2
 */