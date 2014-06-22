package com.alipay.mobile.withdraw.ui;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;
import com.alipay.android.phone.wealth.withdraw.R.drawable;
import com.alipay.android.phone.wealth.withdraw.R.id;
import com.alipay.android.phone.wealth.withdraw.R.layout;
import com.alipay.mobile.common.misc.ExtViewUtil;
import com.alipay.mobile.withdraw.bean.WithdrawBankInfo;
import java.util.ArrayList;

public class BankCardListAdapter extends BaseAdapter
{
  private Context a;
  private ArrayList<WithdrawBankInfo> b;
  private int c;

  public BankCardListAdapter(Context paramContext, ArrayList<WithdrawBankInfo> paramArrayList)
  {
    this.a = paramContext;
    this.b = paramArrayList;
    this.c = R.layout.BundlesManagerImpl;
  }

  public final WithdrawBankInfo a(int paramInt)
  {
    return (WithdrawBankInfo)this.b.get(paramInt);
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
    BankCardListAdapter.ViewHolder localViewHolder;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(this.a).inflate(this.c, null);
      localViewHolder = new BankCardListAdapter.ViewHolder();
      localViewHolder.a = ((ImageView)paramView.findViewById(R.id.j));
      localViewHolder.b = ((TextView)paramView.findViewById(R.id.Bundleable));
      localViewHolder.c = ((TextView)paramView.findViewById(R.id.i));
      localViewHolder.d = ((RadioButton)paramView.findViewById(R.id.k));
      localViewHolder.d.setClickable(false);
      paramView.setBackgroundResource(R.drawable.AppBundle);
      paramView.setTag(localViewHolder);
    }
    while (true)
    {
      WithdrawBankInfo localWithdrawBankInfo = a(paramInt);
      localViewHolder.b.setText(localWithdrawBankInfo.b());
      localViewHolder.c.setText("尾号" + localWithdrawBankInfo.i() + " " + localWithdrawBankInfo.g());
      localViewHolder.d.setChecked(localWithdrawBankInfo.h());
      String str = localWithdrawBankInfo.c();
      Bitmap localBitmap = ExtViewUtil.getLocalImage((Activity)this.a, "", "BANK_" + str);
      localViewHolder.a.setImageBitmap(localBitmap);
      return paramView;
      localViewHolder = (BankCardListAdapter.ViewHolder)paramView.getTag();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.withdraw.ui.BankCardListAdapter
 * JD-Core Version:    0.6.2
 */