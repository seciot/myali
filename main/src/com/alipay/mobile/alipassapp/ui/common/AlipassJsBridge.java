package com.alipay.mobile.alipassapp.ui.common;

import android.app.Activity;
import com.alipay.mobile.common.lbs.LBSLocationManagerProxy;
import com.alipay.mobile.h5container.extenal.Func;
import com.alipay.mobile.h5container.extenal.ICallInfo;

public class AlipassJsBridge
{
  private Activity a;

  public AlipassJsBridge(Activity paramActivity)
  {
    this.a = paramActivity;
  }

  @Func("getGPS")
  public void getGPS(ICallInfo paramICallInfo)
  {
    if (this.a == null)
      return;
    LBSLocationManagerProxy.getInstance().requestLocationUpdates(this.a, new j(this, paramICallInfo));
  }

  @Func("openMcardFail")
  public void openMcardFail(ICallInfo paramICallInfo)
  {
    com.alipay.mobile.alipassapp.ui.AlipassQueryCardActivity.b = false;
  }

  @Func("openMcardSuccess")
  public void openMcardSuccess(ICallInfo paramICallInfo)
  {
    com.alipay.mobile.alipassapp.ui.AlipassQueryCardActivity.b = true;
    com.alipay.mobile.alipassapp.ui.AlipassQueryCardActivity.a = true;
  }

  @Func("refreshMcard")
  public void refreshMcard(ICallInfo paramICallInfo)
  {
    com.alipay.mobile.alipassapp.ui.MemberCardDetailActivity.a = true;
    com.alipay.mobile.alipassapp.ui.MemberCardDetailActivity.c = true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.AlipassJsBridge
 * JD-Core Version:    0.6.2
 */