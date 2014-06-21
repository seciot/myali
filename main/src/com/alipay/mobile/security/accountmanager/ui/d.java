package com.alipay.mobile.security.accountmanager.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.util.List;

final class d
  implements DialogInterface.OnClickListener
{
  d(c paramc, int paramInt)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AccountManagerActivity.v(this.b.a, this.a);
    this.b.a.showProgressDialog(this.b.a.getResources().getString(R.string.bl));
    String str1 = ((UserInfo)this.b.a.g.get(this.a)).getLogonId();
    String str2 = ((UserInfo)this.b.a.g.get(this.a)).getUserId();
    this.b.a.v(str1, str2);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.d
 * JD-Core Version:    0.6.2
 */