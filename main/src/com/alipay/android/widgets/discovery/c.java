package com.alipay.android.widgets.discovery;

import android.os.Bundle;
import android.view.View;
import com.alipay.kabaoprod.biz.mwallet.pass.result.IndexWidgetResult;
import com.alipay.kabaoprod.core.model.discovery.WidgetDetail;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.discoverycommon.api.service.AlipassAppEntryDistributeService;
import com.alipay.mobile.discoverywidget.ui.widget.DiscoveryListWidgetView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.widgetcontainer.IWidgetView;
import com.alipay.mobile.framework.widgetcontainer.WidgetContainerAdapter;
import java.util.Map;

final class c
  implements WidgetContainerAdapter
{
  c(DiscoveryWidgetGroup paramDiscoveryWidgetGroup)
  {
  }

  public final IWidgetView getWidgetView(String paramString1, String paramString2, Map<String, String> paramMap, int paramInt)
  {
    return new DiscoveryListWidgetView(DiscoveryWidgetGroup.access$900(this.a));
  }

  public final boolean isWidgetVisible(String paramString1, String paramString2)
  {
    new StringBuilder("widgetViewId=").append(paramString1).append(",appId=").append(paramString2).toString();
    if ((DiscoveryWidgetGroup.access$1000(this.a) != null) && (DiscoveryWidgetGroup.access$1000(this.a).widgetDetails != null) && (DiscoveryWidgetGroup.access$1000(this.a).widgetDetails.get(paramString1) != null))
      return ((WidgetDetail)DiscoveryWidgetGroup.access$1000(this.a).widgetDetails.get(paramString1)).showStatus;
    return !StringUtils.equals(paramString1, "50000025");
  }

  public final boolean needBindWidgetMsgFlag(String paramString1, String paramString2)
  {
    return true;
  }

  public final boolean performWidgetClick(View paramView, String paramString1, String paramString2, String paramString3)
  {
    if (((StringUtils.equals(paramString1, "50000021")) || (StringUtils.equals(paramString1, "50000022")) || (StringUtils.equals(paramString1, "50000023"))) && (DiscoveryWidgetGroup.access$400(this.a) == null))
      DiscoveryWidgetGroup.access$402(this.a, (AlipassAppEntryDistributeService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AlipassAppEntryDistributeService.class.getName()));
    if (StringUtils.equals(paramString1, "50000021"))
    {
      Bundle localBundle1 = new Bundle();
      localBundle1.putBoolean("discovey_index_has_coupon_data", DiscoveryWidgetGroup.access$500(this.a));
      DiscoveryWidgetGroup.access$400(this.a).distributeApp("20000061", "20000030", localBundle1, DiscoveryWidgetGroup.access$000(this.a));
      DiscoveryWidgetGroup.access$600(this.a, "20000030", BehaviourIdEnum.CLICKED, "myCouponList", "myCoupon");
      return true;
    }
    if (StringUtils.equals(paramString1, "50000022"))
    {
      Bundle localBundle2 = new Bundle();
      localBundle2.putBoolean("discovey_index_has_travel_data", DiscoveryWidgetGroup.access$700(this.a));
      DiscoveryWidgetGroup.access$400(this.a).distributeApp("20000061", "20000021", localBundle2, DiscoveryWidgetGroup.access$000(this.a));
      DiscoveryWidgetGroup.access$600(this.a, "20000021", BehaviourIdEnum.CLICKED, "myTravelList", "myTravel");
      return true;
    }
    if (StringUtils.equals(paramString1, "50000023"))
    {
      Bundle localBundle3 = new Bundle();
      localBundle3.putBoolean("discovey_index_has_member_data", DiscoveryWidgetGroup.access$800(this.a));
      DiscoveryWidgetGroup.access$400(this.a).distributeApp("20000061", "20000062", localBundle3, DiscoveryWidgetGroup.access$000(this.a));
      DiscoveryWidgetGroup.access$600(this.a, "20000062", BehaviourIdEnum.CLICKED, "20000062Home", "20000062Icon");
      return true;
    }
    if (StringUtils.equals(paramString1, "50000025"))
      DiscoveryWidgetGroup.access$600(this.a, "20000121", BehaviourIdEnum.OPENPAGE, "nearbyView", "20000121Icon");
    while (true)
    {
      return false;
      if (StringUtils.equals(paramString1, "50000024"))
        DiscoveryWidgetGroup.access$600(this.a, "20000074", BehaviourIdEnum.OPENPAGE, "20000074Home", "20000074Icon");
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.discovery.c
 * JD-Core Version:    0.6.2
 */