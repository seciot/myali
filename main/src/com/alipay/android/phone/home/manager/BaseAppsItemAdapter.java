package com.alipay.android.phone.home.manager;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.alipay.android.phone.openplatform.R.color;
import com.alipay.android.phone.openplatform.R.string;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APProgressBar;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.service.ext.openplatform.AppInstallerTypeEnum;
import com.alipay.mobile.framework.service.ext.openplatform.InstallStatus;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.persist.ChannelConfigUtils;
import com.alipay.mobile.openplatform.common.R.drawable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class BaseAppsItemAdapter extends BaseAdapter
{
  protected List<App> a = new ArrayList();
  protected LayoutInflater b;

  public BaseAppsItemAdapter(LayoutInflater paramLayoutInflater, List<App> paramList)
  {
    this.b = paramLayoutInflater;
    a(paramList);
  }

  private View a(App paramApp, View paramView)
  {
    Object localObject;
    if (paramView == null)
    {
      localObject = new AppItemView(this.b.getContext());
      ViewHolder localViewHolder1 = new ViewHolder();
      localViewHolder1.a = ((APImageView)((View)localObject).findViewById(com.alipay.android.phone.openplatform.R.id.a));
      localViewHolder1.c = ((APRelativeLayout)((View)localObject).findViewById(com.alipay.android.phone.openplatform.R.id.q));
      localViewHolder1.d = ((APProgressBar)((View)localObject).findViewById(com.alipay.android.phone.openplatform.R.id.r));
      localViewHolder1.b = ((APTextView)((View)localObject).findViewById(com.alipay.android.phone.openplatform.R.id.b));
      localViewHolder1.e = ((APRelativeLayout)((View)localObject).findViewById(com.alipay.android.phone.openplatform.R.id.j));
      localViewHolder1.f = ((APTextView)((View)localObject).findViewById(com.alipay.android.phone.openplatform.R.id.k));
      if (paramApp != null)
      {
        localViewHolder1.a.setTag(paramApp.getAppId());
        localViewHolder1.e.setTag(paramApp.getAppId());
        localViewHolder1.f.setTag(paramApp.getAppId());
      }
      ((View)localObject).setTag(localViewHolder1);
    }
    while (true)
    {
      ViewHolder localViewHolder2 = (ViewHolder)((View)localObject).getTag();
      ((AppItemView)localObject).setApp(paramApp);
      localViewHolder2.e.setVisibility(4);
      localViewHolder2.c.setVisibility(4);
      if ((paramApp == null) || (paramApp.getAppId() == null))
      {
        localViewHolder2.a.setVisibility(4);
        localViewHolder2.b.setVisibility(4);
        ((View)localObject).setEnabled(false);
      }
      do
      {
        do
        {
          do
          {
            return localObject;
            localViewHolder2.a.setVisibility(0);
            localViewHolder2.b.setVisibility(0);
            ((View)localObject).setTag(com.alipay.mobile.ui.R.id.performance_sdk_monitor_key, paramApp.getAppId());
            localViewHolder2.b.setText(paramApp.getAppName());
            if (paramApp.iconHasLoaded())
            {
              Bitmap localBitmap2 = paramApp.getIcon();
              paramApp.isAlipayApp();
              Drawable localDrawable3 = a(localBitmap2);
              localViewHolder2.a.setImageDrawable(localDrawable3);
            }
            while (paramApp.isOffline())
            {
              localViewHolder2.f.setText(this.b.getContext().getResources().getString(R.string.d));
              localViewHolder2.f.setBackgroundColor(this.b.getContext().getResources().getColor(R.color.BundlesManager));
              localViewHolder2.e.setVisibility(0);
              return localObject;
              paramApp.loadIcon(new g(this, paramApp, localViewHolder2));
              Bitmap localBitmap1 = paramApp.loadFromLocal();
              if (localBitmap1 != null)
              {
                paramApp.isAlipayApp();
                Drawable localDrawable2 = a(localBitmap1);
                localViewHolder2.a.setImageDrawable(localDrawable2);
              }
              else
              {
                Drawable localDrawable1 = this.b.getContext().getResources().getDrawable(R.drawable.app_default);
                paramApp.isAlipayApp();
                localViewHolder2.a.setImageDrawable(localDrawable1);
              }
            }
            if ((paramApp.isInstalled()) || (paramApp.isDownloading()))
              break;
          }
          while (paramApp.getInstallerType() == AppInstallerTypeEnum.independantApp);
          localViewHolder2.f.setText(this.b.getContext().getResources().getString(R.string.c));
          localViewHolder2.f.setBackgroundColor(this.b.getContext().getResources().getColor(R.color.AppBundle));
          localViewHolder2.e.setVisibility(0);
          return localObject;
        }
        while (!paramApp.isDownloading());
        localViewHolder2.e.setVisibility(4);
      }
      while (paramApp.isInstalled());
      localViewHolder2.c.setVisibility(0);
      localViewHolder2.d.setProgress(paramApp.getInstallStatus().getDownLoadProgress());
      return localObject;
      localObject = paramView;
    }
  }

  public final int a()
  {
    return this.a.size();
  }

  protected final Drawable a(Bitmap paramBitmap)
  {
    return new BitmapDrawable(this.b.getContext().getResources(), paramBitmap);
  }

  public final App a(int paramInt)
  {
    return (App)this.a.get(paramInt);
  }

  public final void a(App paramApp)
  {
    if (this.a.contains(paramApp))
      this.a.remove(paramApp);
    while (true)
    {
      notifyDataSetChanged();
      return;
      Iterator localIterator = this.a.iterator();
      if (localIterator.hasNext())
      {
        if (!((App)localIterator.next()).getAppId().equals(paramApp.getAppId()))
          break;
        localIterator.remove();
      }
    }
  }

  public void a(List<App> paramList)
  {
  }

  public final void b(App paramApp)
  {
    if ((paramApp == null) || (!paramApp.isDisplay()) || (ChannelConfigUtils.isBannedApp(paramApp.getAppId())))
      return;
    Iterator localIterator = this.a.iterator();
    App localApp;
    do
    {
      if (!localIterator.hasNext())
        break;
      localApp = (App)localIterator.next();
    }
    while (!localApp.getAppId().equals(paramApp.getAppId()));
    while (true)
    {
      if (localApp != null)
        this.a.remove(localApp);
      this.a.add(-1 + this.a.size(), paramApp);
      notifyDataSetChanged();
      return;
      localApp = null;
    }
  }

  public final void c(App paramApp)
  {
    if ((paramApp == null) || (ChannelConfigUtils.isBannedApp(paramApp.getAppId())));
    while (true)
    {
      return;
      Iterator localIterator = this.a.iterator();
      App localApp;
      do
      {
        if (!localIterator.hasNext())
          break;
        localApp = (App)localIterator.next();
      }
      while (!localApp.getAppId().equals(paramApp.getAppId()));
      while (localApp != null)
      {
        int i = this.a.indexOf(localApp);
        if (paramApp.isDisplay())
          this.a.set(i, paramApp);
        while (true)
        {
          notifyDataSetChanged();
          return;
          this.a.remove(i);
        }
        localApp = null;
      }
    }
  }

  public int getCount()
  {
    return (4 - this.a.size() % 4) % 4 + this.a.size();
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramInt < this.a.size())
    {
      App localApp = (App)this.a.get(paramInt);
      AlipayApplication.getInstance();
      return a(localApp, paramView);
    }
    AlipayApplication.getInstance();
    return a(null, paramView);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.manager.BaseAppsItemAdapter
 * JD-Core Version:    0.6.2
 */