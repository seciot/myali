package com.alipay.mobile.security.securitycommon;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.browser.HtmlActivity;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class SecurityUtil$1
  implements View.OnClickListener
{
  SecurityUtil$1(String paramString1, String paramString2, ActivityApplication paramActivityApplication)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramView.getContext(), HtmlActivity.class);
    localIntent.putExtra(HtmlActivity.URL, this.a);
    localIntent.putExtra(HtmlActivity.TITLE, this.b);
    this.c.getMicroApplicationContext().startActivity(this.c, localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.SecurityUtil.1
 * JD-Core Version:    0.6.2
 */