package com.alipay.android.widgets.discovery;

import android.app.Activity;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.alipay.android.launcher.core.IWidget;
import com.alipay.android.launcher.core.IWidgetGroup;
import com.alipay.kabaoprod.biz.mwallet.pass.request.HomePageWidgetReq;
import com.alipay.kabaoprod.biz.mwallet.pass.result.IndexWidgetResult;
import com.alipay.kabaoprod.core.model.discovery.WidgetDetail;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.AlipayLogAgent.AlipayLogInfo;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APAbsTableView.ViewID;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.discoverycommon.api.service.AlipassAppEntryDistributeService;
import com.alipay.mobile.discoverywidget.biz.DiscoveryObserver;
import com.alipay.mobile.discoverywidget.e;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.appentry.AppEntryConfigService;
import com.alipay.mobile.framework.service.ext.appentry.WidgetItemInfo;
import com.alipay.mobile.framework.service.ext.security.AuthService;
import com.alipay.mobile.framework.widgetcontainer.IWidgetView;
import com.alipay.mobile.framework.widgetcontainer.view.WidgetListContainer;
import com.alipay.mobile.framework.widgetmsg.WidgetMsgFlag;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class DiscoveryWidgetGroup
  implements IWidgetGroup, com.alipay.mobile.discoverywidget.a.c
{
  private AlipassAppEntryDistributeService alipassAppEntryDistributeService;
  private List<View> allViews = new ArrayList();
  private AppEntryConfigService appEntryConfigService;
  private ViewGroup container;
  private Activity context;
  private ArrayList<DiscoveryObserver> discoveryObserverList = new ArrayList();
  private long endTime;
  private boolean hasCouponData = false;
  private boolean hasMemberData = false;
  private boolean hasTravelData = false;
  private APLinearLayout layoutParent;
  private String mId;
  private MicroApplicationContext microApplicationContext;
  private IndexWidgetResult rpcIndexWidgetResult;
  private long startTime;
  private WidgetMsgFlag tabFlagText = null;
  protected APTitleBar titleBar;
  private WidgetListContainer widgetListContainer;
  private List<IWidget> widgets = new ArrayList();

  private void addDiscoveryWidgetAdapter()
  {
    this.widgetListContainer = ((WidgetListContainer)this.container.findViewById(com.alipay.mobile.discoverywidget.c.c));
    if (this.widgetListContainer == null)
      return;
    this.widgetListContainer.setAdapter(new c(this));
  }

  private HomePageWidgetReq buildHomeReq()
  {
    if (this.appEntryConfigService == null)
      this.appEntryConfigService = ((AppEntryConfigService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(AppEntryConfigService.class.getName()));
    List localList = this.appEntryConfigService.getWidgetInfoListbyContainerId("discovery");
    HomePageWidgetReq localHomePageWidgetReq = new HomePageWidgetReq();
    ArrayList localArrayList = new ArrayList();
    if ((localList != null) && (localList.size() > 0))
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        WidgetItemInfo localWidgetItemInfo = (WidgetItemInfo)localIterator.next();
        if (localWidgetItemInfo != null)
          localArrayList.add(localWidgetItemInfo.getWidgetId());
      }
    }
    localHomePageWidgetReq.widgetIdList = localArrayList;
    return localHomePageWidgetReq;
  }

  private String getTag()
  {
    return DiscoveryWidgetGroup.class.getName();
  }

  private void initContainer()
  {
    getTag();
    this.container = ((ViewGroup)LayoutInflater.from(this.context).inflate(com.alipay.mobile.discoverywidget.d.a, null));
    initRootLayout();
    this.layoutParent = ((APLinearLayout)this.container.findViewById(com.alipay.mobile.discoverywidget.c.b));
    getTag();
  }

  private void initRootLayout()
  {
    this.titleBar = ((APTitleBar)this.container.findViewById(com.alipay.mobile.discoverywidget.c.a));
    this.titleBar.setTitleText(this.context.getResources().getString(e.b));
  }

  private void refreshDiscoveryData()
  {
    com.alipay.mobile.discoverywidget.ui.a.d locald = com.alipay.mobile.discoverywidget.ui.a.d.a(this.context);
    locald.a(this.microApplicationContext, this);
    locald.a = this.tabFlagText;
    locald.a(buildHomeReq());
  }

  private void registerLoginMsgService()
  {
    getTag();
    LocalBroadcastManager localLocalBroadcastManager = LocalBroadcastManager.getInstance(this.microApplicationContext.getApplicationContext());
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.alipay.security.login");
    localLocalBroadcastManager.registerReceiver(new b(this), localIntentFilter);
  }

  private void setIndexResult(IndexWidgetResult paramIndexWidgetResult)
  {
    if ((paramIndexWidgetResult == null) || (paramIndexWidgetResult.widgetDetails == null) || (paramIndexWidgetResult.widgetDetails.size() == 0))
      return;
    this.rpcIndexWidgetResult = paramIndexWidgetResult;
    this.widgetListContainer.refresh();
    Iterator localIterator = paramIndexWidgetResult.widgetDetails.entrySet().iterator();
    Map.Entry localEntry;
    IWidgetView localIWidgetView;
    while (localIterator.hasNext())
    {
      localEntry = (Map.Entry)localIterator.next();
      if ((localEntry != null) && (!StringUtils.isBlank((String)localEntry.getKey())) && (localEntry.getValue() != null))
      {
        localIWidgetView = this.widgetListContainer.getWidgetViewById((String)localEntry.getKey());
        if (localIWidgetView != null)
          if ((localIWidgetView.getView() == null) || (localIWidgetView.getView().getTag() == null) || (!(localIWidgetView.getView().getTag() instanceof WidgetItemInfo)))
            break label487;
      }
    }
    label228: label487: for (String str = ((WidgetItemInfo)localIWidgetView.getView().getTag()).getTips(); ; str = "")
    {
      HashMap localHashMap = new HashMap();
      if (StringUtils.isNotBlank(((WidgetDetail)localEntry.getValue()).tips))
      {
        localHashMap.put("tips", ((WidgetDetail)localEntry.getValue()).tips);
        if (!((WidgetDetail)localEntry.getValue()).redMark)
          break label325;
        if (!TextUtils.isEmpty(((WidgetDetail)localEntry.getValue()).redMarkTip))
          localHashMap.put("widget_msg_disc", ((WidgetDetail)localEntry.getValue()).redMarkTip);
      }
      while (true)
      {
        localIWidgetView.setDisplayInfo(localHashMap);
        break;
        localHashMap.put("tips", str);
        break label228;
        localHashMap.put("widget_msg_disc", "");
      }
      if ((paramIndexWidgetResult != null) && (paramIndexWidgetResult.widgetDetails != null) && (paramIndexWidgetResult.widgetDetails.get("50000021") != null))
        this.hasCouponData = ((WidgetDetail)paramIndexWidgetResult.widgetDetails.get("50000021")).hasData;
      if ((paramIndexWidgetResult != null) && (paramIndexWidgetResult.widgetDetails != null) && (paramIndexWidgetResult.widgetDetails.get("50000022") != null))
        this.hasTravelData = ((WidgetDetail)paramIndexWidgetResult.widgetDetails.get("50000022")).hasData;
      if ((paramIndexWidgetResult == null) || (paramIndexWidgetResult.widgetDetails == null) || (paramIndexWidgetResult.widgetDetails.get("50000023") == null))
        break;
      this.hasMemberData = ((WidgetDetail)paramIndexWidgetResult.widgetDetails.get("50000023")).hasData;
      return;
    }
  }

  private void writePerfLog()
  {
    if ((this.startTime != 0L) && (this.endTime != 0L))
    {
      long l = this.endTime - this.startTime;
      Activity localActivity = this.context;
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITORPERF;
      String str = DiscoveryWidgetGroup.class.getName();
      String[] arrayOfString = new String[4];
      arrayOfString[0] = "";
      arrayOfString[1] = "";
      arrayOfString[2] = String.valueOf(l);
      arrayOfString[3] = "";
      AlipayLogAgent.writeLog(localActivity, localBehaviourIdEnum, null, null, null, null, str, "-", "perf_open_discovery", null, "s", "c", arrayOfString);
      this.endTime = 0L;
      this.startTime = 0L;
      new StringBuilder("探索首页DiscoveryWidgetGroup加载时间").append(l).toString();
    }
  }

  private void writeUserClickLog(String paramString1, BehaviourIdEnum paramBehaviourIdEnum, String paramString2, String paramString3)
  {
    try
    {
      AlipayLogAgent.AlipayLogInfo localAlipayLogInfo = new AlipayLogAgent.AlipayLogInfo();
      localAlipayLogInfo.appID = paramString1;
      localAlipayLogInfo.behaviourIdEnum = paramBehaviourIdEnum;
      localAlipayLogInfo.viewID = paramString2;
      localAlipayLogInfo.refViewID = "exploreHome";
      localAlipayLogInfo.seed = paramString3;
      AlipayLogAgent.writeLog(AlipayApplication.getInstance(), localAlipayLogInfo);
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("writeUserClickLog error:").append(localException.getMessage()).toString();
    }
  }

  public void destroy()
  {
  }

  public void discoveryNotify(IndexWidgetResult paramIndexWidgetResult)
  {
    setIndexResult(paramIndexWidgetResult);
    this.endTime = System.currentTimeMillis();
    writePerfLog();
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
    APRelativeLayout localAPRelativeLayout = (APRelativeLayout)LayoutInflater.from(this.context).inflate(com.alipay.mobile.discoverywidget.d.b, null);
    this.tabFlagText = ((WidgetMsgFlag)localAPRelativeLayout.findViewById(com.alipay.mobile.discoverywidget.c.e));
    try
    {
      if (((AuthService)this.microApplicationContext.getExtServiceByInterface(AuthService.class.getName())).isLogin())
      {
        getTag();
        com.alipay.mobile.discoverywidget.ui.a.d locald = com.alipay.mobile.discoverywidget.ui.a.d.a(this.context);
        locald.a(this.microApplicationContext);
        locald.a = this.tabFlagText;
        locald.c(buildHomeReq());
      }
      while (true)
      {
        registerLoginMsgService();
        label101: APTextView localAPTextView = (APTextView)localAPRelativeLayout.findViewById(com.alipay.mobile.discoverywidget.c.d);
        localAPTextView.setText(this.context.getText(e.b));
        Drawable localDrawable = this.context.getResources().getDrawable(com.alipay.mobile.discoverywidget.b.a);
        localDrawable.setBounds(0, 0, localDrawable.getMinimumWidth(), localDrawable.getMinimumHeight());
        localAPTextView.setCompoundDrawables(null, localDrawable, null, null);
        return localAPRelativeLayout;
        getTag();
      }
    }
    catch (Exception localException)
    {
      break label101;
    }
  }

  public View getView()
  {
    getTag();
    this.startTime = System.currentTimeMillis();
    if (this.layoutParent == null)
      initContainer();
    addDiscoveryWidgetAdapter();
    getTag();
    return this.container;
  }

  public void initDiscoveryLayout()
  {
    for (int i = 0; i < this.discoveryObserverList.size(); i++)
      if (this.discoveryObserverList.get(i) != null)
        this.discoveryObserverList.get(i);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }

  public void onRefresh()
  {
    getTag();
  }

  public void onResume()
  {
    getTag();
    AuthService localAuthService = (AuthService)this.microApplicationContext.getExtServiceByInterface(AuthService.class.getName());
    if (!localAuthService.isLogin())
    {
      new Thread(new a(this, localAuthService)).start();
      return;
    }
    refreshDiscoveryData();
    getTag();
  }

  public void onReturn()
  {
    getTag();
    refleshTabPointWidget(this.tabFlagText, this.allViews);
    refreshDiscoveryData();
    getTag();
  }

  public void refleshTabPointWidget(WidgetMsgFlag paramWidgetMsgFlag, List<View> paramList)
  {
    int i = 0;
    if ((paramList != null) && (i < paramList.size()))
      if ((!APTableView.class.isInstance(paramList.get(i))) || (((APTableView)paramList.get(i)).getChildView(APAbsTableView.ViewID.RIGHT_IMAGE).getVisibility() != 0));
    for (int j = 1; ; j = 0)
    {
      if ((paramWidgetMsgFlag.getVisibility() == 0) && (j == 0))
        paramWidgetMsgFlag.setVisibility(4);
      while ((paramWidgetMsgFlag.getVisibility() != 4) || (j == 0))
      {
        return;
        i++;
        break;
      }
      paramWidgetMsgFlag.setVisibility(0);
      return;
    }
  }

  public void setContext(Activity paramActivity)
  {
    this.context = paramActivity;
  }

  public void setContext(MicroApplicationContext paramMicroApplicationContext)
  {
    this.microApplicationContext = paramMicroApplicationContext;
  }

  public void setId(String paramString)
  {
    this.mId = paramString;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.discovery.DiscoveryWidgetGroup
 * JD-Core Version:    0.6.2
 */