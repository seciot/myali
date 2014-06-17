package com.alipay.android.launcher.factory;

import com.alipay.android.launcher.beans.WidgetGroup;
import java.util.ArrayList;
import java.util.List;

public class WidgetGroupDao
{
  public static List<WidgetGroup> a()
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(new WidgetGroup("20000002", "android-phone-openplatform-home", "com.alipay.android.phone.home.widget.HomeWidgetGroup", "true"));
    localArrayList.add(new WidgetGroup("20000101", "android-phone-publicplatform-home", "com.alipay.android.phone.publicplatform.home.PublicHomeWidgetGroup", "true"));
    localArrayList.add(new WidgetGroup("20000061", "android-phone-discovery-discoverywidget", "com.alipay.android.widgets.discovery.DiscoveryWidgetGroup", "false"));
    localArrayList.add(new WidgetGroup("20000004", "android-phone-wealth-home", "com.alipay.android.widgets.asset.AssetWidgetGroup", "false"));
    return localArrayList;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.launcher.factory.WidgetGroupDao
 * JD-Core Version:    0.6.2
 */