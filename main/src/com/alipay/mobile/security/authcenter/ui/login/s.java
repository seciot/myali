package com.alipay.mobile.security.authcenter.ui.login;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.support.v4.app.FragmentActivity;

final class s
  implements DialogInterface.OnClickListener
{
  s(BaseLoginFragment paramBaseLoginFragment)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.DIAL", Uri.parse("tel:95188"));
    localIntent.addFlags(268435456);
    this.a.getActivity().startActivity(localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.s
 * JD-Core Version:    0.6.2
 */