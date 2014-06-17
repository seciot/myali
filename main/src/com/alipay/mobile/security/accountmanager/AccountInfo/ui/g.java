package com.alipay.mobile.security.accountmanager.AccountInfo.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;

final class g
  implements View.OnClickListener
{
  g(AccountInfoActivity paramAccountInfoActivity, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.b, SecurityAvatarViewActivity_.class);
    localIntent.putExtra("imageUrl", this.a);
    AccountInfoActivity.t(this.b).getMicroApplicationContext().startActivity(AccountInfoActivity.s(this.b), localIntent);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.AccountInfo.ui.g
 * JD-Core Version:    0.6.2
 */