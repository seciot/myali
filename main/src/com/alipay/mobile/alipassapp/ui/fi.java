package com.alipay.mobile.alipassapp.ui;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.alipassapp.ui.app.AlipassApp;
import com.alipay.mobile.common.logagent.AlipayLogAgent;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.discoverycommon.api.service.AlipassAppEntryDistributeService;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class fi
  implements View.OnClickListener
{
  fi(TravelUserGuideActivity paramTravelUserGuideActivity)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.getSharedPreferences("alipass_setting", 0).edit().putInt("travel_setting_version", 1).commit();
    ((AlipassAppEntryDistributeService)TravelUserGuideActivity.getBundle(this.a).getMicroApplicationContext().getExtServiceByInterface(AlipassAppEntryDistributeService.class.getName())).distributeApp("", "20000021", ((AlipassApp)TravelUserGuideActivity.dexopt(this.a)).getAppBundle(), TravelUserGuideActivity.getBundleByComponentName(this.a).getMicroApplicationContext());
    AlipayLogAgent.writeLog(AlipayApplication.getInstance(), BehaviourIdEnum.CLICKED, "20000021", null, "newGuideView", "startMyTravel");
    this.a.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.fi
 * JD-Core Version:    0.6.2
 */