package com.alipay.mobile.onsitepay.payee;

import android.os.SystemClock;

final class i
  implements Runnable
{
  private i(FacePayeeActivity paramFacePayeeActivity)
  {
  }

  public final void run()
  {
    boolean bool = false;
    while (!this.a.o)
    {
      SystemClock.sleep(100L);
      if (this.a.l)
        if (this.a.k.getonDrawComplete())
        {
          if (this.a.p == -1)
          {
            if (!this.a.m)
              break label166;
            this.a.p = (-1 + this.a.k.setReceviceData());
            this.a.m = false;
            this.a.r = 0;
            bool = true;
          }
          while (true)
          {
            this.a.q = 0;
            if (this.a.p == -1)
              break;
            this.a.v(this.a.q, bool);
            FacePayeeActivity localFacePayeeActivity1 = this.a;
            localFacePayeeActivity1.q = (1 + localFacePayeeActivity1.q);
            FacePayeeActivity localFacePayeeActivity2 = this.a;
            localFacePayeeActivity2.p = (-1 + localFacePayeeActivity2.p);
            break;
            label166: if (this.a.s)
            {
              this.a.p = (-1 + this.a.k.setFirstData());
              this.a.s = false;
              bool = false;
            }
            else
            {
              this.a.p = (-1 + FacePayeeActivity.d(this.a, this.a.r));
              bool = false;
            }
          }
        }
    }
    this.a.n = true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payee.i
 * JD-Core Version:    0.6.2
 */