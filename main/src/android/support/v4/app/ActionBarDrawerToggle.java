package android.support.v4.app;

import android.app.Activity;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.DrawerLayout.DrawerListener;
import android.view.MenuItem;
import android.view.View;

public class ActionBarDrawerToggle
  implements DrawerLayout.DrawerListener
{
  private static final int ID_HOME = 16908332;
  private static final ActionBarDrawerToggle.ActionBarDrawerToggleImpl IMPL = new ActionBarDrawerToggle.ActionBarDrawerToggleImplBase(null);
  private final Activity mActivity;
  private final int mCloseDrawerContentDescRes;
  private Drawable mDrawerImage;
  private final int mDrawerImageResource;
  private boolean mDrawerIndicatorEnabled = true;
  private final DrawerLayout mDrawerLayout;
  private final int mOpenDrawerContentDescRes;
  private Object mSetIndicatorInfo;
  private ActionBarDrawerToggle.SlideDrawable mSlider;
  private Drawable mThemeImage;

  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      IMPL = new ActionBarDrawerToggle.ActionBarDrawerToggleImplHC(null);
      return;
    }
  }

  public ActionBarDrawerToggle(Activity paramActivity, DrawerLayout paramDrawerLayout, int paramInt1, int paramInt2, int paramInt3)
  {
    this.mActivity = paramActivity;
    this.mDrawerLayout = paramDrawerLayout;
    this.mDrawerImageResource = paramInt1;
    this.mOpenDrawerContentDescRes = paramInt2;
    this.mCloseDrawerContentDescRes = paramInt3;
    this.mThemeImage = IMPL.getThemeUpIndicator(paramActivity);
    this.mDrawerImage = paramActivity.getResources().getDrawable(paramInt1);
    this.mSlider = new ActionBarDrawerToggle.SlideDrawable(this.mDrawerImage);
    this.mSlider.setOffsetBy(0.3333333F);
  }

  public boolean isDrawerIndicatorEnabled()
  {
    return this.mDrawerIndicatorEnabled;
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.mThemeImage = IMPL.getThemeUpIndicator(this.mActivity);
    this.mDrawerImage = this.mActivity.getResources().getDrawable(this.mDrawerImageResource);
    syncState();
  }

  public void onDrawerClosed(View paramView)
  {
    this.mSlider.setOffset(0.0F);
    if (this.mDrawerIndicatorEnabled)
      this.mSetIndicatorInfo = IMPL.setActionBarDescription(this.mSetIndicatorInfo, this.mActivity, this.mCloseDrawerContentDescRes);
  }

  public void onDrawerOpened(View paramView)
  {
    this.mSlider.setOffset(1.0F);
    if (this.mDrawerIndicatorEnabled)
      this.mSetIndicatorInfo = IMPL.setActionBarDescription(this.mSetIndicatorInfo, this.mActivity, this.mOpenDrawerContentDescRes);
  }

  public void onDrawerSlide(View paramView, float paramFloat)
  {
    float f1 = this.mSlider.getOffset();
    if (paramFloat > 0.5F);
    for (float f2 = Math.max(f1, 2.0F * Math.max(0.0F, paramFloat - 0.5F)); ; f2 = Math.min(f1, paramFloat * 2.0F))
    {
      this.mSlider.setOffset(f2);
      return;
    }
  }

  public void onDrawerStateChanged(int paramInt)
  {
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if ((paramMenuItem != null) && (paramMenuItem.getItemId() == 16908332) && (this.mDrawerIndicatorEnabled))
    {
      if (!this.mDrawerLayout.isDrawerVisible(8388611))
        break label45;
      this.mDrawerLayout.closeDrawer(8388611);
    }
    while (true)
    {
      return false;
      label45: this.mDrawerLayout.openDrawer(8388611);
    }
  }

  public void setDrawerIndicatorEnabled(boolean paramBoolean)
  {
    ActionBarDrawerToggle.ActionBarDrawerToggleImpl localActionBarDrawerToggleImpl;
    Object localObject;
    Activity localActivity;
    ActionBarDrawerToggle.SlideDrawable localSlideDrawable;
    int i;
    if (paramBoolean != this.mDrawerIndicatorEnabled)
    {
      if (!paramBoolean)
        break label83;
      localActionBarDrawerToggleImpl = IMPL;
      localObject = this.mSetIndicatorInfo;
      localActivity = this.mActivity;
      localSlideDrawable = this.mSlider;
      if (!this.mDrawerLayout.isDrawerOpen(8388611))
        break label74;
      i = this.mOpenDrawerContentDescRes;
    }
    label74: label83: for (this.mSetIndicatorInfo = localActionBarDrawerToggleImpl.setActionBarUpIndicator(localObject, localActivity, localSlideDrawable, i); ; this.mSetIndicatorInfo = IMPL.setActionBarUpIndicator(this.mSetIndicatorInfo, this.mActivity, this.mThemeImage, 0))
    {
      this.mDrawerIndicatorEnabled = paramBoolean;
      return;
      i = this.mCloseDrawerContentDescRes;
      break;
    }
  }

  public void syncState()
  {
    ActionBarDrawerToggle.ActionBarDrawerToggleImpl localActionBarDrawerToggleImpl;
    Object localObject;
    Activity localActivity;
    ActionBarDrawerToggle.SlideDrawable localSlideDrawable;
    if (this.mDrawerLayout.isDrawerOpen(8388611))
    {
      this.mSlider.setOffset(1.0F);
      if (this.mDrawerIndicatorEnabled)
      {
        localActionBarDrawerToggleImpl = IMPL;
        localObject = this.mSetIndicatorInfo;
        localActivity = this.mActivity;
        localSlideDrawable = this.mSlider;
        if (!this.mDrawerLayout.isDrawerOpen(8388611))
          break label93;
      }
    }
    label93: for (int i = this.mOpenDrawerContentDescRes; ; i = this.mCloseDrawerContentDescRes)
    {
      this.mSetIndicatorInfo = localActionBarDrawerToggleImpl.setActionBarUpIndicator(localObject, localActivity, localSlideDrawable, i);
      return;
      this.mSlider.setOffset(0.0F);
      break;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.ActionBarDrawerToggle
 * JD-Core Version:    0.6.2
 */