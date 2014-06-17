package com.alipay.android.phone.publicplatform.home;

import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.publicsvc.home.proguard.a.a;
import com.alipay.mobile.publicsvc.home.proguard.a.b;

final class e
  implements View.OnClickListener
{
  e(PublicHomeWidgetGroup paramPublicHomeWidgetGroup)
  {
  }

  public final void onClick(View paramView)
  {
    try
    {
      PublicHomeWidgetGroup.access$600(this.a).getMicroApplicationContext().startApp("20000002", "20000048", new Bundle());
      label26: a.a(new b("UC-SERVICE-01", "clicked", "public", "addServiceView", "publicIndexList", "addIcon", ""));
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      break label26;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.home.e
 * JD-Core Version:    0.6.2
 */