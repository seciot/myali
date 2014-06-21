package com.alipay.android.widgets.asset.widget;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.android.phone.wealth.home.R.layout;
import com.alipay.asset.common.view.WealthDynamicTableView;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.common.SchemeService;
import com.alipay.mobilewealth.biz.service.gw.model.home.WealthHomeInfo;
import java.util.Map;

public class DefaultWidgetActionStrategy
  implements IWidgetActionStrategy
{
  protected boolean a = false;
  private Context b;
  private SchemeService c;

  public DefaultWidgetActionStrategy(Context paramContext)
  {
    this.b = paramContext;
    this.c = ((SchemeService)AlipayApplication.getInstance().getMicroApplicationContext().findServiceByInterface(SchemeService.class.getName()));
  }

  public final IAssetWidgetView a(Map<String, String> paramMap, int paramInt, WealthHomeInfo paramWealthHomeInfo)
  {
    if (paramWealthHomeInfo == null)
      return null;
    paramMap.put("tips", paramWealthHomeInfo.opText);
    WealthDynamicTableView localWealthDynamicTableView = (WealthDynamicTableView)LayoutInflater.from(this.b).inflate(R.layout.ZLog, null);
    localWealthDynamicTableView.setDisplayInfo(paramMap);
    localWealthDynamicTableView.setViewFlag(paramInt);
    return localWealthDynamicTableView;
  }

  public final void a(boolean paramBoolean)
  {
    this.a = paramBoolean;
  }

  public boolean a(View paramView, String paramString1, String paramString2, String paramString3, WealthHomeInfo paramWealthHomeInfo)
  {
    if (paramWealthHomeInfo != null)
      try
      {
        Uri localUri = Uri.parse(paramWealthHomeInfo.jumpUrl);
        if ((this.c.process(localUri) == 1) && (StringUtils.isNotBlank(paramWealthHomeInfo.desc)))
          throw new RuntimeException("执行错误");
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException);
      }
    return true;
  }

  public boolean a(String paramString, WealthHomeInfo paramWealthHomeInfo)
  {
    if (paramString == null);
    while (paramWealthHomeInfo == null)
      return false;
    return true;
  }

  public final void b(String paramString, WealthHomeInfo paramWealthHomeInfo)
  {
    if ((paramWealthHomeInfo != null) && (paramString != null));
    try
    {
      switch (Integer.parseInt(paramString))
      {
      case 50000030:
        AlipayLogAgent.writeLog(this.b, BehaviourIdEnum.CLICKED, null, null, "20000004", null, "balanceBaoIndex", "wealthHome", "balanceBao");
        return;
      case 50000031:
        AlipayLogAgent.writeLog(this.b, BehaviourIdEnum.CLICKED, null, null, "20000004", null, "20000019Home", "wealthHome", "accountBalance");
        return;
      case 50000032:
        if (paramWealthHomeInfo.jumpUrl.indexOf("20000014") > 0)
        {
          AlipayLogAgent.writeLog(this.b, BehaviourIdEnum.CLICKED, null, null, "20000004", null, "20000014Home", "wealthHome", "bankcard");
          return;
        }
        AlipayLogAgent.writeLog(this.b, BehaviourIdEnum.CLICKED, null, null, "20000004", null, "openQuickPay", "wealthHome", "addCard");
        return;
      case 50000033:
        if (paramWealthHomeInfo.jumpUrl.indexOf("SIGNED") > 0)
          AlipayLogAgent.writeLog(this.b, BehaviourIdEnum.CLICKED, null, null, "20000004", null, "creditPayIndex", "wealthHome", "creditPay");
        if (paramWealthHomeInfo.jumpUrl.indexOf("UNSIGN") > 0)
        {
          AlipayLogAgent.writeLog(this.b, BehaviourIdEnum.CLICKED, null, null, "20000004", null, "openCreditPayView", "wealthHome", "creditPay");
          return;
        }
        break;
      case 50000034:
        AlipayLogAgent.writeLog(this.b, BehaviourIdEnum.CLICKED, null, null, "20000004", null, "20000039Home", "wealthHome", "credit");
        return;
      case 50000035:
        AlipayLogAgent.writeLog(this.b, BehaviourIdEnum.CLICKED, null, null, "20000004", null, "10000009Home", "wealthHome", "donate");
        return;
      case 50000036:
        if (paramWealthHomeInfo.jumpUrl.indexOf("isSignedFixed=true") > 0)
        {
          AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "20000004", "20000059Home", "wealthHome", "20000059");
          return;
        }
        AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "20000004", "20000059ProductList", "wealthHome", "20000059");
        return;
      case 50000037:
        AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "20000004", "20000077Home", "wealthHome", "20000077");
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.widget.DefaultWidgetActionStrategy
 * JD-Core Version:    0.6.2
 */