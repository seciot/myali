package com.alipay.mobile.withdraw.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.RadioButton;
import android.widget.TextView;
import com.alipay.android.phone.wealth.withdraw.R.drawable;
import com.alipay.android.phone.wealth.withdraw.R.id;
import com.alipay.android.phone.wealth.withdraw.R.layout;
import com.alipay.mobile.withdraw.bean.WithdrawArriveDate;
import java.util.List;

public class ArriveDateListAdapter extends BaseAdapter
{
  private Context a;
  private List<WithdrawArriveDate> b;
  private int c;

  public ArriveDateListAdapter(Context paramContext, List<WithdrawArriveDate> paramList)
  {
    this.a = paramContext;
    this.b = paramList;
    this.c = R.layout.AppBundle;
  }

  public final WithdrawArriveDate a(int paramInt)
  {
    return (WithdrawArriveDate)this.b.get(paramInt);
  }

  public int getCount()
  {
    return this.b.size();
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ArriveDateListAdapter.ViewHolder localViewHolder2;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.a).inflate(this.c, null);
      localViewHolder2 = new ArriveDateListAdapter.ViewHolder();
      localViewHolder2.a = ((TextView)paramView.findViewById(R.id.Dependable));
      localViewHolder2.b = ((RadioButton)paramView.findViewById(R.id.k));
      localViewHolder2.b.setClickable(false);
      paramView.setBackgroundResource(R.drawable.AppBundle);
      paramView.setTag(localViewHolder2);
    }
    for (ArriveDateListAdapter.ViewHolder localViewHolder1 = localViewHolder2; ; localViewHolder1 = (ArriveDateListAdapter.ViewHolder)paramView.getTag())
    {
      WithdrawArriveDate localWithdrawArriveDate = a(paramInt);
      localViewHolder1.a.setText(localWithdrawArriveDate.a());
      localViewHolder1.b.setChecked(localWithdrawArriveDate.c());
      return paramView;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.ArriveDateListAdapter
 * JD-Core Version:    0.6.2
 */