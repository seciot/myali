package com.taobao.android.ssologin;

public class CalledFromWrongThreadException extends RuntimeException
{
  public CalledFromWrongThreadException()
  {
    super("Only the original thread that created a view hierarchy can touch its views.");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.taobao.android.ssologin.CalledFromWrongThreadException
 * JD-Core Version:    0.6.2
 */