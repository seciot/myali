package com.alipay.mobile.security.authcenter.ui;

import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.framework.app.ui.BaseFragmentActivity;

final class ad
  implements View.OnClickListener
{
  ad(RegisterDownSmsFragment paramRegisterDownSmsFragment)
  {
  }

  public final void onClick(View paramView)
  {
    if (RegisterDownSmsFragment.v(this.a, this.a.d.getInputedText()))
      ((BaseFragmentActivity)this.a.getActivity()).alert(this.a.getResources().getString(R.string.K), this.a.getResources().getString(R.string.P) + this.a.d.getEtContent().getText().toString(), this.a.getResources().getString(R.string.N), new ae(this), this.a.getResources().getString(R.string.Z), null);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.authcenter.ui.ad
 * JD-Core Version:    0.6.2
 */