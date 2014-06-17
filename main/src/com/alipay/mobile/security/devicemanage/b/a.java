package com.alipay.mobile.security.devicemanage.b;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.clientsecurity.R.layout;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.security.tid.TidGetter;
import com.alipay.mobilesecurity.core.model.Tid;
import java.util.Iterator;
import java.util.List;

public final class a extends BaseAdapter
{
  String a = "DeviceManagerListAdapter";
  List<com.alipay.mobilesecurity.core.model.account.device.DeviceInfo> b;
  private LayoutInflater c;
  private String d = "";
  private TidGetter e = new TidGetter(AlipayApplication.getInstance().getMicroApplicationContext());

  public a(Context paramContext, List<com.alipay.mobilesecurity.core.model.account.device.DeviceInfo> paramList)
  {
    this.c = LayoutInflater.from(paramContext);
    this.b = paramList;
    String str;
    if (this.e.getClientTid() == null)
      str = "";
    while (true)
    {
      this.d = str;
      a();
      return;
      if (this.e.getClientTid().tid == null)
        str = "";
      else
        str = this.e.getClientTid().tid;
    }
  }

  private void a()
  {
    if (this.b == null)
      return;
    Iterator localIterator = this.b.iterator();
    com.alipay.mobilesecurity.core.model.account.device.DeviceInfo localDeviceInfo;
    do
    {
      if (!localIterator.hasNext())
        break;
      localDeviceInfo = (com.alipay.mobilesecurity.core.model.account.device.DeviceInfo)localIterator.next();
    }
    while ((this.d == null) || (!this.d.equals(localDeviceInfo.tid)));
    while (true)
    {
      if (localDeviceInfo != null)
        this.b.remove(localDeviceInfo);
      while (true)
      {
        String str = com.alipay.mobile.common.info.DeviceInfo.getInstance().getmMobileModel();
        if (TextUtils.isEmpty(str))
          str = com.alipay.mobile.common.info.DeviceInfo.getInstance().getmMobileModel();
        localDeviceInfo.deviceName = str;
        localDeviceInfo.tid = this.d;
        this.b.add(0, localDeviceInfo);
        return;
        localDeviceInfo = new com.alipay.mobilesecurity.core.model.account.device.DeviceInfo();
      }
      localDeviceInfo = null;
    }
  }

  public final void a(List<com.alipay.mobilesecurity.core.model.account.device.DeviceInfo> paramList)
  {
    this.b = paramList;
    String str;
    if (this.e.getClientTid() == null)
      str = "";
    while (true)
    {
      this.d = str;
      a();
      notifyDataSetChanged();
      return;
      if (this.e.getClientTid().tid == null)
        str = "";
      else
        str = this.e.getClientTid().tid;
    }
  }

  public final int getCount()
  {
    if (this.b != null)
      return this.b.size();
    return 0;
  }

  public final Object getItem(int paramInt)
  {
    if ((this.b == null) || (paramInt >= this.b.size()) || (paramInt < 0))
      return null;
    return this.b.get(paramInt);
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
      APRelativeLayout localAPRelativeLayout = (APRelativeLayout)this.c.inflate(R.layout.aG, null);
      a locala2 = new a();
      locala2.a = ((APTextView)localAPRelativeLayout.findViewById(R.id.fW));
      locala2.c = ((APTextView)localAPRelativeLayout.findViewById(R.id.fZ));
      locala2.d = ((APImageView)localAPRelativeLayout.findViewById(R.id.fz));
      locala2.b = ((APTextView)localAPRelativeLayout.findViewById(R.id.fV));
      localAPRelativeLayout.setTag(locala2);
      locala1 = locala2;
      paramView = localAPRelativeLayout;
      if (getCount() != 1)
        break label162;
      paramView.setBackgroundResource(com.alipay.mobile.clientsecurity.R.drawable.v);
    }
    com.alipay.mobilesecurity.core.model.account.device.DeviceInfo localDeviceInfo;
    while (true)
    {
      localDeviceInfo = (com.alipay.mobilesecurity.core.model.account.device.DeviceInfo)this.b.get(paramInt);
      if (localDeviceInfo != null)
        break label246;
      return null;
      locala1 = (a)paramView.getTag();
      break;
      label162: if (getCount() == 2)
      {
        if (paramInt == 0)
          paramView.setBackgroundResource(com.alipay.mobile.clientsecurity.R.drawable.w);
        else
          paramView.setBackgroundResource(com.alipay.mobile.ui.R.drawable.table_bottom_selector);
      }
      else if (getCount() > 2)
        if (paramInt == 0)
          paramView.setBackgroundResource(com.alipay.mobile.clientsecurity.R.drawable.w);
        else if (paramInt == -1 + getCount())
          paramView.setBackgroundResource(com.alipay.mobile.ui.R.drawable.table_bottom_selector);
        else
          paramView.setBackgroundResource(com.alipay.mobile.clientsecurity.R.drawable.u);
    }
    label246: if ((paramInt == 0) && (this.d.equals(localDeviceInfo.tid)))
    {
      locala1.d.setVisibility(0);
      locala1.c.setVisibility(8);
      locala1.a.setVisibility(8);
      locala1.b.setVisibility(0);
      locala1.b.setText(paramView.getResources().getString(R.string.bm) + "  " + localDeviceInfo.deviceName);
      return paramView;
    }
    locala1.d.setVisibility(8);
    locala1.c.setVisibility(0);
    locala1.a.setVisibility(0);
    locala1.b.setVisibility(8);
    locala1.c.setText(paramView.getResources().getString(R.string.bo) + " " + localDeviceInfo.useTime);
    locala1.a.setText(localDeviceInfo.deviceName);
    return paramView;
  }

  public final class a
  {
    public APTextView a;
    public APTextView b;
    public APTextView c;
    public APImageView d;

    public a()
    {
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.devicemanage.b.a
 * JD-Core Version:    0.6.2
 */