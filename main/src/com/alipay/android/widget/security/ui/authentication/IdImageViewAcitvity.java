package com.alipay.android.widget.security.ui.authentication;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.support.v4.view.ViewPager.OnPageChangeListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.List;

public class IdImageViewAcitvity extends BaseActivity
  implements ViewPager.OnPageChangeListener, View.OnClickListener
{
  private ViewPager a;
  private ViewPagerAdapter b;
  private List<View> c;
  private ImageView[] d;
  private int e;
  private Handler f;

  private void a(int paramInt)
  {
    if ((paramInt < 0) || (paramInt > 1) || (this.e == paramInt))
      return;
    this.d[paramInt].setEnabled(false);
    this.d[this.e].setEnabled(true);
    this.e = paramInt;
  }

  public void onClick(View paramView)
  {
    int i = ((Integer)paramView.getTag()).intValue();
    if ((i < 0) || (i >= 2));
    while (true)
    {
      a(i);
      return;
      this.a.setCurrentItem(i);
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.M);
    this.a = ((ViewPager)findViewById(R.id.gr));
    this.f = new Handler();
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      Bundle localBundle = localIntent.getExtras();
      if (localBundle != null)
      {
        String[] arrayOfString = (String[])localBundle.getStringArray("idImageFiles");
        int i = localBundle.getInt("curItem", 0);
        if ((arrayOfString == null) || (arrayOfString.length <= 0))
          break label102;
        BackgroundExecutor.execute(new IdImageViewAcitvity.1(this, arrayOfString, i));
      }
    }
    return;
    label102: toast("预览图像出错", 0);
  }

  public void onPageScrollStateChanged(int paramInt)
  {
  }

  public void onPageScrolled(int paramInt1, float paramFloat, int paramInt2)
  {
  }

  public void onPageSelected(int paramInt)
  {
    a(paramInt);
  }

  public class ViewPagerAdapter extends PagerAdapter
  {
    private List<View> b;

    public ViewPagerAdapter()
    {
      Object localObject;
      this.b = localObject;
    }

    public void destroyItem(View paramView, int paramInt, Object paramObject)
    {
      ((ViewPager)paramView).removeView((View)this.b.get(paramInt));
    }

    public void finishUpdate(View paramView)
    {
    }

    public int getCount()
    {
      if (this.b != null)
        return this.b.size();
      return 0;
    }

    public Object instantiateItem(View paramView, int paramInt)
    {
      ((ViewPager)paramView).addView((View)this.b.get(paramInt), 0);
      return this.b.get(paramInt);
    }

    public boolean isViewFromObject(View paramView, Object paramObject)
    {
      return paramView == paramObject;
    }

    public void restoreState(Parcelable paramParcelable, ClassLoader paramClassLoader)
    {
    }

    public Parcelable saveState()
    {
      return null;
    }

    public void startUpdate(View paramView)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.IdImageViewAcitvity
 * JD-Core Version:    0.6.2
 */