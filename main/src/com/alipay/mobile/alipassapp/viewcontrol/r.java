package com.alipay.mobile.alipassapp.viewcontrol;

import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.commonui.widget.APImageView;
import com.androidquery.AQuery;

final class r
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  r(EventTicketViewControl paramEventTicketViewControl, ViewGroup paramViewGroup, String paramString, AlipassInfo paramAlipassInfo)
  {
  }

  public final void onGlobalLayout()
  {
    this.a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    int i = this.a.getWidth() / 3;
    LinearLayout.LayoutParams localLayoutParams1 = new LinearLayout.LayoutParams(-1, i);
    this.a.setLayoutParams(localLayoutParams1);
    LinearLayout.LayoutParams localLayoutParams2 = new LinearLayout.LayoutParams((int)(0.8D * i), -1);
    this.d.h.setLayoutParams(localLayoutParams2);
    if ((this.b != null) && (this.b.trim().length() > 0))
      ((AQuery)new AQuery(this.d.a).id(this.d.h)).image(this.b);
    this.d.a(this.c.getPrimaryFields(), this.c.getPassBaseInfo().getDisplayInfo());
    this.d.b(this.c.getSecondaryFields(), this.c.getPassBaseInfo().getDisplayInfo());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.viewcontrol.r
 * JD-Core Version:    0.6.2
 */