package android.support.v13.app;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;

public abstract class FragmentPagerAdapter extends PagerAdapter
{
  private final FragmentManager a;
  private FragmentTransaction b = null;
  private Fragment c = null;

  public FragmentPagerAdapter(FragmentManager paramFragmentManager)
  {
    this.a = paramFragmentManager;
  }

  private static String a(int paramInt, long paramLong)
  {
    return "android:switcher:" + paramInt + ":" + paramLong;
  }

  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    if (this.b == null)
      this.b = this.a.beginTransaction();
    this.b.detach((Fragment)paramObject);
  }

  public void finishUpdate(ViewGroup paramViewGroup)
  {
    if (this.b != null)
    {
      this.b.commitAllowingStateLoss();
      this.b = null;
      this.a.executePendingTransactions();
    }
  }

  public abstract Fragment getItem(int paramInt);

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    if (this.b == null)
      this.b = this.a.beginTransaction();
    long l = getItemId(paramInt);
    String str = a(paramViewGroup.getId(), l);
    Fragment localFragment = this.a.findFragmentByTag(str);
    if (localFragment != null)
      this.b.attach(localFragment);
    while (true)
    {
      if (localFragment != this.c)
      {
        FragmentCompat.setMenuVisibility(localFragment, false);
        FragmentCompat.setUserVisibleHint(localFragment, false);
      }
      return localFragment;
      localFragment = getItem(paramInt);
      this.b.add(paramViewGroup.getId(), localFragment, a(paramViewGroup.getId(), l));
    }
  }

  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return ((Fragment)paramObject).getView() == paramView;
  }

  public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
  }

  public Parcelable saveState()
  {
    return null;
  }

  public void setPrimaryItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    Fragment localFragment = (Fragment)paramObject;
    if (localFragment != this.c)
    {
      if (this.c != null)
      {
        FragmentCompat.setMenuVisibility(this.c, false);
        FragmentCompat.setUserVisibleHint(this.c, false);
      }
      if (localFragment != null)
      {
        FragmentCompat.setMenuVisibility(localFragment, true);
        FragmentCompat.setUserVisibleHint(localFragment, true);
      }
      this.c = localFragment;
    }
  }

  public void startUpdate(ViewGroup paramViewGroup)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v13.app.FragmentPagerAdapter
 * JD-Core Version:    0.6.2
 */