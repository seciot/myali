package android.support.v13.app;

import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import java.util.ArrayList;

public class FragmentTabHost extends TabHost
  implements TabHost.OnTabChangeListener
{
  private final ArrayList<FragmentTabHost.TabInfo> a = new ArrayList();
  private FrameLayout b;
  private Context c;
  private FragmentManager d;
  private int e;
  private TabHost.OnTabChangeListener f;
  private FragmentTabHost.TabInfo g;
  private boolean h;

  public FragmentTabHost(Context paramContext)
  {
    super(paramContext, null);
    a(paramContext, null);
  }

  public FragmentTabHost(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }

  private FragmentTransaction a(String paramString, FragmentTransaction paramFragmentTransaction)
  {
    Object localObject1 = null;
    int i = 0;
    Object localObject2;
    if (i < this.a.size())
    {
      localObject2 = (FragmentTabHost.TabInfo)this.a.get(i);
      if (!FragmentTabHost.TabInfo.access$200((FragmentTabHost.TabInfo)localObject2).equals(paramString))
        break label199;
    }
    while (true)
    {
      i++;
      localObject1 = localObject2;
      break;
      if (localObject1 == null)
        throw new IllegalStateException("No tab known for tag " + paramString);
      if (this.g != localObject1)
      {
        if (paramFragmentTransaction == null)
          paramFragmentTransaction = this.d.beginTransaction();
        if ((this.g != null) && (FragmentTabHost.TabInfo.access$100(this.g) != null))
          paramFragmentTransaction.detach(FragmentTabHost.TabInfo.access$100(this.g));
        if (localObject1 != null)
        {
          if (FragmentTabHost.TabInfo.access$100(localObject1) != null)
            break label187;
          FragmentTabHost.TabInfo.access$102(localObject1, Fragment.instantiate(this.c, FragmentTabHost.TabInfo.access$300(localObject1).getName(), FragmentTabHost.TabInfo.access$400(localObject1)));
          paramFragmentTransaction.add(this.e, FragmentTabHost.TabInfo.access$100(localObject1), FragmentTabHost.TabInfo.access$200(localObject1));
        }
      }
      while (true)
      {
        this.g = localObject1;
        return paramFragmentTransaction;
        label187: paramFragmentTransaction.attach(FragmentTabHost.TabInfo.access$100(localObject1));
      }
      label199: localObject2 = localObject1;
    }
  }

  private void a()
  {
    if (this.b == null)
    {
      this.b = ((FrameLayout)findViewById(this.e));
      if (this.b == null)
        throw new IllegalStateException("No tab content FrameLayout found for id " + this.e);
    }
  }

  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, new int[] { 16842995 }, 0, 0);
    this.e = localTypedArray.getResourceId(0, 0);
    localTypedArray.recycle();
    super.setOnTabChangedListener(this);
    if (findViewById(16908307) == null)
    {
      LinearLayout localLinearLayout = new LinearLayout(paramContext);
      localLinearLayout.setOrientation(1);
      addView(localLinearLayout, new FrameLayout.LayoutParams(-1, -1));
      TabWidget localTabWidget = new TabWidget(paramContext);
      localTabWidget.setId(16908307);
      localTabWidget.setOrientation(0);
      localLinearLayout.addView(localTabWidget, new LinearLayout.LayoutParams(-1, -2, 0.0F));
      FrameLayout localFrameLayout1 = new FrameLayout(paramContext);
      localFrameLayout1.setId(16908305);
      localLinearLayout.addView(localFrameLayout1, new LinearLayout.LayoutParams(0, 0, 0.0F));
      FrameLayout localFrameLayout2 = new FrameLayout(paramContext);
      this.b = localFrameLayout2;
      this.b.setId(this.e);
      localLinearLayout.addView(localFrameLayout2, new LinearLayout.LayoutParams(-1, 0, 1.0F));
    }
  }

  public void addTab(TabHost.TabSpec paramTabSpec, Class<?> paramClass, Bundle paramBundle)
  {
    paramTabSpec.setContent(new FragmentTabHost.DummyTabFactory(this.c));
    String str = paramTabSpec.getTag();
    FragmentTabHost.TabInfo localTabInfo = new FragmentTabHost.TabInfo(str, paramClass, paramBundle);
    if (this.h)
    {
      FragmentTabHost.TabInfo.access$102(localTabInfo, this.d.findFragmentByTag(str));
      if ((FragmentTabHost.TabInfo.access$100(localTabInfo) != null) && (!FragmentTabHost.TabInfo.access$100(localTabInfo).isDetached()))
      {
        FragmentTransaction localFragmentTransaction = this.d.beginTransaction();
        localFragmentTransaction.detach(FragmentTabHost.TabInfo.access$100(localTabInfo));
        localFragmentTransaction.commit();
      }
    }
    this.a.add(localTabInfo);
    addTab(paramTabSpec);
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    String str = getCurrentTabTag();
    FragmentTransaction localFragmentTransaction1 = null;
    int i = 0;
    if (i < this.a.size())
    {
      FragmentTabHost.TabInfo localTabInfo = (FragmentTabHost.TabInfo)this.a.get(i);
      FragmentTabHost.TabInfo.access$102(localTabInfo, this.d.findFragmentByTag(FragmentTabHost.TabInfo.access$200(localTabInfo)));
      if ((FragmentTabHost.TabInfo.access$100(localTabInfo) != null) && (!FragmentTabHost.TabInfo.access$100(localTabInfo).isDetached()))
      {
        if (!FragmentTabHost.TabInfo.access$200(localTabInfo).equals(str))
          break label98;
        this.g = localTabInfo;
      }
      while (true)
      {
        i++;
        break;
        label98: if (localFragmentTransaction1 == null)
          localFragmentTransaction1 = this.d.beginTransaction();
        localFragmentTransaction1.detach(FragmentTabHost.TabInfo.access$100(localTabInfo));
      }
    }
    this.h = true;
    FragmentTransaction localFragmentTransaction2 = a(str, localFragmentTransaction1);
    if (localFragmentTransaction2 != null)
    {
      localFragmentTransaction2.commit();
      this.d.executePendingTransactions();
    }
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.h = false;
  }

  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    FragmentTabHost.SavedState localSavedState = (FragmentTabHost.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    setCurrentTabByTag(localSavedState.curTab);
  }

  protected Parcelable onSaveInstanceState()
  {
    FragmentTabHost.SavedState localSavedState = new FragmentTabHost.SavedState(super.onSaveInstanceState());
    localSavedState.curTab = getCurrentTabTag();
    return localSavedState;
  }

  public void onTabChanged(String paramString)
  {
    if (this.h)
    {
      FragmentTransaction localFragmentTransaction = a(paramString, null);
      if (localFragmentTransaction != null)
        localFragmentTransaction.commit();
    }
    if (this.f != null)
      this.f.onTabChanged(paramString);
  }

  public void setOnTabChangedListener(TabHost.OnTabChangeListener paramOnTabChangeListener)
  {
    this.f = paramOnTabChangeListener;
  }

  @Deprecated
  public void setup()
  {
    throw new IllegalStateException("Must call setup() that takes a Context and FragmentManager");
  }

  public void setup(Context paramContext, FragmentManager paramFragmentManager)
  {
    super.setup();
    this.c = paramContext;
    this.d = paramFragmentManager;
    a();
  }

  public void setup(Context paramContext, FragmentManager paramFragmentManager, int paramInt)
  {
    super.setup();
    this.c = paramContext;
    this.d = paramFragmentManager;
    this.e = paramInt;
    a();
    this.b.setId(paramInt);
    if (getId() == -1)
      setId(16908306);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v13.app.FragmentTabHost
 * JD-Core Version:    0.6.2
 */