package com.alipay.mobile.security.accountmanager.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.common.helper.HideUtils;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import java.util.List;

final class c
  implements AdapterView.OnItemLongClickListener
{
  c(AccountManagerActivity paramAccountManagerActivity)
  {
  }

  public final boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt >= this.a.g.size())
    {
      new StringBuilder("long click position: ").append(paramInt).append(" size: ").append(this.a.g.size()).toString();
      return true;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
    localBuilder.setTitle(HideUtils.hide(((UserInfo)this.a.g.get(paramInt)).getLogonId(), "hideaccount"));
    localBuilder.setPositiveButton(R.string.cr, new d(this, paramInt));
    localBuilder.create().show();
    return true;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.ui.c
 * JD-Core Version:    0.6.2
 */