package com.alipay.android.setting.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.widget.EditText;
import com.alipay.android.app.R.string;
import com.alipay.android.setting.widgets.CustomToast;

final class e
  implements DialogInterface.OnClickListener
{
  e(BaseSettingActivity paramBaseSettingActivity, EditText paramEditText)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = this.a.getText().toString();
    if (TextUtils.isEmpty(str))
    {
      CustomToast.a(this.b, R.string.N);
      return;
    }
    paramDialogInterface.dismiss();
    this.b.showProgressDialog(null, false, null);
    this.b.c(str);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.activity.e
 * JD-Core Version:    0.6.2
 */