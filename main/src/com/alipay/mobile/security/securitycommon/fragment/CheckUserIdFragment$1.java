package com.alipay.mobile.security.securitycommon.fragment;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.security.securitycommon.FormatValidationUtil;

class CheckUserIdFragment$1
  implements View.OnClickListener
{
  CheckUserIdFragment$1(CheckUserIdFragment paramCheckUserIdFragment)
  {
  }

  public void onClick(View paramView)
  {
    String str = CheckUserIdFragment.a(this.a).getText().trim();
    if (FormatValidationUtil.a(str))
    {
      this.a.a(str);
      return;
    }
    AlipayApplication.getInstance().getMicroApplicationContext().Toast(this.a.getText(R.string.cw), 0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.CheckUserIdFragment.1
 * JD-Core Version:    0.6.2
 */