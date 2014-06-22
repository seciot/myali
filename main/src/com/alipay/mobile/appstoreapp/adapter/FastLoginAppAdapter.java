package com.alipay.mobile.appstoreapp.adapter;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.StateListDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.ListView;
import com.alipay.mobile.appstoreapp.util.IconLoadHelper;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.ScrollMoreListAdapter;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.persist.ChannelConfigUtils;
import com.alipay.mobile.openplatform.R.dimen;
import com.alipay.mobile.openplatform.R.drawable;
import com.alipay.mobile.openplatform.R.id;
import com.alipay.mobile.openplatform.R.string;
import java.util.Iterator;
import java.util.List;

public class FastLoginAppAdapter extends ScrollMoreListAdapter
{
  private static final String a = FastLoginAppAdapter.class.getName();
  private FastLoginAppAdapterCallback b;
  private ActivityApplication c;

  public FastLoginAppAdapter(Context paramContext, ListView paramListView, ActivityApplication paramActivityApplication)
  {
    super(paramContext, paramListView);
    this.c = paramActivityApplication;
  }

  public final void a()
  {
    int i = 0;
    int j = 0;
    while (i < this.mListDatas.size())
    {
      if (((App)this.mListDatas.get(i)).isInstalled())
      {
        this.mListDatas.add(j, this.mListDatas.get(i));
        this.mListDatas.remove(i + 1);
        j++;
      }
      i++;
    }
    notifyDataSetChanged();
  }

  public final void a(FastLoginAppAdapterCallback paramFastLoginAppAdapterCallback)
  {
    this.b = paramFastLoginAppAdapterCallback;
  }

  public final void a(App paramApp)
  {
    label21: if ((paramApp == null) || (paramApp.getAppId() == null) || (ChannelConfigUtils.isBannedApp(paramApp.getAppId())))
      break label21;
    while (paramApp.isAlipayApp())
      return;
    String str1;
    Iterator localIterator;
    if ((paramApp.isOffline()) || (!paramApp.isDisplay()))
    {
      str1 = paramApp.getAppId();
      localIterator = this.mListDatas.iterator();
    }
    label128: label240: label250: 
    while (localIterator.hasNext())
    {
      Object localObject1 = localIterator.next();
      if ((localObject1 != null) && ((localObject1 instanceof App)));
      for (String str2 = ((App)localObject1).getAppId(); ; str2 = null)
      {
        if ((str2 == null) || (!str2.equalsIgnoreCase(str1)))
          break label250;
        this.mListDatas.remove(localObject1);
        return;
        int i = 0;
        Object localObject2;
        if (i < this.mListDatas.size())
        {
          localObject2 = this.mListDatas.get(i);
          if ((localObject2 == null) || (!(localObject2 instanceof App)))
            break label240;
        }
        for (String str3 = ((App)localObject2).getAppId(); ; str3 = null)
        {
          if ((str3 != null) && (paramApp.getAppId() != null) && (str3.equalsIgnoreCase(paramApp.getAppId())))
          {
            if (paramApp == localObject2)
              break;
            this.mListDatas.set(i, paramApp);
            return;
          }
          i++;
          break label128;
          this.mListDatas.add(paramApp);
          return;
        }
      }
    }
  }

  public final void a(List<App> paramList)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        App localApp = (App)localIterator.next();
        if (localApp != null)
          a(localApp);
      }
    }
  }

  public int getCount()
  {
    if (this.mListDatas != null)
      return this.mListDatas.size();
    return 0;
  }

  protected View getFailView()
  {
    APTextView localAPTextView = new APTextView(this.mContext);
    AbsListView.LayoutParams localLayoutParams = new AbsListView.LayoutParams(-1, -2);
    localLayoutParams.height = ((int)this.mContext.getResources().getDimension(R.dimen.AppBundle));
    localAPTextView.setLayoutParams(localLayoutParams);
    localAPTextView.setGravity(17);
    localAPTextView.setText(this.mContext.getText(R.string.g));
    return localAPTextView;
  }

  public Object getItem(int paramInt)
  {
    if ((this.mListDatas != null) && (paramInt < this.mListDatas.size()))
      return this.mListDatas.get(paramInt);
    return null;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  protected View getItemView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    FastLoginAppAdapter.ViewHolder localViewHolder;
    App localApp;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.mContext).inflate(com.alipay.mobile.openplatform.R.layout.f, null);
      localViewHolder = new FastLoginAppAdapter.ViewHolder(this);
      localViewHolder.b = ((APImageView)paramView.findViewById(R.id.BundlesManagerImpl));
      localViewHolder.a = ((APTextView)paramView.findViewById(R.id.ZLog));
      localViewHolder.c = ((APTextView)paramView.findViewById(R.id.DefaultThreadFactory));
      localViewHolder.d = ((APImageView)paramView.findViewById(R.id.n));
      localViewHolder.e = ((APButton)paramView.findViewById(R.id.AppBundle));
      paramView.setTag(localViewHolder);
      localApp = (App)this.mListDatas.get(paramInt);
      if (localApp != null)
      {
        localViewHolder.a.setText(localApp.getAppName());
        localViewHolder.c.setText(localApp.getSlogan());
        if (!localApp.isRecommend())
          break label310;
        localViewHolder.d.setVisibility(0);
        label173: if ((localApp.isInstalled()) || (localApp.isDownloading()))
          break label322;
        localViewHolder.e.setBackgroundResource(R.drawable.BundlesManager);
        localViewHolder.e.setText(R.string.BundlesManager);
        localViewHolder.e.setTextColor(-16777216);
        localViewHolder.e.setEnabled(true);
      }
    }
    while (true)
    {
      localViewHolder.e.setOnClickListener(new a(this, localApp, paramInt));
      StateListDrawable localStateListDrawable1 = IconLoadHelper.a(App.getDefaultIcon());
      localViewHolder.b.setImageDrawable(localStateListDrawable1);
      if (!localApp.iconHasLoaded())
        break label417;
      StateListDrawable localStateListDrawable2 = IconLoadHelper.a(localApp.getIcon());
      localViewHolder.b.setImageDrawable(localStateListDrawable2);
      return paramView;
      localViewHolder = (FastLoginAppAdapter.ViewHolder)paramView.getTag();
      break;
      label310: localViewHolder.d.setVisibility(4);
      break label173;
      label322: if (localApp.isDownloading())
      {
        localViewHolder.e.setBackgroundResource(R.drawable.AppBundle);
        localViewHolder.e.setText(R.string.HostClassLoader);
        localViewHolder.e.setTextColor(-7829368);
        localViewHolder.e.setEnabled(false);
      }
      else
      {
        localViewHolder.e.setBackgroundResource(R.drawable.BundlesManagerImpl);
        localViewHolder.e.setText(R.string.Bundleable);
        localViewHolder.e.setTextColor(-1);
        localViewHolder.e.setEnabled(true);
      }
    }
    label417: localApp.loadIcon(new b(this, localViewHolder));
    return paramView;
  }

  protected View getLoadingView()
  {
    View localView = LayoutInflater.from(this.mContext).inflate(com.alipay.mobile.ui.R.layout.refresh_loading, null);
    AbsListView.LayoutParams localLayoutParams = new AbsListView.LayoutParams(-1, -2);
    localLayoutParams.height = ((int)this.mContext.getResources().getDimension(R.dimen.AppBundle));
    localView.setLayoutParams(localLayoutParams);
    return localView;
  }

  protected boolean hasMore()
  {
    if (this.b != null)
      return this.b.a();
    return false;
  }

  protected void itemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
  }

  protected void onMore()
  {
    if (this.b != null)
      this.b.b();
  }

  protected void onRetry()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.appstoreapp.adapter.FastLoginAppAdapter
 * JD-Core Version:    0.6.2
 */