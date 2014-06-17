package com.alipay.mobile.commonui.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewConfigurationCompat;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.ListAdapter;
import com.alipay.mobile.ui.R.styleable;
import java.util.List;

public class APSwipeListView extends APListView
{
  public static final int SWIPE_ACTION_CHOICE = 2;
  public static final int SWIPE_ACTION_DISMISS = 1;
  public static final int SWIPE_ACTION_NONE = 3;
  public static final int SWIPE_ACTION_REVEAL = 0;
  public static final String SWIPE_DEFAULT_BACK_VIEW = "swipelist_backview";
  public static final String SWIPE_DEFAULT_FRONT_VIEW = "swipelist_frontview";
  public static final int SWIPE_MODE_BOTH = 1;
  public static final int SWIPE_MODE_DEFAULT = -1;
  public static final int SWIPE_MODE_LEFT = 3;
  public static final int SWIPE_MODE_NONE = 0;
  public static final int SWIPE_MODE_RIGHT = 2;
  private int a = 0;
  private float b;
  private float c;
  private int d;
  private SwipeListViewListener e;
  private SwipeListViewTouchListener f;
  int swipeBackView = 0;
  int swipeFrontView = 0;

  public APSwipeListView(Context paramContext, int paramInt1, int paramInt2)
  {
    super(paramContext);
    this.swipeFrontView = paramInt2;
    this.swipeBackView = paramInt1;
    a(null);
  }

  public APSwipeListView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramAttributeSet);
  }

  public APSwipeListView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramAttributeSet);
  }

  private void a(AttributeSet paramAttributeSet)
  {
    int i = 1;
    boolean bool1 = true;
    boolean bool2 = true;
    long l = 0L;
    int j = 0;
    int k = 0;
    int m = 0;
    int n = 0;
    float f1 = 0.0F;
    float f2 = 0.0F;
    if (paramAttributeSet != null)
    {
      TypedArray localTypedArray = getContext().obtainStyledAttributes(paramAttributeSet, R.styleable.SwipeListView);
      i = localTypedArray.getInt(8, 1);
      k = localTypedArray.getInt(1, 0);
      j = localTypedArray.getInt(0, 0);
      f2 = localTypedArray.getDimension(9, 0.0F);
      f1 = localTypedArray.getDimension(10, 0.0F);
      bool1 = localTypedArray.getBoolean(11, true);
      l = localTypedArray.getInteger(2, 0);
      bool2 = localTypedArray.getBoolean(4, true);
      n = localTypedArray.getResourceId(5, 0);
      m = localTypedArray.getResourceId(6, 0);
      this.swipeFrontView = localTypedArray.getResourceId(7, 0);
      this.swipeBackView = localTypedArray.getResourceId(3, 0);
    }
    if ((this.swipeFrontView == 0) || (this.swipeBackView == 0))
    {
      this.swipeFrontView = getContext().getResources().getIdentifier("swipelist_frontview", "id", getContext().getPackageName());
      this.swipeBackView = getContext().getResources().getIdentifier("swipelist_backview", "id", getContext().getPackageName());
      if ((this.swipeFrontView == 0) || (this.swipeBackView == 0))
        throw new RuntimeException(String.format("You forgot the attributes swipeFrontView or swipeBackView. You can add this attributes or use '%s' and '%s' identifiers", new Object[] { "swipelist_frontview", "swipelist_backview" }));
    }
    this.d = ViewConfigurationCompat.getScaledPagingTouchSlop(ViewConfiguration.get(getContext()));
    this.f = new SwipeListViewTouchListener(this, this.swipeFrontView, this.swipeBackView);
    if (l > 0L)
      this.f.setAnimationTime(l);
    this.f.setRightOffset(f1);
    this.f.setLeftOffset(f2);
    this.f.setSwipeActionLeft(k);
    this.f.setSwipeActionRight(j);
    this.f.setSwipeMode(i);
    this.f.setSwipeClosesAllItemsWhenListMoves(bool2);
    this.f.setSwipeOpenOnLongPress(bool1);
    this.f.setSwipeDrawableChecked(n);
    this.f.setSwipeDrawableUnchecked(m);
    setOnTouchListener(this.f);
    setOnScrollListener(this.f.makeScrollListener());
  }

  protected int changeSwipeMode(int paramInt)
  {
    int i = -1;
    if ((this.e != null) && (paramInt != i))
      i = this.e.onChangeSwipeMode(paramInt);
    return i;
  }

  public void closeAnimate(int paramInt)
  {
    this.f.closeAnimate(paramInt);
  }

  public void closeOpenedItems()
  {
    this.f.closeOpenedItems();
  }

  public void dismiss(int paramInt)
  {
    int i = this.f.dismiss(paramInt);
    if (i > 0)
    {
      this.f.handlerPendingDismisses(i);
      return;
    }
    onDismiss(new int[] { paramInt });
    this.f.resetPendingDismisses();
  }

  public void dismissSelected()
  {
    List localList = this.f.getPositionsSelected();
    int[] arrayOfInt = new int[localList.size()];
    int i = 0;
    int j = 0;
    while (i < localList.size())
    {
      int k = ((Integer)localList.get(i)).intValue();
      arrayOfInt[i] = k;
      int m = this.f.dismiss(k);
      if (m > 0)
        j = m;
      i++;
    }
    if (j > 0)
      this.f.handlerPendingDismisses(j);
    while (true)
    {
      this.f.returnOldActions();
      return;
      onDismiss(arrayOfInt);
      this.f.resetPendingDismisses();
    }
  }

  public int getCountSelected()
  {
    return this.f.getCountSelected();
  }

  public List getPositionsSelected()
  {
    return this.f.getPositionsSelected();
  }

  public int getSwipeActionLeft()
  {
    return this.f.getSwipeActionLeft();
  }

  public int getSwipeActionRight()
  {
    return this.f.getSwipeActionRight();
  }

  public boolean isChecked(int paramInt)
  {
    return this.f.isChecked(paramInt);
  }

  protected void onChoiceChanged(int paramInt, boolean paramBoolean)
  {
    if ((this.e != null) && (paramInt != -1))
      this.e.onChoiceChanged(paramInt, paramBoolean);
  }

  protected void onChoiceEnded()
  {
    if (this.e != null)
      this.e.onChoiceEnded();
  }

  protected void onChoiceStarted()
  {
    if (this.e != null)
      this.e.onChoiceStarted();
  }

  protected void onClickBackView(int paramInt)
  {
    if ((this.e != null) && (paramInt != -1))
      this.e.onClickBackView(paramInt);
  }

  protected void onClickFrontView(int paramInt)
  {
    if ((this.e != null) && (paramInt != -1))
      this.e.onClickFrontView(paramInt);
  }

  protected void onClosed(int paramInt, boolean paramBoolean)
  {
    if ((this.e != null) && (paramInt != -1))
      this.e.onClosed(paramInt, paramBoolean);
  }

  protected void onDismiss(int[] paramArrayOfInt)
  {
    if (this.e != null)
      this.e.onDismiss(paramArrayOfInt);
  }

  protected void onFirstListItem()
  {
    if (this.e != null)
      this.e.onFirstListItem();
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 1;
    int k = MotionEventCompat.getActionMasked(paramMotionEvent);
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    int j;
    if ((isEnabled()) && (this.f.isSwipeEnabled()))
      if (this.a == i)
        j = this.f.onTouch(this, paramMotionEvent);
    label136: label206: 
    do
    {
      return j;
      switch (k)
      {
      default:
      case 2:
      case 0:
      case 3:
        while (true)
        {
          return super.onInterceptTouchEvent(paramMotionEvent);
          int m = (int)Math.abs(f1 - this.b);
          int n = (int)Math.abs(f2 - this.c);
          int i1 = this.d;
          boolean bool1;
          if (m > i1)
          {
            bool1 = j;
            if (n <= i1)
              break label206;
          }
          for (boolean bool2 = j; ; bool2 = false)
          {
            if (bool1)
            {
              this.a = j;
              this.b = f1;
              this.c = f2;
            }
            if (bool2)
            {
              this.a = 2;
              this.b = f1;
              this.c = f2;
            }
            if (this.a == 2)
              break;
            return false;
            bool1 = false;
            break label136;
          }
          this.f.onTouch(this, paramMotionEvent);
          this.a = 0;
          this.b = f1;
          this.c = f2;
          return false;
          this.a = 0;
        }
      case 1:
      }
      this.f.onTouch(this, paramMotionEvent);
    }
    while (this.a == 2);
    return false;
  }

  protected void onLastListItem()
  {
    if (this.e != null)
      this.e.onLastListItem();
  }

  protected void onListChanged()
  {
    if (this.e != null)
      this.e.onListChanged();
  }

  protected void onMove(int paramInt, float paramFloat)
  {
    if ((this.e != null) && (paramInt != -1))
      this.e.onMove(paramInt, paramFloat);
  }

  protected void onOpened(int paramInt, boolean paramBoolean)
  {
    if ((this.e != null) && (paramInt != -1))
      this.e.onOpened(paramInt, paramBoolean);
  }

  protected void onStartClose(int paramInt, boolean paramBoolean)
  {
    if ((this.e != null) && (paramInt != -1))
      this.e.onStartClose(paramInt, paramBoolean);
  }

  protected void onStartOpen(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if ((this.e != null) && (paramInt1 != -1))
      this.e.onStartOpen(paramInt1, paramInt2, paramBoolean);
  }

  public void openAnimate(int paramInt)
  {
    this.f.openAnimate(paramInt);
  }

  public void recycle(View paramView, int paramInt)
  {
    this.f.reloadChoiceStateInView(paramView.findViewById(this.swipeFrontView), paramInt);
  }

  public void resetScrolling()
  {
    this.a = 0;
  }

  public void setAdapter(ListAdapter paramListAdapter)
  {
    super.setAdapter(paramListAdapter);
    this.f.resetItems();
    paramListAdapter.registerDataSetObserver(new APSwipeListView.1(this));
  }

  public void setAnimationTime(long paramLong)
  {
    this.f.setAnimationTime(paramLong);
  }

  public void setOffsetLeft(float paramFloat)
  {
    this.f.setLeftOffset(paramFloat);
  }

  public void setOffsetRight(float paramFloat)
  {
    this.f.setRightOffset(paramFloat);
  }

  public void setSwipeActionLeft(int paramInt)
  {
    this.f.setSwipeActionLeft(paramInt);
  }

  public void setSwipeActionRight(int paramInt)
  {
    this.f.setSwipeActionRight(paramInt);
  }

  public void setSwipeCloseAllItemsWhenMoveList(boolean paramBoolean)
  {
    this.f.setSwipeClosesAllItemsWhenListMoves(paramBoolean);
  }

  public void setSwipeListViewListener(SwipeListViewListener paramSwipeListViewListener)
  {
    this.e = paramSwipeListViewListener;
  }

  public void setSwipeMode(int paramInt)
  {
    this.f.setSwipeMode(paramInt);
  }

  public void setSwipeOpenOnLongPress(boolean paramBoolean)
  {
    this.f.setSwipeOpenOnLongPress(paramBoolean);
  }

  public void unselectedChoiceStates()
  {
    this.f.unselectedChoiceStates();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APSwipeListView
 * JD-Core Version:    0.6.2
 */