package com.alipay.android.widget.security.ui.authentication;

import android.support.v4.view.ViewPager;

class IdImageViewAcitvity$1$1
  implements Runnable
{
  IdImageViewAcitvity$1$1(IdImageViewAcitvity.1 param1)
  {
  }

  public void run()
  {
    IdImageViewAcitvity.a(this.a.c, new IdImageViewAcitvity.ViewPagerAdapter(this.a.c, IdImageViewAcitvity.a(this.a.c)));
    IdImageViewAcitvity.c(this.a.c).setAdapter(IdImageViewAcitvity.b(this.a.c));
    IdImageViewAcitvity.c(this.a.c).setCurrentItem(this.a.b);
    IdImageViewAcitvity.c(this.a.c).setOnPageChangeListener(this.a.c);
    IdImageViewAcitvity.d(this.a.c);
    IdImageViewAcitvity.a(this.a.c, this.a.b);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.IdImageViewAcitvity.1.1
 * JD-Core Version:    0.6.2
 */