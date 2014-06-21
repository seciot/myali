package com.alipay.android.app.widget;

import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class j
  implements AdapterView.OnItemClickListener
{
  j(CustomAlertDialog paramCustomAlertDialog)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    CustomAlertDialog.c(this.a).onClick(CustomAlertDialog.getBundle(this.a), paramInt);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.j
 * JD-Core Version:    0.6.2
 */