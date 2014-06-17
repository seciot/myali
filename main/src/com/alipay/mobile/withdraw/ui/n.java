package com.alipay.mobile.withdraw.ui;

import android.app.AlertDialog;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.alipay.mobile.withdraw.bean.WithdrawArriveDate;

final class n
  implements AdapterView.OnItemClickListener
{
  n(WithdrawActivity paramWithdrawActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = WithdrawActivity.m(this.a).getCount();
    for (int j = 0; j < i; j++)
      if (j != paramLong)
        WithdrawActivity.m(this.a).a(j).a(false);
    WithdrawActivity.a(this.a, (WithdrawArriveDate)paramAdapterView.getItemAtPosition((int)paramLong));
    WithdrawActivity.n(this.a).a(true);
    WithdrawActivity.m(this.a).notifyDataSetChanged();
    this.a.e();
    WithdrawActivity.c(this.a).dismiss();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.n
 * JD-Core Version:    0.6.2
 */