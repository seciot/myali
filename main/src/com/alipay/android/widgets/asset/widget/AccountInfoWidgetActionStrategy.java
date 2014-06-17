package com.alipay.android.widgets.asset.widget;

import android.content.Context;
import android.view.View;
import com.alipay.asset.common.view.WealthAccountInfoView;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobilewealth.biz.service.gw.model.home.WealthHomeInfo;
import java.util.Map;

public class AccountInfoWidgetActionStrategy
  implements IWidgetActionStrategy
{
  private Context a;

  public AccountInfoWidgetActionStrategy(Context paramContext)
  {
    this.a = paramContext;
  }

  public final IAssetWidgetView a(Map<String, String> paramMap, int paramInt, WealthHomeInfo paramWealthHomeInfo)
  {
    return new WealthAccountInfoView(this.a);
  }

  public final void a(boolean paramBoolean)
  {
  }

  public final boolean a(View paramView, String paramString1, String paramString2, String paramString3, WealthHomeInfo paramWealthHomeInfo)
  {
    return true;
  }

  public final boolean a(String paramString, WealthHomeInfo paramWealthHomeInfo)
  {
    return true;
  }

  public final void b(String paramString, WealthHomeInfo paramWealthHomeInfo)
  {
    AlipayLogAgent.writeLog(this.a, BehaviourIdEnum.CLICKED, null, null, "20000004", null, "accountInfoIndex", "wealthHome", "accountInfo");
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widgets.asset.widget.AccountInfoWidgetActionStrategy
 * JD-Core Version:    0.6.2
 */