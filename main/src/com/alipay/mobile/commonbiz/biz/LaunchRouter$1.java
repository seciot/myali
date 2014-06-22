package com.alipay.mobile.commonbiz.biz;

import android.app.Activity;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.commonbiz.biz.dialog.UserTipDialog;

class LaunchRouter$1
  implements View.OnClickListener
{
  LaunchRouter$1(LaunchRouter paramLaunchRouter, UserTipDialog paramUserTipDialog, SharedPreferences paramSharedPreferences, Activity paramActivity)
  {
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == R.id.btn_user_tip_ok)
    {
      if ((this.a != null) && (this.a.isShowing()))
        this.a.dismiss();
      if (this.a.getCheckBoxState())
        this.b.edit().putBoolean("showTip", false).commit();
      localLaunchRouter = this.d;
      LaunchRouter.getBundle(this.d);
      LaunchRouter.dexopt(localLaunchRouter);
    }
    while ((paramView.getId() != R.id.btn_user_tip_no) || (this.a == null) || (!this.a.isShowing()))
    {
      LaunchRouter localLaunchRouter;
      return;
    }
    this.a.dismiss();
    this.c.finish();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonbiz.biz.LaunchRouter.1
 * JD-Core Version:    0.6.2
 */