package com.alipay.mobile.security.gesture.component;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.a.b;
import com.alipay.mobile.commonui.widget.APTextView;

final class f
  implements View.OnClickListener
{
  f(AlipayPattern paramAlipayPattern, LockIndicator paramLockIndicator)
  {
  }

  public final void onClick(View paramView)
  {
    AlipayPattern.access$502(this.b, null);
    AlipayPattern.access$600(this.b).setVisibility(4);
    if (AlipayPattern.access$000(this.b) != null)
    {
      AlipayPattern.access$000(this.b).setTextColor(this.b.getResources().getColor(b.b));
      AlipayPattern.access$000(this.b).setText(com.alipay.mobile.a.f.f);
      this.a.clear();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.gesture.component.f
 * JD-Core Version:    0.6.2
 */