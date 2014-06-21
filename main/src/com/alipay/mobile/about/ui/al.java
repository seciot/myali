package com.alipay.mobile.about.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.about.ui.b.b;
import com.alipay.mobile.about.ui.b.c;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import java.util.List;

final class al
  implements View.OnClickListener
{
  al(MultiPictureSelectorActivity paramMultiPictureSelectorActivity)
  {
  }

  public final void onClick(View paramView)
  {
    c localc = (c)paramView.getTag();
    int i = localc.a;
    b localb = (b)MultiPictureSelectorActivity.c(this.a).get(i);
    localb.getBundle(false);
    localb.getBundle(null);
    MultiPictureSelectorActivity.l(this.a);
    MultiPictureSelectorActivity.k(this.a).removeBundle(localb.a());
    MultiPictureSelectorActivity.j(this.a).removeView(paramView);
    if ((i >= MultiPictureSelectorActivity.p(this.a)) && (i <= MultiPictureSelectorActivity.p(this.a) + MultiPictureSelectorActivity.q(this.a)))
      MultiPictureSelectorActivity.a(this.a, localc.b);
    APTextView localAPTextView = MultiPictureSelectorActivity.r(this.a);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(MultiPictureSelectorActivity.m(this.a));
    arrayOfObject[1] = Integer.valueOf(MultiPictureSelectorActivity.n(this.a) - MultiPictureSelectorActivity.m(this.a) - MultiPictureSelectorActivity.o(this.a));
    localAPTextView.setText(String.format("已选择%d张，还可以选择%d张", arrayOfObject));
    MultiPictureSelectorActivity localMultiPictureSelectorActivity = this.a;
    if (MultiPictureSelectorActivity.m(this.a) > 0);
    for (boolean bool = true; ; bool = false)
    {
      MultiPictureSelectorActivity.a(localMultiPictureSelectorActivity, bool);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.al
 * JD-Core Version:    0.6.2
 */