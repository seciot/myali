package com.alipay.mobile.security.devicemanage.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.res.Resources;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import com.alipay.mobile.clientsecurity.R.string;
import com.alipay.mobile.security.tid.TidGetter;
import com.alipay.mobilesecurity.core.model.Tid;
import com.alipay.mobilesecurity.core.model.account.device.DeviceInfo;
import java.util.List;

final class a
  implements AdapterView.OnItemLongClickListener
{
  a(DeviceManageActivity paramDeviceManageActivity, List paramList)
  {
  }

  public final boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = paramInt - 1;
    String str;
    DeviceInfo localDeviceInfo;
    if (DeviceManageActivity.getBundle(this.b).getClientTid() == null)
    {
      str = "";
      localDeviceInfo = (DeviceInfo)DeviceManageActivity.b(this.b).getItem(i);
      if (localDeviceInfo != null)
        break label87;
    }
    label87: 
    while (str.equals(localDeviceInfo.tid))
    {
      return false;
      if (DeviceManageActivity.getBundle(this.b).getClientTid().tid == null)
      {
        str = "";
        break;
      }
      str = DeviceManageActivity.getBundle(this.b).getClientTid().tid;
      break;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.b);
    localBuilder.setTitle(this.b.getResources().getString(R.string.bn));
    localBuilder.setPositiveButton(this.b.getResources().getString(R.string.af), new b(this, i));
    localBuilder.setNegativeButton(this.b.getResources().getString(R.string.Z), null);
    localBuilder.create().show();
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.devicemanage.ui.a
 * JD-Core Version:    0.6.2
 */