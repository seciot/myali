package com.alipay.mobile.security.securitycommon;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;
import com.alipay.mobilesecurity.common.service.model.MobileSecurityResult;

public class SecurityCommonDialogUtil
{
  public static void a(Activity paramActivity)
  {
    ((InputMethodManager)paramActivity.getSystemService("input_method")).hideSoftInputFromWindow(paramActivity.getCurrentFocus().getWindowToken(), 2);
  }

  private static void a(Activity paramActivity, ActivityApplication paramActivityApplication, Boolean paramBoolean)
  {
    paramActivity.runOnUiThread(new SecurityCommonDialogUtil.1(paramActivity, paramBoolean, paramActivityApplication));
  }

  public static <T extends MobileSecurityResult> void a(BaseActivity paramBaseActivity, ActivityApplication paramActivityApplication, Object paramObject)
  {
    try
    {
      MobileSecurityResult localMobileSecurityResult = (MobileSecurityResult)paramObject;
      if ("700".equals(localMobileSecurityResult.getResultCode()))
      {
        a(paramBaseActivity, paramActivityApplication, Boolean.valueOf(true));
        return;
      }
      paramBaseActivity.toast(localMobileSecurityResult.getMessage(), 1);
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("{[info=showErrMsg], [msg=").append(localException.getMessage()).append("]}").toString();
    }
  }

  public static <T extends MobileSecurityResult> void a(BaseActivity paramBaseActivity, ActivityApplication paramActivityApplication, Object paramObject, Boolean paramBoolean)
  {
    try
    {
      MobileSecurityResult localMobileSecurityResult = (MobileSecurityResult)paramObject;
      if ("700".equals(localMobileSecurityResult.getResultCode()))
      {
        a(paramBaseActivity, paramActivityApplication, paramBoolean);
        return;
      }
      paramBaseActivity.toast(localMobileSecurityResult.getMessage(), 1);
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("{[info=showErrMsg], [msg=").append(localException.getMessage()).append("]}").toString();
    }
  }

  public static <T extends MobileSecurityResult> void a(BaseFragmentActivity paramBaseFragmentActivity, ActivityApplication paramActivityApplication, Object paramObject)
  {
    try
    {
      MobileSecurityResult localMobileSecurityResult = (MobileSecurityResult)paramObject;
      if ("700".equals(localMobileSecurityResult.getResultCode()))
      {
        a(paramBaseFragmentActivity, paramActivityApplication, Boolean.valueOf(true));
        return;
      }
      paramBaseFragmentActivity.toast(localMobileSecurityResult.getMessage(), 1);
      return;
    }
    catch (Exception localException)
    {
      new StringBuilder("{[info=showErrMsg], [msg=").append(localException.getMessage()).append("]}").toString();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.SecurityCommonDialogUtil
 * JD-Core Version:    0.6.2
 */