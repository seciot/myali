package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.alipassapp.ui.AlipassDetailActivity;
import com.alipay.mobile.alipassapp.ui.AlipassRemindActivity;
import com.alipay.mobile.alipassapp.ui.TravelCurrentListActivity;
import com.alipay.mobile.alipassapp.ui.TravelPastListActivity;
import com.alipay.mobile.alipassapp.ui.VoucherCurrentListActivity;
import com.alipay.mobile.alipassapp.ui.VoucherPastListActivity;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.app.ActivityApplication;

public final class aj
{
  public static void a(Context paramContext, ActivityApplication paramActivityApplication, APTitleBar paramAPTitleBar, Bundle paramBundle)
  {
    if ((paramContext instanceof AlipassDetailActivity))
    {
      paramAPTitleBar.setTitleText(paramContext.getResources().getString(R.string.title_travel_detail));
      if (paramBundle != null)
      {
        paramAPTitleBar.setGenericButtonText(paramContext.getResources().getString(R.string.travel_remind_set_titleBar));
        paramAPTitleBar.setGenericButtonVisiable(true);
        paramAPTitleBar.setGenericButtonListener(new ak(paramBundle, paramContext, paramActivityApplication));
      }
    }
    do
    {
      return;
      if ((paramContext instanceof AlipassRemindActivity))
      {
        paramAPTitleBar.setTitleText(paramContext.getResources().getString(R.string.travel_remind_set_titleBar));
        paramAPTitleBar.setGenericButtonVisiable(false);
        return;
      }
      if ((paramContext instanceof VoucherPastListActivity))
      {
        paramAPTitleBar.setTitleText(paramContext.getResources().getString(R.string.alipass_my_voucher_past_title));
        paramAPTitleBar.setGenericButtonVisiable(false);
        return;
      }
      if ((paramContext instanceof TravelPastListActivity))
      {
        paramAPTitleBar.setTitleText(paramContext.getResources().getString(R.string.alipass_my_travel_past));
        paramAPTitleBar.setGenericButtonVisiable(false);
        return;
      }
      if ((paramContext instanceof TravelCurrentListActivity))
      {
        paramAPTitleBar.setTitleText(paramContext.getResources().getString(R.string.alipass_my_travel));
        paramAPTitleBar.setGenericButtonVisiable(true);
        paramAPTitleBar.setGenericButtonText(paramContext.getResources().getString(R.string.alipass_my_travel_past));
        paramAPTitleBar.setGenericButtonListener(new al(paramActivityApplication));
        return;
      }
    }
    while (!(paramContext instanceof VoucherCurrentListActivity));
    paramAPTitleBar.setTitleText(paramContext.getResources().getString(R.string.alipass_my_voucher));
    paramAPTitleBar.setGenericButtonVisiable(true);
    paramAPTitleBar.setGenericButtonText(paramContext.getResources().getString(R.string.alipass_my_voucher_past));
    paramAPTitleBar.setGenericButtonListener(new am(paramActivityApplication));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.aj
 * JD-Core Version:    0.6.2
 */