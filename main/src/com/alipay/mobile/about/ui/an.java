package com.alipay.mobile.about.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.about.ui.b.b;
import com.alipay.mobile.about.ui.b.c;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import java.util.List;

final class an
  implements View.OnClickListener
{
  an(MultiPictureSelectorActivity.a parama)
  {
  }

  public final void onClick(View paramView)
  {
    c localc = (c)paramView.getTag();
    int i = localc.a;
    b localb = (b)MultiPictureSelectorActivity.getBundleByComponentName(this.a.c).get(i);
    localb.getBundle(false);
    localb.getBundle(null);
    MultiPictureSelectorActivity.l(this.a.c);
    MultiPictureSelectorActivity.k(this.a.c).removeBundle(localb.getInstance());
    MultiPictureSelectorActivity.j(this.a.c).removeView(paramView);
    if ((i >= MultiPictureSelectorActivity.p(this.a.c)) && (i <= MultiPictureSelectorActivity.p(this.a.c) + MultiPictureSelectorActivity.q(this.a.c)))
      MultiPictureSelectorActivity.v(this.a.c, localc.b);
    APTextView localAPTextView = MultiPictureSelectorActivity.r(this.a.c);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(MultiPictureSelectorActivity.m(this.a.c));
    arrayOfObject[1] = Integer.valueOf(MultiPictureSelectorActivity.n(this.a.c) - MultiPictureSelectorActivity.m(this.a.c) - MultiPictureSelectorActivity.o(this.a.c));
    localAPTextView.setText(String.format("已选择%d张，还可以选择%d张", arrayOfObject));
    MultiPictureSelectorActivity localMultiPictureSelectorActivity = this.a.c;
    if (MultiPictureSelectorActivity.m(this.a.c) > 0);
    for (boolean bool = true; ; bool = false)
    {
      MultiPictureSelectorActivity.v(localMultiPictureSelectorActivity, bool);
      return;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.an
 * JD-Core Version:    0.6.2
 */