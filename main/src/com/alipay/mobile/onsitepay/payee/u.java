package com.alipay.mobile.onsitepay.payee;

import android.view.animation.Animation;
import android.view.animation.LayoutAnimationController;
import com.alipay.mobile.common.misc.CircularImageView;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;

final class u
  implements Runnable
{
  u(FacePayeeHead paramFacePayeeHead, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    FacePayeeHead.access$000(this.c, this.a);
    this.c.payer_pay_success.setVisibility(4);
    this.c.setVisibility(0);
    this.c.payer_icon.setVisibility(0);
    if ((this.b != null) && (this.b.length() > 4))
      this.c.payer_account_name.setText(this.b.substring(0, 4) + "...");
    while (true)
    {
      this.c.getLayoutAnimation().getAnimation().reset();
      this.c.startAnimation(this.c.getLayoutAnimation().getAnimation());
      return;
      this.c.payer_account_name.setText(this.b);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.payee.u
 * JD-Core Version:    0.6.2
 */