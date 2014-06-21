package com.alipay.android.setting.activity;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.util.SparseArray;
import android.widget.ArrayAdapter;
import com.alipay.mobile.commonui.widget.APRadioTableView;

final class j
  implements DialogInterface.OnClickListener
{
  j(PaymentChannelActivity paramPaymentChannelActivity, ArrayAdapter paramArrayAdapter)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PaymentChannelActivity.v(this.b, paramInt);
    PaymentChannelActivity.v(this.b, (String)PaymentChannelActivity.getBundle(this.b).get(paramInt));
    PaymentChannelActivity.b(this.b).setLeftText(((CharSequence)this.a.getItem(paramInt)).toString());
    paramDialogInterface.dismiss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.setting.activity.j
 * JD-Core Version:    0.6.2
 */