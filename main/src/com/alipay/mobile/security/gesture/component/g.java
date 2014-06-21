package com.alipay.mobile.security.gesture.component;

final class g
  implements m
{
  g(AlipayPattern paramAlipayPattern, LockIndicator paramLockIndicator)
  {
  }

  public final void a(String paramString)
  {
    if (AlipayPattern.access$500(this.b) == null)
      if ((paramString == null) || (paramString.length() < LockView.MINSELECTED))
        AlipayPattern.access$700(this.b);
    while (true)
    {
      AlipayPattern.access$400(this.b).clear();
      return;
      AlipayPattern.access$800(this.b, this.a, paramString);
      continue;
      if (AlipayPattern.access$500(this.b).equals(paramString))
      {
        if (this.b.mPatternChangeListener != null)
          this.b.mPatternChangeListener.v(false, paramString);
      }
      else
        AlipayPattern.access$900(this.b);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.component.g
 * JD-Core Version:    0.6.2
 */