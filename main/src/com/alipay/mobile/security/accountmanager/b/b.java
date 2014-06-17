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
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.framework.service.ext.security.bean.UserInfo;
import com.androidquery.AQuery;
import java.util.List;

public final class b extends BaseAdapter
{
  public int a = 0;
  List<UserInfo> b;
  private LayoutInflater c;
  private String d = "";

  public b(Context paramContext, List<UserInfo> paramList)
  {
    this.c = LayoutInflater.from(paramContext);
    this.b = paramList;
  }

  public final void a(String paramString)
  {
    if (paramString != null)
      this.d = paramString;
  }

  public final int getCount()
  {
    return this.b.size();
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
    int i;
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
      i = this.b.size();
      if (i != 1)
        break label299;
      paramView.setBackgroundResource(com.alipay.mobile.ui.R.drawable.table_normal_selector);
    }
    while (true)
    {
      UserInfo localUserInfo = (UserInfo)this.b.get(paramInt);
      AQuery localAQuery = new AQuery(paramView);
      String str1 = localUserInfo.getUserAvatar();
      locala1.a.setImageResource(com.alipay.mobile.clientsecurity.R.drawable.x);
      if (!StringUtils.isEmpty(str1))
        ((AQuery)((AQuery)localAQuery.id(R.id.fX)).visibility(0)).image(str1, true, true, 0, com.alipay.mobile.clientsecurity.R.drawable.x);
      locala1.b.setVisibility(0);
      locala1.b.setText(HideUtils.hide(localUserInfo.getLogonId(), "hideaccount"));
      String str2 = "";
      if (this.b.get(paramInt) != null)
        str2 = ((UserInfo)this.b.get(paramInt)).getLogonId();
      if ((str2 == null) || (!this.d.equalsIgnoreCase(str2)))
        break label379;
      locala1.c.setVisibility(0);
      return paramView;
      locala1 = (a)paramView.getTag();
      break;
      label299: if (i == 2)
      {
        if (paramInt == 0)
          paramView.setBackgroundResource(com.alipay.mobile.ui.R.drawable.table_top_selector);
        else
          paramView.setBackgroundResource(com.alipay.mobile.ui.R.drawable.table_bottom_selector);
      }
      else if (i > 2)
        if (paramInt == 0)
          paramView.setBackgroundResource(com.alipay.mobile.ui.R.drawable.table_top_selector);
        else if (paramInt == -1 + getCount())
          paramView.setBackgroundResource(com.alipay.mobile.ui.R.drawable.table_bottom_selector);
        else
          paramView.setBackgroundResource(com.alipay.mobile.ui.R.drawable.table_center_selector);
    }
    label379: locala1.c.setVisibility(8);
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
 * Qualified Name:     com.alipay.mobile.security.accountmanager.b.b
 * JD-Core Version:    0.6.2
 */