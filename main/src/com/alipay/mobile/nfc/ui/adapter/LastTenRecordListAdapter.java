package com.alipay.mobile.nfc.ui.adapter;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.alipay.mobile.commonui.widget.APMultiTextTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.nfc.R.color;
import com.alipay.mobile.nfc.R.id;
import com.alipay.mobile.nfc.R.layout;
import com.alipay.nfc.model.CardInfo;
import com.alipay.nfc.model.CardTypeEnum;
import com.alipay.nfc.model.LogInfo;
import java.util.ArrayList;
import java.util.List;

public class LastTenRecordListAdapter extends BaseAdapter
{
  private CardInfo a;
  private List<LogInfo> b = new ArrayList();
  private LayoutInflater c;
  private Context d;

  public LastTenRecordListAdapter(Context paramContext)
  {
    this.c = LayoutInflater.from(paramContext);
    this.d = paramContext;
  }

  public final void a(CardInfo paramCardInfo)
  {
    this.a = paramCardInfo;
  }

  public final void a(List<LogInfo> paramList)
  {
    this.b = paramList;
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
    LastTenRecordListAdapter.ViewHolder localViewHolder2;
    APMultiTextTableView localAPMultiTextTableView;
    LogInfo localLogInfo;
    label96: label119: ColorStateList localColorStateList;
    if (paramView == null)
    {
      LastTenRecordListAdapter.ViewHolder localViewHolder1 = new LastTenRecordListAdapter.ViewHolder(this, (byte)0);
      paramView = this.c.inflate(R.layout.f, null);
      localViewHolder1.a = ((APMultiTextTableView)paramView.findViewById(R.id.j));
      paramView.setTag(localViewHolder1);
      localViewHolder2 = localViewHolder1;
      localAPMultiTextTableView = localViewHolder2.a;
      localLogInfo = (LogInfo)getItem(paramInt);
      if (!TextUtils.isEmpty(localLogInfo.d()))
        break label191;
      localAPMultiTextTableView.getLeftTextView().setVisibility(8);
      if (this.a.f() != CardTypeEnum.TransferCard)
        break label204;
      localAPMultiTextTableView.getmLeftTextView2().setVisibility(8);
      localAPMultiTextTableView.setLeftText3(localLogInfo.a());
      localAPMultiTextTableView.setRightText(localLogInfo.b());
      if (!localLogInfo.b().startsWith("+"))
        break label241;
      localColorStateList = this.d.getResources().getColorStateList(R.color.b);
    }
    while (true)
    {
      localAPMultiTextTableView.getRightTextView().setTextColor(localColorStateList);
      return paramView;
      localViewHolder2 = (LastTenRecordListAdapter.ViewHolder)paramView.getTag();
      break;
      label191: localAPMultiTextTableView.setLeftText(localLogInfo.d());
      break label96;
      label204: if (TextUtils.isEmpty(localLogInfo.c()))
      {
        localAPMultiTextTableView.getmLeftTextView2().setVisibility(8);
        break label119;
      }
      localAPMultiTextTableView.setLeftText2(localLogInfo.c());
      break label119;
      label241: if (localLogInfo.b().startsWith("-"))
        localColorStateList = this.d.getResources().getColorStateList(R.color.c);
      else
        localColorStateList = this.d.getResources().getColorStateList(R.color.a);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.nfc.ui.adapter.LastTenRecordListAdapter
 * JD-Core Version:    0.6.2
 */