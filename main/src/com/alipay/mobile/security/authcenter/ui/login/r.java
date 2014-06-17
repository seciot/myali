package com.alipay.mobile.security.authcenter.ui.login;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.alipay.mobile.clientsecurity.R.id;

final class r
  implements DialogInterface.OnClickListener
{
  r(BaseLoginFragment paramBaseLoginFragment)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    MobileInputFragment_ localMobileInputFragment_ = new MobileInputFragment_();
    localMobileInputFragment_.a(BaseLoginFragment.d(this.a));
    this.a.getActivity().getSupportFragmentManager().beginTransaction().setTransition(4097).add(R.id.bR, localMobileInputFragment_).addToBackStack(null).commitAllowingStateLoss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.login.r
 * JD-Core Version:    0.6.2
 */