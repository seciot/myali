package com.alipay.android.widgets.asset.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import com.alipay.android.phone.wealth.home.R.layout;
import com.alipay.android.widgets.asset.rpc.AssetDynamicDataProcessor;
import com.alipay.android.widgets.asset.widget.IAssetWidgetView;
import com.alipay.android.widgets.asset.widget.IWidgetActionStrategy;
import com.alipay.android.widgets.asset.widget.WidgetActionStrategyFactory;
import com.alipay.asset.common.view.WealthAccountInfoView;
import com.alipay.asset.common.view.WealthWidgetMsgFlag;
import com.alipay.mobile.framework.widgetcontainer.IWidgetView;
import com.alipay.mobile.framework.widgetcontainer.WidgetContainerAdapter;
import com.alipay.mobilewealth.biz.service.gw.model.home.WealthHomeInfo;
import com.alipay.mobilewealth.biz.service.gw.model.home.WealthHomeMarkInfo;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

public class WealthWidgetFlagAdapter
  implements WidgetContainerAdapter
{
  private Map<String, WealthHomeInfo> a = Collections.EMPTY_MAP;
  private Map<String, WealthHomeMarkInfo> b = Collections.EMPTY_MAP;
  private Context c;
  private Map<String, IAssetWidgetView> d = new ConcurrentHashMap();
  private Map<String, WealthWidgetMsgFlag> e = new ConcurrentHashMap();
  private WealthWidgetMsgFlag f = null;
  private WealthAccountInfoView g;
  private WidgetActionStrategyFactory h;
  private AssetDynamicDataProcessor i;

  public WealthWidgetFlagAdapter(Context paramContext, AssetDynamicDataProcessor paramAssetDynamicDataProcessor)
  {
    this.c = paramContext;
    this.i = paramAssetDynamicDataProcessor;
    this.h = WidgetActionStrategyFactory.a(paramContext);
  }

  private void a(WealthWidgetMsgFlag paramWealthWidgetMsgFlag, WealthHomeMarkInfo paramWealthHomeMarkInfo)
  {
    if (paramWealthWidgetMsgFlag == null);
    do
    {
      return;
      if (paramWealthHomeMarkInfo != null)
      {
        paramWealthWidgetMsgFlag.setMsgData(paramWealthHomeMarkInfo.mark, "cache".equals(paramWealthHomeMarkInfo.markType), paramWealthHomeMarkInfo.markTag, paramWealthHomeMarkInfo.markLable, paramWealthHomeMarkInfo.markStyle);
        return;
      }
    }
    while (paramWealthWidgetMsgFlag == this.f);
    paramWealthWidgetMsgFlag.reset();
  }

  public final void a()
  {
    if (this.g != null)
      this.g.updateUI();
  }

  public final void a(WealthWidgetMsgFlag paramWealthWidgetMsgFlag)
  {
    if (paramWealthWidgetMsgFlag == null)
      return;
    this.f = paramWealthWidgetMsgFlag;
    a(this.f, (WealthHomeMarkInfo)this.b.get(this.f.getWidgetId()));
  }

  public final void a(Map<String, WealthHomeInfo> paramMap)
  {
    this.a = Collections.EMPTY_MAP;
    if (paramMap != null)
    {
      this.h.a(true);
      this.a = paramMap;
      return;
    }
    this.h.a(false);
  }

  public final void b(Map<String, WealthHomeMarkInfo> paramMap)
  {
    this.b = Collections.EMPTY_MAP;
    if (paramMap != null)
      this.b = paramMap;
    Iterator localIterator = this.b.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      String str = (String)localEntry.getKey();
      WealthWidgetMsgFlag localWealthWidgetMsgFlag = (WealthWidgetMsgFlag)this.e.get(str);
      if (localWealthWidgetMsgFlag == null)
      {
        localWealthWidgetMsgFlag = (WealthWidgetMsgFlag)LayoutInflater.from(this.c).inflate(R.layout.HostClassLoader, null, false);
        this.e.put(str, localWealthWidgetMsgFlag);
        localWealthWidgetMsgFlag.setBindingWidget(str);
        this.f.addChild(localWealthWidgetMsgFlag);
      }
      IAssetWidgetView localIAssetWidgetView = (IAssetWidgetView)this.d.get(str);
      if (localIAssetWidgetView != null)
        localIAssetWidgetView.bindWidgetFlagView(localWealthWidgetMsgFlag);
      a(localWealthWidgetMsgFlag, (WealthHomeMarkInfo)localEntry.getValue());
    }
    this.f.refreshMsgFlag();
  }

  public IWidgetView getWidgetView(String paramString1, String paramString2, Map<String, String> paramMap, int paramInt)
  {
    new StringBuilder("widgetId=").append(paramString1).append(",appId=").append(paramString2).append(",getWidgetView()").toString();
    WealthHomeInfo localWealthHomeInfo = (WealthHomeInfo)this.a.get(paramString1);
    IAssetWidgetView localIAssetWidgetView1 = (IAssetWidgetView)this.d.get(paramString1);
    if (localIAssetWidgetView1 != null)
      localIAssetWidgetView1.cleanWidgetFlag();
    IAssetWidgetView localIAssetWidgetView2 = this.h.a(paramString1).a(paramMap, paramInt, localWealthHomeInfo);
    if (localIAssetWidgetView2 != null)
    {
      localIAssetWidgetView2.setDisplayInfo(paramMap);
      localIAssetWidgetView2.setViewFlag(paramInt);
      localIAssetWidgetView2.setWidgetId(paramString1);
      this.d.put(paramString1, localIAssetWidgetView2);
      localIAssetWidgetView2.bindWidgetFlagView((WealthWidgetMsgFlag)this.e.get(paramString1));
      if ((localIAssetWidgetView2 instanceof WealthAccountInfoView))
        this.g = ((WealthAccountInfoView)localIAssetWidgetView2);
    }
    return localIAssetWidgetView2;
  }

  public boolean isWidgetVisible(String paramString1, String paramString2)
  {
    boolean bool = this.h.a(paramString1).a(paramString1, (WealthHomeInfo)this.a.get(paramString1));
    if ((!bool) && (this.d.containsKey(paramString1)))
      this.d.remove(paramString1);
    if ((!bool) && (this.e.containsKey(paramString1)))
      this.e.remove(paramString1);
    new StringBuilder("widgetId=").append(paramString1).append(",appId=").append(paramString2).append(",isVisible=").append(bool).toString();
    return bool;
  }

  public boolean needBindWidgetMsgFlag(String paramString1, String paramString2)
  {
    return false;
  }

  // ERROR //
  public boolean performWidgetClick(android.view.View paramView, String paramString1, String paramString2, String paramString3)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 46	com/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter:e	Ljava/util/Map;
    //   4: aload_2
    //   5: invokeinterface 114 2 0
    //   10: checkcast 89	com/alipay/asset/common/view/WealthWidgetMsgFlag
    //   13: astore 5
    //   15: aload 5
    //   17: ifnull +16 -> 33
    //   20: aload 5
    //   22: invokevirtual 248	com/alipay/asset/common/view/WealthWidgetMsgFlag:isHideFlag	()Z
    //   25: ifne +8 -> 33
    //   28: aload 5
    //   30: invokevirtual 251	com/alipay/asset/common/view/WealthWidgetMsgFlag:ackClick	()V
    //   33: aload_0
    //   34: getfield 37	com/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter:a	Ljava/util/Map;
    //   37: aload_2
    //   38: invokeinterface 114 2 0
    //   43: checkcast 203	com/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo
    //   46: astore 6
    //   48: aload_0
    //   49: getfield 59	com/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter:h	Lcom/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory;
    //   52: aload_2
    //   53: invokevirtual 209	com/alipay/android/widgets/asset/widget/WidgetActionStrategyFactory:a	(Ljava/lang/String;)Lcom/alipay/android/widgets/asset/widget/IWidgetActionStrategy;
    //   56: astore 7
    //   58: aload 7
    //   60: aload_1
    //   61: aload_2
    //   62: aload_3
    //   63: aload 4
    //   65: aload 6
    //   67: invokeinterface 254 6 0
    //   72: istore 10
    //   74: aload 7
    //   76: aload_2
    //   77: aload 6
    //   79: invokeinterface 257 3 0
    //   84: iload 10
    //   86: istore 9
    //   88: iload 9
    //   90: ireturn
    //   91: astore 8
    //   93: iconst_1
    //   94: istore 9
    //   96: aload 6
    //   98: ifnull -10 -> 88
    //   101: invokestatic 263	com/alipay/mobile/framework/AlipayApplication:getInstance	()Lcom/alipay/mobile/framework/AlipayApplication;
    //   104: invokevirtual 267	com/alipay/mobile/framework/AlipayApplication:getMicroApplicationContext	()Lcom/alipay/mobile/framework/MicroApplicationContext;
    //   107: aload 6
    //   109: getfield 270	com/alipay/mobilewealth/biz/service/gw/model/home/WealthHomeInfo:desc	Ljava/lang/String;
    //   112: iconst_0
    //   113: invokeinterface 276 3 0
    //   118: aload_0
    //   119: getfield 52	com/alipay/android/widgets/asset/adapter/WealthWidgetFlagAdapter:i	Lcom/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor;
    //   122: iconst_1
    //   123: invokevirtual 280	com/alipay/android/widgets/asset/rpc/AssetDynamicDataProcessor:c	(Z)V
    //   126: iload 9
    //   128: ireturn
    //   129: astore 11
    //   131: iload 10
    //   133: istore 9
    //   135: goto -39 -> 96
    //
    // Exception table:
    //   from	to	target	type
    //   58	74	91	java/lang/Exception
    //   74	84	129	java/lang/Exception
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.adapter.WealthWidgetFlagAdapter
 * JD-Core Version:    0.6.2
 */