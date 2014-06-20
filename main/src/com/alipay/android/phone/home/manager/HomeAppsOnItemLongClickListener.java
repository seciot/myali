package com.alipay.android.phone.home.manager;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import com.alipay.android.phone.home.app.HomeMoreApp;
import com.alipay.android.phone.home.util.HomeLogAgentUtil;
import com.alipay.android.phone.openplatform.R.array;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.service.ext.openplatform.AppUtils;
import com.alipay.mobile.framework.service.ext.openplatform.app.App;
import com.alipay.mobile.framework.service.ext.openplatform.service.AppManageService;
import java.lang.ref.WeakReference;

public class HomeAppsOnItemLongClickListener
  implements AdapterView.OnItemLongClickListener
{
  private MicroApplicationContext a = AlipayApplication.getInstance().getMicroApplicationContext();

  public boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    HomeAppsItemAdapter localHomeAppsItemAdapter = (HomeAppsItemAdapter)paramAdapterView.getAdapter();
    App localApp;
    int i;
    if (paramInt < localHomeAppsItemAdapter.a())
    {
      localApp = localHomeAppsItemAdapter.a(paramInt);
      if ((localApp instanceof HomeMoreApp))
        return false;
      HomeLogAgentUtil.f(localApp.getAppId());
      if (localApp.isOffline())
      {
        localApp.offline();
        localHomeAppsItemAdapter.a(localApp);
        localHomeAppsItemAdapter.notifyDataSetChanged();
        this.a.Toast("该应用已停止服务", 0);
        if (localHomeAppsItemAdapter != null)
          localHomeAppsItemAdapter.a(((AppManageService)AlipayApplication.getInstance().getMicroApplicationContext().getExtServiceByInterface(AppManageService.class.getName())).getHomeAppsFromLocal());
        return true;
      }
      i = R.array.BundlesManager;
      if (AppUtils.checkCanAddShortcut(localApp))
        break label206;
    }
    label206: for (int j = R.array.AppBundle; ; j = i)
    {
      AlertDialog localAlertDialog = new AlertDialog.Builder((Context)AlipayApplication.getInstance().getMicroApplicationContext().getTopActivity().get()).setTitle(localApp.getAppName()).setCancelable(true).setItems(j, new j(this, localApp, localHomeAppsItemAdapter)).create();
      localAlertDialog.setCanceledOnTouchOutside(true);
      localAlertDialog.show();
      return true;
      return false;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.home.manager.HomeAppsOnItemLongClickListener
 * JD-Core Version:    0.6.2
 */