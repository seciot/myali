package com.alipay.mobile.framework.widgetcontainer.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import com.alipay.mobile.base.commonbiz.R.styleable;
import com.alipay.mobile.common.utils.DensityUtil;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.BundleContext;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobile.framework.service.ext.appentry.AppEntryConfigService;
import com.alipay.mobile.framework.service.ext.appentry.WidgetItemInfo;
import com.alipay.mobile.framework.service.ext.openplatform.AppInstallStatusService;
import com.alipay.mobile.framework.widgetcontainer.IWidgetView;
import com.alipay.mobile.framework.widgetcontainer.WidgetContainerAdapter;
import com.alipay.mobile.framework.widgetmsg.WidgetMsgManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class WidgetContainer extends FrameLayout
  implements View.OnClickListener
{
  protected String containerId;
  protected int groupGap;
  protected WidgetContainerAdapter widgetContainerAdapter;
  protected List<IWidgetView> widgetList = new ArrayList();

  public WidgetContainer(Context paramContext)
  {
    this(paramContext, null);
  }

  public WidgetContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public WidgetContainer(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.widgetContainer);
    this.containerId = localTypedArray.getString(0);
    this.groupGap = localTypedArray.getDimensionPixelSize(1, DensityUtil.dip2px(getContext(), 14.0F));
    boolean bool = localTypedArray.getBoolean(2, true);
    localTypedArray.recycle();
    if (bool)
      refresh();
  }

  protected abstract View getContentView(List<WidgetItemInfo> paramList);

  public List<IWidgetView> getIWidgetViewList()
  {
    return this.widgetList;
  }

  public IWidgetView getWidgetViewById(String paramString)
  {
    Iterator localIterator = this.widgetList.iterator();
    while (localIterator.hasNext())
    {
      IWidgetView localIWidgetView = (IWidgetView)localIterator.next();
      if ((paramString != null) && (paramString.equals(localIWidgetView.getWidgetId())))
        return localIWidgetView;
    }
    return null;
  }

  public void onClick(View paramView)
  {
    WidgetItemInfo localWidgetItemInfo = (WidgetItemInfo)paramView.getTag();
    if (localWidgetItemInfo == null);
    MicroApplicationContext localMicroApplicationContext;
    do
    {
      SchemeService localSchemeService;
      do
      {
        do
        {
          return;
          WidgetMsgManager.getInstance().ackClick(localWidgetItemInfo.getWidgetId());
        }
        while ((this.widgetContainerAdapter != null) && (this.widgetContainerAdapter.performWidgetClick(paramView, localWidgetItemInfo.getWidgetId(), localWidgetItemInfo.getAppId(), localWidgetItemInfo.getAction())));
        localMicroApplicationContext = AlipayApplication.getInstance().getMicroApplicationContext();
        if (TextUtils.isEmpty(localWidgetItemInfo.getAction()))
          break;
        localSchemeService = (SchemeService)localMicroApplicationContext.findServiceByInterface(SchemeService.class.getName());
      }
      while (localSchemeService == null);
      localSchemeService.process(Uri.parse(localWidgetItemInfo.getAction()));
      return;
    }
    while (TextUtils.isEmpty(localWidgetItemInfo.getAppId()));
    localMicroApplicationContext.startApp(null, localWidgetItemInfo.getAppId(), null);
  }

  public void refresh()
  {
    this.widgetList.clear();
    removeAllViews();
    MicroApplicationContext localMicroApplicationContext = AlipayApplication.getInstance().getMicroApplicationContext();
    List localList = ((AppEntryConfigService)localMicroApplicationContext.findServiceByInterface(AppEntryConfigService.class.getName())).getWidgetInfoListbyContainerId(this.containerId);
    int i = -1 + localList.size();
    if (i >= 0)
    {
      WidgetItemInfo localWidgetItemInfo = (WidgetItemInfo)localList.get(i);
      String str1 = localWidgetItemInfo.getAppId();
      String str2 = localWidgetItemInfo.getAppType();
      String str3 = localWidgetItemInfo.getWidgetId();
      if ((TextUtils.isEmpty(str1)) || (TextUtils.isEmpty(str2)))
        localList.remove(localWidgetItemInfo);
      if (!str2.equalsIgnoreCase("nativeapp"))
      {
        if (!str2.equalsIgnoreCase("alipayapp"))
          break label205;
        if ((!AlipayApplication.getInstance().getBundleContext().isLazyBundleByAppId(str1)) && (localMicroApplicationContext.findDescriptionById(str1) == null))
          localList.remove(localWidgetItemInfo);
      }
      while (true)
      {
        if ((this.widgetContainerAdapter != null) && (!this.widgetContainerAdapter.isWidgetVisible(str3, str1)))
          localList.remove(localWidgetItemInfo);
        i--;
        break;
        label205: AppInstallStatusService localAppInstallStatusService = (AppInstallStatusService)localMicroApplicationContext.getExtServiceByInterface(AppInstallStatusService.class.getName());
        if ((localAppInstallStatusService != null) && (!localAppInstallStatusService.isAppInstalledById(str1)))
          localList.remove(localWidgetItemInfo);
      }
    }
    addView(getContentView(localList));
  }

  public void setAdapter(WidgetContainerAdapter paramWidgetContainerAdapter)
  {
    this.widgetContainerAdapter = paramWidgetContainerAdapter;
    refresh();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.framework.widgetcontainer.view.WidgetContainer
 * JD-Core Version:    0.6.2
 */