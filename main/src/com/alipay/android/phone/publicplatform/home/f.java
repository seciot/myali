package com.alipay.android.phone.publicplatform.home;

import android.graphics.Rect;
import android.view.MotionEvent;
import com.alipay.android.phone.publicplatform.home.widget.a;
import com.alipay.mobile.android.main.publichome.PublicHomeView_;

final class f
  implements a
{
  f(PublicHomeWidgetGroup paramPublicHomeWidgetGroup)
  {
  }

  public final boolean a(MotionEvent paramMotionEvent)
  {
    if ((PublicHomeWidgetGroup.access$700(this.a) != null) && (PublicHomeWidgetGroup.access$700(this.a).operateMenuVisiable()))
    {
      Rect localRect = PublicHomeWidgetGroup.access$700(this.a).getOperateMenuRect();
      if ((localRect == null) || (!localRect.contains((int)paramMotionEvent.getRawX(), (int)paramMotionEvent.getRawY())))
      {
        PublicHomeWidgetGroup.access$700(this.a).hideOperateMenu();
        return true;
      }
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.home.f
 * JD-Core Version:    0.6.2
 */