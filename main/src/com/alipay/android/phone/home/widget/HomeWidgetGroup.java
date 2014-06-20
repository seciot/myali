package com.alipay.android.phone.home.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.alipay.android.launcher.core.IFragmentWidgetGroup;
import com.alipay.android.launcher.core.IWidget;
import com.alipay.android.phone.home.ui.HeaderAreaLayout;
import com.alipay.android.phone.home.ui.HomeLayout;
import com.alipay.android.phone.openplatform.R.dimen;
import com.alipay.android.phone.openplatform.R.drawable;
import com.alipay.android.phone.openplatform.R.id;
import com.alipay.android.phone.openplatform.R.layout;
import com.alipay.android.phone.openplatform.R.string;
import com.alipay.mobile.common.logging.LogCatLog;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Timer;

public class HomeWidgetGroup
  implements IFragmentWidgetGroup, HomeWidgetGroupUiCallback
{
  private static String TAG = HomeWidgetGroup.class.getName();
  private HomeWidgetGroupLayout container;
  Context context;
  private Activity fragmentContext;
  private Handler hander = new Handler();
  private HeaderAreaLayout headerAreaLayout;
  private HomeLayout homeLayout;
  private ActivityApplication mApp;
  private String mId;
  private MicroApplicationContext microApplicationContext;
  private PopupWindow newUserGuide = null;
  private long period = 900000L;
  private Timer todoRefreshTimer = new Timer();
  private List<IWidget> widgets;

  public HomeWidgetGroup()
  {
    this.todoRefreshTimer.schedule(new i(this), this.period, this.period);
    LogCatLog.d(TAG, TAG);
  }

  private void initContainer()
  {
    this.container = new HomeWidgetGroupLayout_(this.fragmentContext);
    this.container.setHomeWidgetGroupUiCallback(this);
    this.container.setOrientation(1);
    this.container.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
    this.widgets = new ArrayList();
    this.headerAreaLayout = new HeaderAreaLayout(this.fragmentContext);
    this.headerAreaLayout.setActivityApplication(this.mApp);
    this.headerAreaLayout.setContext(this.microApplicationContext);
    this.widgets.add(this.headerAreaLayout);
    this.homeLayout = new HomeLayout(this.fragmentContext);
    this.homeLayout.setContext(this.microApplicationContext);
    this.homeLayout.setActivityApplication(this.mApp);
    this.widgets.add(this.homeLayout);
  }

  private void refreshData()
  {
    if (this.headerAreaLayout != null)
      this.headerAreaLayout.onRefresh();
    if (this.homeLayout != null)
      this.homeLayout.onRefresh();
  }

  public void destroy()
  {
    if (this.headerAreaLayout != null)
      this.headerAreaLayout.a();
    if (this.homeLayout != null)
      HomeLayout.a();
    if ((this.fragmentContext != null) && (!this.fragmentContext.isFinishing()) && (this.newUserGuide != null) && (this.newUserGuide.isShowing()))
    {
      this.newUserGuide.setFocusable(false);
      this.newUserGuide.dismiss();
    }
  }

  public List<IWidget> getAllWidgets()
  {
    return this.widgets;
  }

  public String getId()
  {
    return this.mId;
  }

  public View getIndicator()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)LayoutInflater.from(this.fragmentContext).inflate(R.layout.BundlesManager, null);
    TextView localTextView = (TextView)localRelativeLayout.findViewById(R.id.v);
    Drawable localDrawable = this.fragmentContext.getResources().getDrawable(R.drawable.AppBundle);
    localDrawable.setBounds(0, 0, localDrawable.getMinimumWidth(), localDrawable.getMinimumHeight());
    localTextView.setText(this.fragmentContext.getText(R.string.AppBundle));
    localTextView.setCompoundDrawables(null, localDrawable, null, null);
    return localRelativeLayout;
  }

  public View getView()
  {
    if (this.container == null)
    {
      initContainer();
      Iterator localIterator = this.widgets.iterator();
      while (localIterator.hasNext())
      {
        IWidget localIWidget = (IWidget)localIterator.next();
        if (localIWidget != null)
        {
          View localView = localIWidget.getView();
          if (localView != null)
            this.container.addView(localView);
        }
      }
    }
    return this.container;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool1 = false;
    if (paramInt == 4)
    {
      Activity localActivity = this.fragmentContext;
      bool1 = false;
      if (localActivity != null)
      {
        boolean bool2 = this.fragmentContext.isFinishing();
        bool1 = false;
        if (!bool2)
        {
          PopupWindow localPopupWindow = this.newUserGuide;
          bool1 = false;
          if (localPopupWindow != null)
          {
            boolean bool3 = this.newUserGuide.isShowing();
            bool1 = false;
            if (bool3)
            {
              this.newUserGuide.setFocusable(false);
              this.newUserGuide.dismiss();
              this.newUserGuide = null;
              bool1 = true;
            }
          }
        }
      }
    }
    return bool1;
  }

  public void onRefresh()
  {
  }

  public void onResume()
  {
    refreshData();
    if (HomeWidgetGroupLayout.a)
    {
      showGuide();
      HomeWidgetGroupLayout.a = false;
    }
  }

  public void onReturn()
  {
    refreshData();
  }

  public void setActApplication(ActivityApplication paramActivityApplication)
  {
    this.mApp = paramActivityApplication;
  }

  public void setContext(Activity paramActivity)
  {
    this.fragmentContext = paramActivity;
  }

  public void setContext(MicroApplicationContext paramMicroApplicationContext)
  {
    this.microApplicationContext = paramMicroApplicationContext;
    this.context = paramMicroApplicationContext.getApplicationContext();
  }

  public void setId(String paramString)
  {
    this.mId = paramString;
  }

  public void showGuide()
  {
    if ((this.newUserGuide != null) && (this.newUserGuide.isShowing()))
      return;
    this.hander.post(new g(this));
  }

  protected void showGuideOnUiThread()
  {
    if ((this.fragmentContext == null) || (this.fragmentContext.isFinishing()))
      return;
    View localView = LayoutInflater.from(this.fragmentContext).inflate(R.layout.i, null);
    Rect localRect = new Rect();
    this.headerAreaLayout.getView().getGlobalVisibleRect(localRect);
    int i = localRect.top;
    int j = localRect.bottom - localRect.top;
    int n;
    int k;
    if (j <= 0)
    {
      n = this.context.getResources().getDimensionPixelOffset(R.dimen.c);
      k = this.context.getResources().getDimensionPixelSize(R.dimen.BundlesManager);
    }
    for (int m = n; ; m = i)
    {
      RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)((ImageView)localView.findViewById(R.id.m)).getLayoutParams();
      localLayoutParams.topMargin = ((int)(this.context.getResources().getDimensionPixelSize(R.dimen.AppBundle) + (m + k)));
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      this.fragmentContext.getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      localLayoutParams.rightMargin = (localDisplayMetrics.widthPixels / 4 - localLayoutParams.width / 2);
      localView.setOnClickListener(new h(this));
      this.newUserGuide = new PopupWindow(localView, -1, -1, true);
      this.newUserGuide.setBackgroundDrawable(new BitmapDrawable());
      this.newUserGuide.setOutsideTouchable(true);
      this.newUserGuide.showAtLocation(this.container, 119, 0, 0);
      this.newUserGuide.setFocusable(true);
      return;
      k = j;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.widget.HomeWidgetGroup
 * JD-Core Version:    0.6.2
 */