package com.alipay.mobile.security.accountmanager.b;

import android.content.Context;
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
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.androidquery.AQuery;
import java.util.List;

public final class a extends BaseAdapter
{
  String a = "AccountManagerListAdapter";
  List<UserInfo> b;
  private LayoutInflater c;
  private String d;

  public a(Context paramContext, List<UserInfo> paramList, String paramString)
  {
    this.c = LayoutInflater.from(paramContext);
    this.b = paramList;
    this.d = paramString;
  }

  public final void a(List<UserInfo> paramList)
  {
    this.b = paramList;
    String str = ((UserInfo)this.b.get(0)).getUserAvatar();
    new StringBuilder("修改集合之后取头像").append(str).toString();
    notifyDataSetChanged();
  }

  public final int getCount()
  {
    if (this.b != null)
      return this.b.size();
    return 0;
  }

  public final Object getItem(int paramInt)
  {
    return null;
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    a locala1;
    if (paramView == null)
    {
      RelativeLayout localRelativeLayout = (RelativeLayout)this.c.inflate(R.layout.aq, null);
      a locala2 = new a();
      locala2.a = ((ImageView)localRelativeLayout.findViewById(R.id.fX));
      locala2.b = ((TextView)localRelativeLayout.findViewById(R.id.fY));
      locala2.c = ((ImageView)localRelativeLayout.findViewById(R.id.fz));
      localRelativeLayout.setTag(locala2);
      locala1 = locala2;
      paramView = localRelativeLayout;
      if (getCount() != 1)
        break label293;
      paramView.setBackgroundResource(com.alipay.mobile.clientsecurity.R.drawable.v);
    }
    while (true)
    {
      UserInfo localUserInfo = (UserInfo)this.b.get(paramInt);
      AQuery localAQuery1 = new AQuery(paramView);
      String str = localUserInfo.getUserAvatar();
      new StringBuilder("头像地址").append(str).toString();
      AQuery localAQuery2 = (AQuery)((AQuery)localAQuery1.id(R.id.fX)).visibility(0);
      if (str == null)
        str = "";
      localAQuery2.image(str, true, true, 0, com.alipay.mobile.clientsecurity.R.drawable.x);
      locala1.b.setVisibility(0);
      locala1.b.setText(HideUtils.hide(localUserInfo.getLogonId(), "hideaccount"));
      if ((this.d == null) || (!this.d.equalsIgnoreCase(((UserInfo)this.b.get(paramInt)).getUserId())))
        break label377;
      locala1.c.setVisibility(0);
      return paramView;
      locala1 = (a)paramView.getTag();
      break;
      label293: if (getCount() == 2)
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
          paramView.setBackgroundResource(com.alipay.mobile.clientsecurity.R.drawable.u);
    }
    label377: locala1.c.setVisibility(8);
    return paramView;
  }

  public final class a
  {
    public ImageView a;
    public TextView b;
    public ImageView c;

    public a()
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.accountmanager.b.a
 * JD-Core Version:    0.6.2
 */