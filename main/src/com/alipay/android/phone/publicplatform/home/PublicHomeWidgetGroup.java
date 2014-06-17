package com.alipay.android.phone.publicplatform.home;

import android.app.Activity;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.content.LocalBroadcastManager;
import android.util.SmartBarUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.alipay.android.launcher.core.IFragmentWidgetGroup;
import com.alipay.android.launcher.core.IWidget;
import com.alipay.android.phone.publicplatform.home.widget.InterceptTouchLinearLayout;
import com.alipay.android.phone.publicplatform.main.api.MsgCountUpdateObservable;
import com.alipay.android.phone.publicplatform.main.model.MsgCountModel;
import com.alipay.android.phone.publicplatform.widget.PublicTabWidgetMsgFlag;
import com.alipay.mobile.android.main.publichome.PublicHomeView_;
import com.alipay.mobile.common.utils.CacheSet;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.pubsvc.app.msgnotify.facade.PubAppMsgNotifyService;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Observable;
import java.util.Observer;
import java.util.Set;
import java.util.Timer;

public class PublicHomeWidgetGroup
  implements IFragmentWidgetGroup, Observer
{
  public static PublicHomeView_ publicHomeViewHolder = null;
  private PublicHomeView_ a = null;
  private Activity b;
  private ActivityApplication c;
  private String d;
  private InterceptTouchLinearLayout e;
  private APTitleBar f;
  private PublicTabWidgetMsgFlag g;
  private Timer h = new Timer();
  private long i = 900000L;
  private Handler j = new Handler(Looper.getMainLooper());
  private com.alipay.mobile.publicsvc.home.proguard.b.b k;
  private AuthService l = (AuthService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AuthService.class.getName());
  private g m;
  private boolean n = false;
  private Map<String, Boolean> o;
  private String p;
  com.alipay.mobile.publicsvc.home.proguard.h.a publicHomeManager;
  private Boolean q = null;
  private MsgCountModel r = new MsgCountModel(0, 1);

  public PublicHomeWidgetGroup()
  {
    this.h.schedule(new a(this), this.i, this.i);
    this.publicHomeManager = com.alipay.mobile.publicsvc.home.proguard.h.a.a();
    this.publicHomeManager.b();
    this.publicHomeManager.addObserver(this);
    PubAppMsgNotifyService localPubAppMsgNotifyService = PubAppMsgNotifyService.instance();
    this.k = com.alipay.mobile.publicsvc.home.proguard.b.b.a(AlipayApplication.getInstance());
    this.k.a(this.publicHomeManager);
    localPubAppMsgNotifyService.setSubscribMsg("ppmain_subscriber", this.k);
    this.publicHomeManager.setOnPublicHomeListQueryFinishListener(new b(this));
    this.m = new g(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.alipay.mobile.LAUNCHER_TAB_CHANGED");
    LocalBroadcastManager.getInstance(AlipayApplication.getInstance().getApplicationContext()).registerReceiver(this.m, localIntentFilter);
  }

  private static String a(Map<String, Boolean> paramMap)
  {
    Iterator localIterator = paramMap.entrySet().iterator();
    String str1 = "";
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      StringBuilder localStringBuilder = new StringBuilder().append(str1).append((String)localEntry.getKey()).append(":");
      if (((Boolean)localEntry.getValue()).booleanValue() == true);
      for (String str2 = "1"; ; str2 = "0")
      {
        str1 = str2 + ",";
        break;
      }
    }
    if (str1.endsWith(","))
      str1 = str1.substring(0, -1 + str1.length());
    return str1;
  }

  private void a()
  {
    if (this.q == null)
      this.q = Boolean.valueOf(CacheSet.getInstance(AlipayApplication.getInstance().getApplicationContext()).getBoolean("publicHomeTabPointLastShowStatus", true));
  }

  public static void clearPublicHomeViewHolder()
  {
    publicHomeViewHolder = null;
  }

  public void destroy()
  {
    publicHomeViewHolder = null;
    if (this.m != null)
      LocalBroadcastManager.getInstance(AlipayApplication.getInstance().getApplicationContext()).unregisterReceiver(this.m);
  }

  public List<IWidget> getAllWidgets()
  {
    return null;
  }

  public String getId()
  {
    return this.d;
  }

  public View getIndicator()
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)LayoutInflater.from(this.b).inflate(com.alipay.mobile.publicsvc.home.proguard.j.f.d, null);
    this.g = ((PublicTabWidgetMsgFlag)localRelativeLayout.findViewById(com.alipay.mobile.publicsvc.home.proguard.j.e.x));
    if (SmartBarUtils.hasSmartBar())
    {
      String str = Build.MODEL;
      if (("Meizu".equals(Build.MANUFACTURER)) && ("M040".equals(str)))
        ((RelativeLayout.LayoutParams)this.g.getLayoutParams()).setMargins(0, 4, 1, 0);
    }
    TextView localTextView = (TextView)localRelativeLayout.findViewById(com.alipay.mobile.publicsvc.home.proguard.j.e.w);
    Drawable localDrawable = this.b.getResources().getDrawable(com.alipay.mobile.publicsvc.home.proguard.j.d.k);
    localDrawable.setBounds(0, 0, localDrawable.getMinimumWidth(), localDrawable.getMinimumHeight());
    localTextView.setText(this.b.getText(com.alipay.mobile.publicsvc.home.proguard.j.g.a));
    localTextView.setCompoundDrawables(null, localDrawable, null, null);
    this.g.setPublicTabWidgetMsgFlagCallback(new c(this));
    this.g.reset();
    localTextView.setOnTouchListener(new d(this));
    return localRelativeLayout;
  }

  public View getView()
  {
    if (this.e == null)
    {
      this.e = ((InterceptTouchLinearLayout)LayoutInflater.from(this.b).inflate(com.alipay.mobile.publicsvc.home.proguard.j.f.c, null));
      this.f = ((APTitleBar)this.e.findViewById(com.alipay.mobile.publicsvc.home.proguard.j.e.o));
      this.a = ((PublicHomeView_)LayoutInflater.from(this.b).inflate(com.alipay.mobile.publicsvc.home.proguard.j.f.a, null));
      this.a.setPublicHomeManager(this.publicHomeManager);
      this.a.afterView();
      FrameLayout localFrameLayout = (FrameLayout)this.e.findViewById(com.alipay.mobile.publicsvc.home.proguard.j.e.n);
      if (localFrameLayout.getChildCount() > 0)
        localFrameLayout.removeAllViews();
      localFrameLayout.addView(this.a);
      publicHomeViewHolder = this.a;
      this.k.a(this.a);
      this.f.setGenericButtonListener(new e(this));
      this.e.setOnInterceptTouchListener(new f(this));
    }
    return this.e;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (this.a != null) && (this.a.operateMenuVisiable()))
    {
      this.a.hideOperateMenu();
      return true;
    }
    return false;
  }

  public void onRefresh()
  {
  }

  public void onResume()
  {
  }

  public void onReturn()
  {
  }

  public void setActApplication(ActivityApplication paramActivityApplication)
  {
    this.c = paramActivityApplication;
  }

  public void setContext(Activity paramActivity)
  {
    this.b = paramActivity;
  }

  public void setContext(MicroApplicationContext paramMicroApplicationContext)
  {
  }

  public void setId(String paramString)
  {
    this.d = paramString;
  }

  public void update(Observable paramObservable, Object paramObject)
  {
    if (((paramObservable instanceof MsgCountUpdateObservable)) && (this.g != null))
      this.g.reset();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.home.PublicHomeWidgetGroup
 * JD-Core Version:    0.6.2
 */