package com.alipay.mobile.withdraw.ui;

import android.app.AlertDialog;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.alipay.mobile.withdraw.bean.WithdrawBankInfo;

final class m
  implements AdapterView.OnItemClickListener
{
  m(WithdrawActivity paramWithdrawActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = WithdrawActivity.j(this.a).getCount();
    for (int j = 0; j < i; j++)
      if (j != paramLong)
        WithdrawActivity.j(this.a).getBundle(j).getBundle(false);
    WithdrawActivity.v(this.a, (WithdrawBankInfo)paramAdapterView.getItemAtPosition((int)paramLong));
    WithdrawActivity.k(this.a).getBundle(true);
    this.a.getInitLevel();
    WithdrawActivity.j(this.a).notifyDataSetChanged();
    WithdrawActivity.l(this.a);
    WithdrawActivity.getBundle(this.a).dismiss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.m
 * JD-Core Version:    0.6.2
 */