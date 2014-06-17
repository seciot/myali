package com.alipay.mobile.security.securitycommon.data;

import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.common.helper.HideUtils;
import com.alipay.mobile.common.utils.StringUtils;
import com.androidquery.AQuery;
import java.util.ArrayList;
import java.util.List;

public class PwdSelectAccountListAdapter extends BaseAdapter
{
  List<SelectAccountInfo> a = new ArrayList();
  private LayoutInflater b;

  public PwdSelectAccountListAdapter(FragmentActivity paramFragmentActivity)
  {
    this.b = LayoutInflater.from(paramFragmentActivity);
  }

  public final void a(List<SelectAccountInfo> paramList)
  {
    new StringBuilder("accountList").append(paramList.size()).toString();
    this.a.clear();
    this.a.addAll(paramList);
    notifyDataSetChanged();
  }

  public int getCount()
  {
    if (this.a != null)
      return this.a.size();
    return 0;
  }

  public Object getItem(int paramInt)
  {
    return null;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ViewHolder localViewHolder1;
    if (paramView == null)
    {
      RelativeLayout localRelativeLayout = (RelativeLayout)this.b.inflate(R.layout.aW, null);
      ViewHolder localViewHolder2 = new ViewHolder();
      localViewHolder2.a = ((ImageView)localRelativeLayout.findViewById(R.id.fX));
      localViewHolder2.b = ((TextView)localRelativeLayout.findViewById(R.id.fY));
      localViewHolder2.c = ((ImageView)localRelativeLayout.findViewById(R.id.fz));
      localRelativeLayout.setTag(localViewHolder2);
      localViewHolder1 = localViewHolder2;
      paramView = localRelativeLayout;
      if (getCount() != 1)
        break label229;
      paramView.setBackgroundResource(com.alipay.mobile.ui.R.drawable.table_normal_selector);
    }
    while (true)
    {
      SelectAccountInfo localSelectAccountInfo = (SelectAccountInfo)this.a.get(paramInt);
      AQuery localAQuery = new AQuery(paramView);
      String str = localSelectAccountInfo.b();
      localViewHolder1.a.setImageResource(com.alipay.mobile.clientsecurity.R.drawable.x);
      if (!StringUtils.isEmpty(str))
        ((AQuery)((AQuery)localAQuery.id(R.id.fX)).visibility(0)).image(str, true, true, 0, com.alipay.mobile.clientsecurity.R.drawable.x);
      localViewHolder1.b.setVisibility(0);
      localViewHolder1.b.setText(HideUtils.hide(localSelectAccountInfo.a(), "hideaccount"));
      return paramView;
      localViewHolder1 = (ViewHolder)paramView.getTag();
      break;
      label229: if (getCount() == 2)
      {
        if (paramInt == 0)
          paramView.setBackgroundResource(com.alipay.mobile.ui.R.drawable.table_top_selector);
        else
          paramView.setBackgroundResource(com.alipay.mobile.ui.R.drawable.table_bottom_selector);
      }
      else if (getCount() > 2)
        if (paramInt == 0)
          paramView.setBackgroundResource(com.alipay.mobile.ui.R.drawable.table_top_selector);
        else if (paramInt == -1 + getCount())
          paramView.setBackgroundResource(com.alipay.mobile.ui.R.drawable.table_bottom_selector);
        else
          paramView.setBackgroundResource(com.alipay.mobile.ui.R.drawable.table_center_selector);
    }
  }

  public final class ViewHolder
  {
    public ImageView a;
    public TextView b;
    public ImageView c;

    public ViewHolder()
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.data.PwdSelectAccountListAdapter
 * JD-Core Version:    0.6.2
 */