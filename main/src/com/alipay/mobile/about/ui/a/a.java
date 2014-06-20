package com.alipay.mobile.about.ui.a;

import android.content.Context;
import android.widget.BaseAdapter;
import java.util.List;

public abstract class a extends BaseAdapter
{
  protected Context a;
  protected List<com.alipay.mobile.about.ui.BundlesManager.AppBundle> b;

  public a(Context paramContext, List<com.alipay.mobile.about.ui.BundlesManager.AppBundle> paramList)
  {
    this.a = paramContext;
    this.b = paramList;
  }

  public int getCount()
  {
    return this.b.size();
  }

  public Object getItem(int paramInt)
  {
    if (this.b.isEmpty())
      return Integer.valueOf(paramInt);
    return this.b.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    if (this.b.isEmpty())
      return 0L;
    return ((com.alipay.mobile.about.ui.BundlesManager.AppBundle)this.b.get(paramInt)).b;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.about.ui.a.a
 * JD-Core Version:    0.6.2
 */