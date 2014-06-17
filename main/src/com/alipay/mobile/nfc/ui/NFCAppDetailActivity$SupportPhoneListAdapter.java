package com.alipay.mobile.nfc.ui;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.alipay.mobile.nfc.R.id;
import com.alipay.mobile.nfc.R.layout;
import java.util.List;

class NFCAppDetailActivity$SupportPhoneListAdapter extends BaseAdapter
{
  private List<NFCAppDetailActivity.Phone> b;
  private LayoutInflater c;

  public NFCAppDetailActivity$SupportPhoneListAdapter(List<NFCAppDetailActivity.Phone> paramList)
  {
    Object localObject;
    this.b = localObject;
    this.c = LayoutInflater.from(paramList);
  }

  public int getCount()
  {
    return this.b.size();
  }

  public Object getItem(int paramInt)
  {
    return this.b.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    NFCAppDetailActivity.SupportPhoneListAdapter.ViewHolder localViewHolder;
    if (paramView == null)
    {
      localViewHolder = new NFCAppDetailActivity.SupportPhoneListAdapter.ViewHolder(this, (byte)0);
      paramView = this.c.inflate(R.layout.g, null);
      localViewHolder.a = ((TextView)paramView.findViewById(R.id.F));
      paramView.setTag(localViewHolder);
    }
    while (true)
    {
      NFCAppDetailActivity.Phone localPhone = (NFCAppDetailActivity.Phone)this.b.get(paramInt);
      localViewHolder.a.setText(localPhone.a + " " + localPhone.b);
      return paramView;
      localViewHolder = (NFCAppDetailActivity.SupportPhoneListAdapter.ViewHolder)paramView.getTag();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.NFCAppDetailActivity.SupportPhoneListAdapter
 * JD-Core Version:    0.6.2
 */