package android.support.v13.app;

import android.app.Fragment;
import android.app.Fragment.SavedState;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class FragmentStatePagerAdapter extends PagerAdapter
{
  private final FragmentManager a;
  private FragmentTransaction b = null;
  private ArrayList<Fragment.SavedState> c = new ArrayList();
  private ArrayList<Fragment> d = new ArrayList();
  private Fragment e = null;

  public FragmentStatePagerAdapter(FragmentManager paramFragmentManager)
  {
    this.a = paramFragmentManager;
  }

  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    Fragment localFragment = (Fragment)paramObject;
    if (this.b == null)
      this.b = this.a.beginTransaction();
    while (this.c.size() <= paramInt)
      this.c.add(null);
    this.c.set(paramInt, this.a.saveFragmentInstanceState(localFragment));
    this.d.set(paramInt, null);
    this.b.remove(localFragment);
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

  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    if (this.d.size() > paramInt)
    {
      Fragment localFragment2 = (Fragment)this.d.get(paramInt);
      if (localFragment2 != null)
        return localFragment2;
    }
    if (this.b == null)
      this.b = this.a.beginTransaction();
    Fragment localFragment1 = getItem(paramInt);
    if (this.c.size() > paramInt)
    {
      Fragment.SavedState localSavedState = (Fragment.SavedState)this.c.get(paramInt);
      if (localSavedState != null)
        localFragment1.setInitialSavedState(localSavedState);
    }
    while (this.d.size() <= paramInt)
      this.d.add(null);
    FragmentCompat.setMenuVisibility(localFragment1, false);
    FragmentCompat.setUserVisibleHint(localFragment1, false);
    this.d.set(paramInt, localFragment1);
    this.b.add(paramViewGroup.getId(), localFragment1);
    return localFragment1;
  }

  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return ((Fragment)paramObject).getView() == paramView;
  }

  public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader)
  {
    if (paramParcelable != null)
    {
      Bundle localBundle = (Bundle)paramParcelable;
      localBundle.setClassLoader(paramClassLoader);
      Parcelable[] arrayOfParcelable = localBundle.getParcelableArray("states");
      this.c.clear();
      this.d.clear();
      if (arrayOfParcelable != null)
        for (int j = 0; j < arrayOfParcelable.length; j++)
          this.c.add((Fragment.SavedState)arrayOfParcelable[j]);
      Iterator localIterator = localBundle.keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if (str.startsWith("f"))
        {
          int i = Integer.parseInt(str.substring(1));
          Fragment localFragment = this.a.getFragment(localBundle, str);
          if (localFragment != null)
          {
            while (this.d.size() <= i)
              this.d.add(null);
            FragmentCompat.setMenuVisibility(localFragment, false);
            this.d.set(i, localFragment);
          }
          else
          {
            Log.w("FragmentStatePagerAdapter", "Bad fragment at key " + str);
          }
        }
      }
    }
  }

  public Parcelable saveState()
  {
    int i = this.c.size();
    Bundle localBundle1 = null;
    if (i > 0)
    {
      localBundle1 = new Bundle();
      Fragment.SavedState[] arrayOfSavedState = new Fragment.SavedState[this.c.size()];
      this.c.toArray(arrayOfSavedState);
      localBundle1.putParcelableArray("states", arrayOfSavedState);
    }
    int j = 0;
    Bundle localBundle2 = localBundle1;
    while (j < this.d.size())
    {
      Fragment localFragment = (Fragment)this.d.get(j);
      if (localFragment != null)
      {
        if (localBundle2 == null)
          localBundle2 = new Bundle();
        String str = "f" + j;
        this.a.putFragment(localBundle2, str, localFragment);
      }
      j++;
    }
    return localBundle2;
  }

  public void setPrimaryItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    Fragment localFragment = (Fragment)paramObject;
    if (localFragment != this.e)
    {
      if (this.e != null)
      {
        FragmentCompat.setMenuVisibility(this.e, false);
        FragmentCompat.setUserVisibleHint(this.e, false);
      }
      if (localFragment != null)
      {
        FragmentCompat.setMenuVisibility(localFragment, true);
        FragmentCompat.setUserVisibleHint(localFragment, true);
      }
      this.e = localFragment;
    }
  }

  public void startUpdate(ViewGroup paramViewGroup)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v13.app.FragmentStatePagerAdapter
 * JD-Core Version:    0.6.2
 */