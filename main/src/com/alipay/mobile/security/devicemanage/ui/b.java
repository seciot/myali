package com.alipay.mobile.security.devicemanage.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobilesecurity.core.model.account.device.DeviceInfo;
import java.util.List;

final class b
  implements DialogInterface.OnClickListener
{
  b(a parama, int paramInt)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.b.b.showProgressDialog(this.b.b.getResources().getString(R.string.bl));
    DeviceManageActivity.v(this.b.b, this.a);
    this.b.b.v(((DeviceInfo)this.b.a.get(this.a)).tid, this.b.a);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.devicemanage.ui.b
 * JD-Core Version:    0.6.2
 */