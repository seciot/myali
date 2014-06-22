package com.alipay.mobile.alipassapp.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import com.alipay.mobile.alipassapp.ui.common.ai;
import java.util.concurrent.atomic.AtomicBoolean;

final class ao
  implements AdapterView.OnItemLongClickListener
{
  ao(AlipassListActivity paramAlipassListActivity)
  {
  }

  public final boolean onItemLongClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (!this.a.hasResource())
      return true;
    Object localObject = paramAdapterView.getItemAtPosition(paramInt);
    if ((localObject != null) && ((localObject instanceof BaseAlipassInfoItem.AlipassInfoItem)))
    {
      if (AlipassListActivity.dexopt(this.a).get())
        return true;
      BaseAlipassInfoItem.AlipassInfoItem localAlipassInfoItem = (BaseAlipassInfoItem.AlipassInfoItem)localObject;
      ai.v(this.a, new ap(this, localAlipassInfoItem));
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.ao
 * JD-Core Version:    0.6.2
 */