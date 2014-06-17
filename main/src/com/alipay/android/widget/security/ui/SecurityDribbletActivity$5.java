package com.alipay.android.widget.security.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.res.Resources;
import android.view.View;
import android.view.WindowManager.BadTokenException;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APAbsTableView.OnSwitchListener;
import com.alipay.mobile.commonui.widget.APTextView;

class SecurityDribbletActivity$5
  implements APAbsTableView.OnSwitchListener
{
  SecurityDribbletActivity$5(SecurityDribbletActivity paramSecurityDribbletActivity)
  {
  }

  public void onSwitchListener(boolean paramBoolean, View paramView)
  {
    if (!paramBoolean)
    {
      this.a.b.setText(R.string.bs);
      this.a.c = new AlertDialog.Builder(this.a).setMessage(this.a.getResources().getString(R.string.br)).setPositiveButton(this.a.getResources().getString(R.string.bi), new SecurityDribbletActivity.5.1(this));
      this.a.c.setNegativeButton(this.a.getResources().getString(R.string.aI), new SecurityDribbletActivity.5.2(this));
      this.a.c.setOnKeyListener(new SecurityDribbletActivity.5.3(this));
      AlertDialog localAlertDialog = this.a.c.create();
      localAlertDialog.setCanceledOnTouchOutside(false);
      try
      {
        localAlertDialog.show();
        return;
      }
      catch (WindowManager.BadTokenException localBadTokenException)
      {
        new StringBuilder("{[info=switchListener], [msg=").append(localBadTokenException.getMessage()).append("]}").toString();
        return;
      }
    }
    this.a.showProgressDialog(null, true, this.a.l);
    this.a.e();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.SecurityDribbletActivity.5
 * JD-Core Version:    0.6.2
 */