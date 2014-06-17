package com.alipay.android.launcher;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.ActionBar.Tab;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.Intent.ShortcutIconResource;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.SmartBarUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TabHost;
import android.widget.TabHost.OnTabChangeListener;
import android.widget.TabHost.TabContentFactory;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import android.widget.Toast;
import com.alipay.android.launcher.core.IFragmentWidgetGroup;
import com.alipay.android.launcher.core.ILauncher;
import com.alipay.android.launcher.core.IWidgetGroup;
import com.alipay.android.launcher.factory.XmlWidgetGroupFactory;
import com.alipay.mobile.base.commonbiz.R.drawable;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.base.commonbiz.R.string;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.BundleUtil;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.common.utils.Utilz;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.AppLoadException;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobile.framework.service.ext.security.AccountService;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.service.ext.security.GestureService;
import com.alipay.mobile.security.gesture.util.GestureDataCenter;
import com.alipay.mobile.ui.R.id;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

@SuppressLint({"NewApi"})
public class TabLauncher extends BaseFragmentActivity
  implements TabHost.OnTabChangeListener, TabHost.TabContentFactory, ILauncher
{
  private TabHost a;
  private TabWidget b;
  private List<IWidgetGroup> c;
  private boolean d = true;
  private long e = 3000L;
  private h f;
  private ActionBar g;
  private Set<ClassLoader> h = new HashSet();
  private HashMap<ClassLoader, Resources> i = new HashMap();
  private HashMap<ClassLoader, Resources.Theme> j = new HashMap();
  private LocalBroadcastManager k;
  private Handler l = new Handler();
  private AccountService m;
  private String n = "alipayHome";
  private ClassLoader o;
  private boolean p = false;

  @SuppressLint({"UseSparseArrays"})
  private Map<Integer, String> q = new HashMap();

  public TabLauncher()
  {
    this.q.put(Integer.valueOf(0), "20000002");
    this.q.put(Integer.valueOf(1), "20000101");
    this.q.put(Integer.valueOf(2), "20000061");
    this.q.put(Integer.valueOf(3), "20000004");
  }

  private IWidgetGroup a(String paramString)
  {
    if (this.c == null)
      return null;
    Iterator localIterator = this.c.iterator();
    IWidgetGroup localIWidgetGroup;
    do
    {
      if (!localIterator.hasNext())
        break;
      localIWidgetGroup = (IWidgetGroup)localIterator.next();
    }
    while ((localIWidgetGroup == null) || (!localIWidgetGroup.getId().equalsIgnoreCase(paramString)));
    while (true)
    {
      return localIWidgetGroup;
      localIWidgetGroup = null;
    }
  }

  private void a()
  {
    int i1 = 0;
    String str1 = ((TabLauncherApp)this.mApp).getTabId();
    String str2 = this.a.getCurrentTabTag();
    if (str2 == null);
    while (true)
    {
      return;
      if ((!StringUtils.equals(str2, str1)) && (StringUtils.equals("20000003", str1)) && (!this.p))
        try
        {
          this.mMicroApplicationContext.startApp("", "20000003", getIntent().getExtras());
          this.p = true;
          return;
        }
        catch (AppLoadException localAppLoadException)
        {
          return;
        }
      if (!str2.equals(str1))
      {
        this.a.setCurrentTabByTag(str1);
        for (int i2 = 0; i2 < this.q.size(); i2++)
          if (str1.equals(this.q.get(Integer.valueOf(i2))))
            i1 = i2;
        this.a.setCurrentTabByTag(str1);
        if (this.g != null)
          this.g.setSelectedNavigationItem(i1);
      }
      if (this.c != null)
      {
        Iterator localIterator = this.c.iterator();
        while (localIterator.hasNext())
        {
          IWidgetGroup localIWidgetGroup = (IWidgetGroup)localIterator.next();
          if (localIWidgetGroup != null)
            if (localIWidgetGroup.getId().equalsIgnoreCase(str1))
              localIWidgetGroup.onReturn();
            else
              localIWidgetGroup.onRefresh();
        }
      }
    }
  }

  private static void a(Intent paramIntent)
  {
    if (paramIntent == null);
    Uri localUri;
    do
    {
      return;
      localUri = paramIntent.getData();
    }
    while ((localUri == null) || (!TextUtils.isEmpty(localUri.getPath())));
    Uri.parse(Uri.decode(localUri.toString()));
  }

  private void a(Bundle paramBundle)
  {
    AuthService localAuthService = (AuthService)this.mMicroApplicationContext.getApplicationContext().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
    localAuthService.notifyUnlockLoginApp(false, false);
    new Thread(new f(this, localAuthService, paramBundle)).start();
  }

  private void a(String paramString, Bundle paramBundle)
  {
    try
    {
      if (!TextUtils.isEmpty(paramString))
        this.mMicroApplicationContext.startApp("20000001", paramString, paramBundle);
      return;
    }
    catch (AppLoadException localAppLoadException)
    {
      new StringBuilder().append(localAppLoadException.getStackTrace()).toString();
    }
  }

  private void a(String paramString1, String paramString2)
  {
    Intent localIntent = new Intent();
    localIntent.setAction(paramString1);
    localIntent.putExtra("data", paramString2);
    LocalBroadcastManager.getInstance(getApplicationContext()).sendBroadcast(localIntent);
  }

  private void a(boolean paramBoolean)
  {
    XmlWidgetGroupFactory localXmlWidgetGroupFactory = new XmlWidgetGroupFactory(this);
    this.c = localXmlWidgetGroupFactory.getAllWidgetGroups();
    this.o = new e(this, super.getClassLoader(), localXmlWidgetGroupFactory);
    int i1 = 0;
    if (i1 < this.c.size())
    {
      IWidgetGroup localIWidgetGroup = (IWidgetGroup)this.c.get(i1);
      TabHost.TabSpec localTabSpec;
      View localView;
      if (localIWidgetGroup != null)
      {
        localIWidgetGroup.setContext(this.mApp.getMicroApplicationContext());
        localIWidgetGroup.setContext(this);
        if ((localIWidgetGroup instanceof IFragmentWidgetGroup))
          ((IFragmentWidgetGroup)localIWidgetGroup).setActApplication(this.mApp);
        localTabSpec = this.a.newTabSpec(localIWidgetGroup.getId());
        localView = localIWidgetGroup.getIndicator();
        if (!SmartBarUtils.hasSmartBar())
        {
          if (i1 != 0)
            break label243;
          localView.setBackgroundResource(R.drawable.tab_left_bg);
        }
      }
      while (true)
      {
        localView.setTag(R.id.performance_sdk_monitor_key, localIWidgetGroup.getId());
        localTabSpec.setIndicator(localView);
        localTabSpec.setContent(this);
        this.a.addTab(localTabSpec);
        if ((paramBoolean) && (this.g != null))
          this.g.addTab(this.g.newTab().setCustomView(localIWidgetGroup.getIndicator()).setTabListener(this.f));
        i1++;
        break;
        label243: if (i1 == -1 + this.c.size())
          localView.setBackgroundResource(R.drawable.tab_right_bg);
        else
          localView.setBackgroundResource(R.drawable.tab_center_bg);
      }
    }
  }

  private boolean a(Intent paramIntent, boolean paramBoolean)
  {
    Uri localUri;
    if (paramIntent != null)
    {
      localUri = paramIntent.getData();
      if ((localUri != null) && ("login".equals(localUri.getLastPathSegment())))
      {
        Bundle localBundle = BundleUtil.serialBundle(localUri.getQuery());
        String str = localBundle.getString("loginStatus");
        if ("success".equals(str))
          a(localBundle.getString("targetAppId"), localBundle);
        do
        {
          return true;
          if ("fail".equals(str))
          {
            a(localBundle);
            return true;
          }
        }
        while (!"list".equals(str));
        a("20000018", localBundle);
        return true;
      }
      if (paramBoolean)
        if (localUri == null)
          break label230;
    }
    label230: for (boolean bool = true; ; bool = false)
    {
      if (AlipayApplication.getInstance().getSharedPreferences("_share_tmp_", 0).contains("@@"));
      for (int i1 = 1; ; i1 = 0)
      {
        GestureService localGestureService = (GestureService)this.mMicroApplicationContext.getApplicationContext().getMicroApplicationContext().getExtServiceByInterface(GestureService.class.getName());
        if (bool)
          GestureDataCenter.getInstance().setNeedNotifyCallBack(true);
        g localg = new g(this, bool, localUri);
        if (i1 != 0)
          return localGestureService.restoreStateValidateGesture(localg);
        return localGestureService.validateStartClientGesture(localg);
        return false;
      }
    }
  }

  public View createTabContent(String paramString)
  {
    IWidgetGroup localIWidgetGroup = a(paramString);
    Object localObject = null;
    if (localIWidgetGroup != null)
    {
      View localView = localIWidgetGroup.getView();
      ViewGroup localViewGroup = (ViewGroup)localView.getParent();
      if (localViewGroup != null)
        localViewGroup.removeView(localView);
      localObject = localView;
    }
    return localObject;
  }

  public ClassLoader getClassLoader()
  {
    if (this.o != null)
      return this.o;
    return super.getClassLoader();
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.k = LocalBroadcastManager.getInstance(this);
    new b(this);
    boolean bool1 = SmartBarUtils.hasSmartBar();
    if (bool1)
    {
      setTheme(16974123);
      getWindow().setUiOptions(1);
    }
    while (true)
    {
      super.onCreate(paramBundle);
      setContentView(R.layout.luancher_tab);
      if ((this.mApp == null) || (!(this.mApp instanceof TabLauncherApp)));
      try
      {
        this.mMicroApplicationContext.updateActivity(this);
        this.mMicroApplicationContext.startApp("", "20000001", null);
        label95: finish();
        return;
        requestWindowFeature(1);
        continue;
        Intent localIntent = getIntent();
        a(localIntent);
        boolean bool2 = a(localIntent, true);
        this.m = ((AccountService)this.mMicroApplicationContext.getExtServiceByInterface(AccountService.class.getName()));
        String str = this.m.getCurrentLoginLogonId();
        Uri localUri = localIntent.getData();
        if ((localUri != null) && (!"login".equals(localUri.getLastPathSegment())));
        for (int i1 = 1; ; i1 = 0)
        {
          if ((i1 == 0) && (TextUtils.isEmpty(str)))
          {
            a(null);
            bool2 = true;
          }
          this.a = ((TabHost)findViewById(16908306));
          this.a.setOnTabChangedListener(this);
          this.a.setup();
          this.b = ((TabWidget)findViewById(16908307));
          if (bool1)
          {
            this.b.setVisibility(8);
            this.f = new h(this, (byte)0);
            this.g = getActionBar();
            this.g.setDisplayOptions(0);
            this.g.setNavigationMode(2);
            SmartBarUtils.setActionBarTabsShowAtBottom(this.g, true);
            SmartBarUtils.setActionModeHeaderHidden(this.g, true);
          }
          if ((!bool2) || (paramBundle != null) || (Utilz.getTotalMemory() <= 600000L))
            break;
          this.l.postDelayed(new c(this, bool1), 1500L);
          IntentFilter localIntentFilter = new IntentFilter();
          localIntentFilter.addAction("com.alipay.mobile.GESTURE_SETTING_SUCESS");
          d locald = new d(this);
          this.k.registerReceiver(locald, localIntentFilter);
          return;
        }
        a(bool1);
        return;
      }
      catch (AppLoadException localAppLoadException)
      {
        break label95;
      }
    }
  }

  protected void onDestroy()
  {
    super.onDestroy();
    if (this.c == null);
    while (true)
    {
      return;
      Iterator localIterator = this.c.iterator();
      while (localIterator.hasNext())
      {
        IWidgetGroup localIWidgetGroup = (IWidgetGroup)localIterator.next();
        if (localIWidgetGroup != null)
          localIWidgetGroup.destroy();
      }
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    IWidgetGroup localIWidgetGroup = a(this.a.getCurrentTabTag());
    if ((localIWidgetGroup != null) && (localIWidgetGroup.onKeyDown(paramInt, paramKeyEvent)));
    do
    {
      do
      {
        do
        {
          return true;
          if ((paramInt != 4) || (this.a.getCurrentTab() == 0))
            break;
          this.a.setCurrentTab(0);
        }
        while ((this.g == null) || (this.g.getTabCount() <= 0));
        this.g.setSelectedNavigationItem(0);
        return true;
        if ((paramInt == 4) && (this.d))
        {
          SimpleToast.makeToast(this, R.string.rePressback, 0).show();
          this.d = false;
          AlipayLogAgent.uploadLog(this);
          this.a.postDelayed(new a(this), this.e);
          return true;
        }
      }
      while ((paramInt == 82) || (paramInt == 84));
      if ((paramInt == 24) || (paramInt == 25))
        return false;
      if (paramInt != 4)
        break;
    }
    while (paramKeyEvent.isLongPress());
    AlipayApplication.getInstance().getMicroApplicationContext().exit();
    finish();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    if (this.m != null)
    {
      if (TextUtils.isEmpty(this.m.getCurrentLoginLogonId()))
        a(null);
      a(getIntent());
      a(paramIntent, false);
      a();
    }
  }

  protected void onPause()
  {
    super.onPause();
    a("com.alipay.mobile.LAUNCHER_STATUS_CHANGED", "state=onPause");
  }

  protected void onResume()
  {
    super.onResume();
    SharedPreferences localSharedPreferences = getSharedPreferences("_short_cut_", 0);
    if (!localSharedPreferences.getBoolean("shortcut", false))
    {
      Intent localIntent1 = new Intent("android.intent.action.MAIN");
      localIntent1.addCategory("android.intent.category.LAUNCHER");
      String str = getApplicationContext().getPackageName();
      localIntent1.setComponent(new ComponentName(str, str + ".AlipayLogin"));
      localIntent1.setClassName(getApplicationContext(), "com.eg.android.AlipayGphone.AlipayLogin");
      localIntent1.setFlags(270532608);
      Intent localIntent2 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
      localIntent2.putExtra("android.intent.extra.shortcut.NAME", getString(R.string.app_shortcut_name));
      localIntent2.putExtra("duplicate", false);
      localIntent2.putExtra("android.intent.extra.shortcut.INTENT", localIntent1);
      localIntent2.putExtra("android.intent.extra.shortcut.ICON_RESOURCE", Intent.ShortcutIconResource.fromContext(this, getApplicationContext().getResources().getIdentifier("appicon", "drawable", getApplicationContext().getPackageName())));
      sendBroadcast(localIntent2);
      localSharedPreferences.edit().putBoolean("shortcut", true).commit();
      toast(getString(R.string.install_shortcut_success), 1);
    }
    if (!(this.mApp instanceof TabLauncherApp))
      return;
    a();
    if (this.p)
      this.p = false;
    a("com.alipay.mobile.LAUNCHER_STATUS_CHANGED", "state=onResume");
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    ((TabLauncherApp)this.mApp).setTabId(this.a.getCurrentTabTag());
  }

  public void onTabChanged(String paramString)
  {
    if ((paramString == null) || (this.mApp == null) || (!(this.mApp instanceof TabLauncherApp)));
    do
    {
      return;
      this.a.setCurrentTabByTag(paramString);
      IWidgetGroup localIWidgetGroup = a(paramString);
      if (localIWidgetGroup != null)
        localIWidgetGroup.onResume();
      a("com.alipay.mobile.LAUNCHER_TAB_CHANGED", paramString);
      ((TabLauncherApp)this.mApp).setTabId(paramString);
      if (paramString.equals("20000002"))
      {
        AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, null, null, "tabbar", null, "alipayHome", this.n, "alipay");
        this.n = "alipayHome";
        return;
      }
      if (paramString.equals("20000101"))
      {
        AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, null, null, "tabbar", null, "publicIndexList", this.n, "service");
        this.n = "publicIndexList";
        return;
      }
      if (paramString.equals("20000061"))
      {
        AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, null, null, "tabbar", null, "exploreHome", this.n, "explore");
        this.n = "exploreHome";
        return;
      }
    }
    while (!paramString.equals("20000004"));
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, null, null, "tabbar", null, "wealthHome", this.n, "wealth");
    this.n = "wealthHome";
  }

  public void showAllApps()
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.TabLauncher
 * JD-Core Version:    0.6.2
 */