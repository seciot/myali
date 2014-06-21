package com.alipay.mobile.security.accountmanager.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.util.List;

final class dk
  implements AdapterView.OnItemClickListener
{
  dk(SelectAccountActivity paramSelectAccountActivity, UserInfo paramUserInfo)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    UserInfo localUserInfo = (UserInfo)this.b.e.get(paramInt);
    if ((this.a != null) && (localUserInfo.getLogonId().equals(this.a.getLogonId())))
      return;
    this.b.showProgressDialog("");
    if ((localUserInfo != null) && (localUserInfo.isAutoLogin()))
    {
      this.b.getBundle(localUserInfo);
      return;
    }
    SelectAccountActivity.a(this.b, localUserInfo.getLogonId());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.dk
 * JD-Core Version:    0.6.2
 */