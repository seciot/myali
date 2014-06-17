package com.alipay.mobile.alipassapp.ui.common;

import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.androidquery.AQuery;
import java.util.List;

final class as
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  as(CouponPrimaryFieldLayout paramCouponPrimaryFieldLayout, String paramString, List paramList, ActivityApplication paramActivityApplication)
  {
  }

  public final void onGlobalLayout()
  {
    this.d.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    CouponPrimaryFieldLayout.access$002(this.d, this.d.getWidth() / 3);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, CouponPrimaryFieldLayout.access$000(this.d));
    this.d.setLayoutParams(localLayoutParams);
    if ((this.a != null) && (this.a.trim().length() > 0))
    {
      APImageView localAPImageView = new APImageView(CouponPrimaryFieldLayout.access$100(this.d));
      localAPImageView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
      localAPImageView.setScaleType(ImageView.ScaleType.FIT_XY);
      localAPImageView.setVisibility(0);
      this.d.addView(localAPImageView);
      ((AQuery)new AQuery(CouponPrimaryFieldLayout.access$100(this.d)).id(localAPImageView)).image(this.a.trim(), true, true, 0, 0);
    }
    CouponPrimaryFieldLayout.access$200(this.d, this.b, this.c);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.as
 * JD-Core Version:    0.6.2
 */