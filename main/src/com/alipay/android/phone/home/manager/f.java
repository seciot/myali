package com.alipay.android.phone.home.manager;

import android.content.res.Resources;
import com.alipay.android.phone.openplatform.R.color;
import com.alipay.android.phone.openplatform.R.string;
import com.alipay.mobile.commonui.widget.APProgressBar;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.ext.openplatform.AppInstallerTypeEnum;
import com.alipay.mobile.framework.service.ext.openplatform.InstallStatus;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;

final class f
  implements Runnable
{
  f(AppItemView paramAppItemView, InstallStatus paramInstallStatus, ViewHolder paramViewHolder, boolean paramBoolean)
  {
  }

  public final void run()
  {
    if (this.a.getStatus() == 2)
    {
      this.b.e.setVisibility(4);
      if (!this.c)
      {
        this.b.c.setVisibility(0);
        this.b.d.setProgress(0);
      }
    }
    if (this.a.getStatus() == 3)
    {
      this.b.e.setVisibility(4);
      if (!this.c)
      {
        this.b.c.setVisibility(0);
        this.b.d.setProgress(this.a.getDownLoadProgress());
      }
    }
    if (this.a.getStatus() == 4)
    {
      if (!AppItemView.access$000(this.d).isInstalled())
      {
        if (AppItemView.access$000(this.d).getInstallerType() != AppInstallerTypeEnum.independantApp)
        {
          this.b.f.setText(AlipayApplication.getInstance().getResources().getString(R.string.BundlesManagerImpl));
          this.b.f.setBackgroundColor(AlipayApplication.getInstance().getResources().getColor(R.color.AppBundle));
          this.b.e.setVisibility(0);
        }
        this.b.c.setVisibility(4);
      }
    }
    else
    {
      if (this.a.getStatus() == 5)
      {
        this.b.e.setVisibility(4);
        this.b.c.setVisibility(4);
      }
      if (this.a.getStatus() == 7)
      {
        if (AppItemView.access$000(this.d).isInstalled())
          break label414;
        if (AppItemView.access$000(this.d).getInstallerType() != AppInstallerTypeEnum.independantApp)
        {
          this.b.f.setText(AlipayApplication.getInstance().getResources().getString(R.string.BundlesManagerImpl));
          this.b.f.setBackgroundColor(AlipayApplication.getInstance().getResources().getColor(R.color.AppBundle));
          this.b.e.setVisibility(0);
        }
        this.b.c.setVisibility(4);
      }
    }
    while (true)
    {
      if (this.a.getStatus() == 8)
      {
        this.b.e.setVisibility(4);
        this.b.c.setVisibility(4);
      }
      return;
      this.b.e.setVisibility(4);
      this.b.c.setVisibility(4);
      break;
      label414: this.b.e.setVisibility(4);
      this.b.c.setVisibility(4);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.manager.f
 * JD-Core Version:    0.6.2
 */