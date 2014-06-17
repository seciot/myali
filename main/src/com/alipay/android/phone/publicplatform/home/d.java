package com.alipay.android.phone.publicplatform.home;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.alipay.android.phone.publicplatform.widget.PublicTabWidgetMsgFlag;

final class d
  implements View.OnTouchListener
{
  d(PublicHomeWidgetGroup paramPublicHomeWidgetGroup)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (paramMotionEvent.getAction() == 0)
    {
      PublicHomeWidgetGroup.access$202(this.a, true);
      PublicHomeWidgetGroup.access$300(this.a);
      if (PublicHomeWidgetGroup.access$400(this.a).booleanValue())
        PublicHomeWidgetGroup.access$500(this.a).reset();
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.home.d
 * JD-Core Version:    0.6.2
 */