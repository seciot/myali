package com.alipay.android.app.display.uielement;

import android.os.CountDownTimer;
import com.alipay.android.app.display.event.EventType;

final class bd extends CountDownTimer
{
  bd(UILabel paramUILabel, long paramLong1, long paramLong2)
  {
    super(paramLong1, paramLong2);
  }

  public final void onFinish()
  {
    UILabel.a(this.a, 0);
    UILabel.d(this.a);
    bf localbf = new bf(this, EventType.n);
    this.a.a(localbf);
  }

  public final void onTick(long paramLong)
  {
    UILabel.a(this.a, (int)paramLong - UILabel.b(this.a));
    be localbe = new be(this, EventType.o);
    this.a.a(localbe);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.display.uielement.bd
 * JD-Core Version:    0.6.2
 */