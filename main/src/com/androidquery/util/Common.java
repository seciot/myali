package com.androidquery.util;

import android.app.Activity;
import android.app.Dialog;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.Gallery;
import android.widget.ListAdapter;
import android.widget.ProgressBar;
import com.androidquery.AQuery;
import com.androidquery.callback.BitmapAjaxCallback;
import java.io.File;
import java.util.Comparator;

public class Common
  implements TextWatcher, View.OnClickListener, View.OnLongClickListener, AbsListView.OnScrollListener, AdapterView.OnItemClickListener, AdapterView.OnItemSelectedListener, Runnable, Comparator<File>
{
  protected static final int CLEAN_CACHE = 2;
  protected static final int STORE_FILE = 1;
  private Object a;
  private String b;
  private Object[] c;
  private boolean d;
  private Class<?>[] e;
  private int f;
  private int g = 0;
  private AbsListView.OnScrollListener h;
  private int i;
  private AdapterView.OnItemSelectedListener j;
  private boolean k = false;

  private void checkScrolledBottom(AbsListView paramAbsListView, int paramInt)
  {
    int m = paramAbsListView.getCount();
    int n = paramAbsListView.getLastVisiblePosition();
    if ((paramInt == 0) && (m == n + 1))
    {
      if (n != this.i)
      {
        this.i = n;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = paramAbsListView;
        arrayOfObject[1] = Integer.valueOf(paramInt);
        invoke(arrayOfObject);
      }
      return;
    }
    this.i = -1;
  }

  private Object invoke(Object[] paramArrayOfObject)
  {
    if (this.b != null)
      if (this.c == null)
        break label149;
    label149: for (Object[] arrayOfObject = this.c; ; arrayOfObject = paramArrayOfObject)
    {
      Object localObject = this.a;
      if (localObject == null)
        localObject = this;
      return AQUtility.invokeHandler(localObject, this.b, this.d, true, this.e, arrayOfObject);
      if (this.f != 0)
        switch (this.f)
        {
        default:
        case 2:
        case 1:
        }
      while (true)
      {
        return null;
        AQUtility.cleanCache((File)this.c[0], ((Long)this.c[1]).longValue(), ((Long)this.c[2]).longValue());
        continue;
        AQUtility.store((File)this.c[0], (byte[])this.c[1]);
      }
    }
  }

  private void onScrollStateChanged(ExpandableListView paramExpandableListView, int paramInt)
  {
    paramExpandableListView.setTag(1090453508, Integer.valueOf(paramInt));
    int m;
    int n;
    ExpandableListAdapter localExpandableListAdapter;
    if (paramInt == 0)
    {
      m = paramExpandableListView.getFirstVisiblePosition();
      n = paramExpandableListView.getLastVisiblePosition() - m;
      localExpandableListAdapter = paramExpandableListView.getExpandableListAdapter();
    }
    int i2;
    int i3;
    View localView;
    for (int i1 = 0; ; i1++)
    {
      if (i1 > n)
        return;
      long l = paramExpandableListView.getExpandableListPosition(i1 + m);
      i2 = ExpandableListView.getPackedPositionGroup(l);
      i3 = ExpandableListView.getPackedPositionChild(l);
      if (i2 >= 0)
      {
        localView = paramExpandableListView.getChildAt(i1);
        Long localLong = (Long)localView.getTag(1090453508);
        if ((localLong != null) && (localLong.longValue() == l))
        {
          if (i3 != -1)
            break;
          localExpandableListAdapter.getGroupView(i2, paramExpandableListView.isGroupExpanded(i2), localView, paramExpandableListView);
          localView.setTag(1090453508, null);
        }
      }
    }
    if (i3 == -1 + localExpandableListAdapter.getChildrenCount(i2));
    for (boolean bool = true; ; bool = false)
    {
      localExpandableListAdapter.getChildView(i2, i3, bool, localView, paramExpandableListView);
      break;
    }
  }

  private void onScrollStateChanged2(AbsListView paramAbsListView, int paramInt)
  {
    paramAbsListView.setTag(1090453508, Integer.valueOf(paramInt));
    int m;
    int n;
    ListAdapter localListAdapter;
    if (paramInt == 0)
    {
      m = paramAbsListView.getFirstVisiblePosition();
      n = paramAbsListView.getLastVisiblePosition() - m;
      localListAdapter = (ListAdapter)paramAbsListView.getAdapter();
    }
    for (int i1 = 0; ; i1++)
    {
      if (i1 > n)
        return;
      long l = i1 + m;
      View localView = paramAbsListView.getChildAt(i1);
      if ((Number)localView.getTag(1090453508) != null)
      {
        localListAdapter.getView((int)l, localView, paramAbsListView);
        localView.setTag(1090453508, null);
      }
    }
  }

  public static boolean shouldDelay(int paramInt1, int paramInt2, View paramView, ViewGroup paramViewGroup, String paramString)
  {
    if ((paramString == null) || (BitmapAjaxCallback.isMemoryCached(paramString)))
      return false;
    AbsListView localAbsListView = (AbsListView)paramViewGroup;
    if ((AbsListView.OnScrollListener)paramViewGroup.getTag(1090453506) == null)
    {
      Common localCommon = new Common();
      localAbsListView.setOnScrollListener(localCommon);
      paramViewGroup.setTag(1090453506, localCommon);
    }
    Integer localInteger = (Integer)localAbsListView.getTag(1090453508);
    if ((localInteger == null) || (localInteger.intValue() == 0) || (localInteger.intValue() == 1))
      return false;
    long l = paramInt2;
    if ((paramViewGroup instanceof ExpandableListView))
      l = ExpandableListView.getPackedPositionForChild(paramInt1, paramInt2);
    paramView.setTag(1090453508, Long.valueOf(l));
    return true;
  }

  public static boolean shouldDelay(int paramInt, View paramView, ViewGroup paramViewGroup, String paramString)
  {
    if ((paramViewGroup instanceof Gallery))
      return shouldDelayGallery(paramInt, paramView, paramViewGroup, paramString);
    return shouldDelay(-2, paramInt, paramView, paramViewGroup, paramString);
  }

  public static boolean shouldDelay(View paramView, ViewGroup paramViewGroup, String paramString, float paramFloat, boolean paramBoolean)
  {
    return shouldDelay(-1, paramView, paramViewGroup, paramString);
  }

  private static boolean shouldDelayGallery(int paramInt, View paramView, ViewGroup paramViewGroup, String paramString)
  {
    if ((paramString == null) || (BitmapAjaxCallback.isMemoryCached(paramString)))
      return false;
    Gallery localGallery = (Gallery)paramViewGroup;
    Integer localInteger = (Integer)localGallery.getTag(1090453508);
    if (localInteger == null)
    {
      localInteger = Integer.valueOf(0);
      localGallery.setTag(1090453508, Integer.valueOf(0));
      localGallery.setCallbackDuringFling(false);
      new Common().listen(localGallery);
    }
    int m = localGallery.getFirstVisiblePosition();
    int n = 1 + (localGallery.getLastVisiblePosition() - m) / 2;
    int i1 = localInteger.intValue() - n;
    int i2 = n + localInteger.intValue();
    int i3;
    if (i1 < 0)
      i3 = i2 - i1;
    for (int i4 = 0; ; i4 = i1)
    {
      if ((paramInt >= i4) && (paramInt <= i3))
      {
        paramView.setTag(1090453508, Integer.valueOf(paramInt));
        return false;
      }
      paramView.setTag(1090453508, null);
      return true;
      i3 = i2;
    }
  }

  public static void showProgress(Object paramObject, String paramString, boolean paramBoolean)
  {
    View localView;
    if (paramObject != null)
    {
      if (!(paramObject instanceof View))
        break label119;
      localView = (View)paramObject;
      if (!(paramObject instanceof ProgressBar))
        break label200;
    }
    label200: for (ProgressBar localProgressBar = (ProgressBar)paramObject; ; localProgressBar = null)
    {
      if (paramBoolean)
      {
        localView.setTag(1090453505, paramString);
        localView.setVisibility(0);
        if (localProgressBar != null)
        {
          localProgressBar.setProgress(0);
          localProgressBar.setMax(100);
        }
      }
      label119: Activity localActivity;
      do
      {
        do
        {
          do
          {
            Object localObject;
            do
            {
              return;
              localObject = localView.getTag(1090453505);
            }
            while ((localObject != null) && (!localObject.equals(paramString)));
            localView.setTag(1090453505, null);
          }
          while ((localProgressBar != null) && (!localProgressBar.isIndeterminate()));
          localView.setVisibility(8);
          return;
          if ((paramObject instanceof Dialog))
          {
            Dialog localDialog = (Dialog)paramObject;
            AQuery localAQuery = new AQuery(localDialog.getContext());
            if (paramBoolean)
            {
              localAQuery.show(localDialog);
              return;
            }
            localAQuery.dismiss(localDialog);
            return;
          }
        }
        while (!(paramObject instanceof Activity));
        localActivity = (Activity)paramObject;
        localActivity.setProgressBarIndeterminateVisibility(paramBoolean);
        localActivity.setProgressBarVisibility(paramBoolean);
      }
      while (!paramBoolean);
      localActivity.setProgress(0);
      return;
    }
  }

  public void afterTextChanged(Editable paramEditable)
  {
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public int compare(File paramFile1, File paramFile2)
  {
    long l1 = paramFile1.lastModified();
    long l2 = paramFile2.lastModified();
    if (l2 > l1)
      return 1;
    if (l2 == l1)
      return 0;
    return -1;
  }

  public Common forward(Object paramObject, String paramString, boolean paramBoolean, Class<?>[] paramArrayOfClass)
  {
    this.a = paramObject;
    this.b = paramString;
    this.d = paramBoolean;
    this.e = paramArrayOfClass;
    return this;
  }

  public void forward(AbsListView.OnScrollListener paramOnScrollListener)
  {
    this.h = paramOnScrollListener;
  }

  public int getScrollState()
  {
    return this.g;
  }

  public void listen(Gallery paramGallery)
  {
    this.j = paramGallery.getOnItemSelectedListener();
    this.k = true;
    paramGallery.setOnItemSelectedListener(this);
  }

  public Common method(int paramInt, Object[] paramArrayOfObject)
  {
    this.f = paramInt;
    this.c = paramArrayOfObject;
    return this;
  }

  public void onClick(View paramView)
  {
    invoke(new Object[] { paramView });
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramAdapterView;
    arrayOfObject[1] = paramView;
    arrayOfObject[2] = Integer.valueOf(paramInt);
    arrayOfObject[3] = Long.valueOf(paramLong);
    invoke(arrayOfObject);
  }

  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramAdapterView;
    arrayOfObject[1] = paramView;
    arrayOfObject[2] = Integer.valueOf(paramInt);
    arrayOfObject[3] = Long.valueOf(paramLong);
    invoke(arrayOfObject);
    if (this.j != null)
      this.j.onItemSelected(paramAdapterView, paramView, paramInt, paramLong);
    Adapter localAdapter;
    int m;
    int n;
    if ((this.k) && (((Integer)paramAdapterView.getTag(1090453508)).intValue() != paramInt))
    {
      localAdapter = paramAdapterView.getAdapter();
      paramAdapterView.setTag(1090453508, Integer.valueOf(paramInt));
      m = paramAdapterView.getChildCount();
      n = paramAdapterView.getFirstVisiblePosition();
    }
    for (int i1 = 0; ; i1++)
    {
      if (i1 >= m)
        return;
      View localView = paramAdapterView.getChildAt(i1);
      int i2 = n + i1;
      Integer localInteger = (Integer)localView.getTag(1090453508);
      if ((localInteger == null) || (localInteger.intValue() != i2))
        localAdapter.getView(i2, localView, paramAdapterView);
    }
  }

  public boolean onLongClick(View paramView)
  {
    Object localObject = invoke(new Object[] { paramView });
    if ((localObject instanceof Boolean))
      return ((Boolean)localObject).booleanValue();
    return false;
  }

  public void onNothingSelected(AdapterView<?> paramAdapterView)
  {
    if (this.j != null)
      this.j.onNothingSelected(paramAdapterView);
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    checkScrolledBottom(paramAbsListView, this.g);
    if (this.h != null)
      this.h.onScroll(paramAbsListView, paramInt1, paramInt2, paramInt3);
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    this.g = paramInt;
    checkScrolledBottom(paramAbsListView, paramInt);
    if ((paramAbsListView instanceof ExpandableListView))
      onScrollStateChanged((ExpandableListView)paramAbsListView, paramInt);
    while (true)
    {
      if (this.h != null)
        this.h.onScrollStateChanged(paramAbsListView, paramInt);
      return;
      onScrollStateChanged2(paramAbsListView, paramInt);
    }
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramCharSequence;
    arrayOfObject[1] = Integer.valueOf(paramInt1);
    arrayOfObject[2] = Integer.valueOf(paramInt2);
    arrayOfObject[3] = Integer.valueOf(paramInt3);
    invoke(arrayOfObject);
  }

  public void run()
  {
    invoke(new Object[0]);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.util.Common
 * JD-Core Version:    0.6.2
 */