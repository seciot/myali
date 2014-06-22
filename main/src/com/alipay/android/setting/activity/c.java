package com.alipay.android.setting.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import com.alipay.android.app.R.string;
import com.alipay.android.setting.widgets.CustomToast;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox;

final class c
  implements DialogInterface.OnClickListener
{
  c(BaseSettingActivity paramBaseSettingActivity, APSixNumberPwdInputBox paramAPSixNumberPwdInputBox)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = this.a.getInputedPwd(-1);
    if (TextUtils.isEmpty(str))
    {
      CustomToast.v(this.b, R.string.N);
      return;
    }
    paramDialogInterface.dismiss();
    this.b.showProgressDialog(null, false, null);
    this.b.getBundleByComponentName(str);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.activity.c
 * JD-Core Version:    0.6.2
 */