package com.alipay.mobile.authorization.ui;

import android.content.Intent;
import android.text.TextPaint;
import android.text.style.ClickableSpan;
import android.view.View;
import com.alipay.mobile.framework.MicroApplicationContext;

final class c extends ClickableSpan
{
  private int b;
  private MicroApplicationContext c;

  public c(AuthorizationActivity paramAuthorizationActivity, MicroApplicationContext paramMicroApplicationContext, int paramInt)
  {
    this.c = paramMicroApplicationContext;
    this.b = paramInt;
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.c.getApplicationContext(), AuthorizationCheckProtocol.class);
    localIntent.putExtra("protocol_url", AuthorizationActivity.getBundle(this.a));
    this.c.startActivity(AuthorizationActivity.dexopt(this.a), localIntent);
  }

  public final void updateDrawState(TextPaint paramTextPaint)
  {
    super.updateDrawState(paramTextPaint);
    paramTextPaint.setColor(this.b);
    paramTextPaint.setUnderlineText(false);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.authorization.ui.c
 * JD-Core Version:    0.6.2
 */