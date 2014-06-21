package com.alipay.android.mini.uielement;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.alipay.android.mini.event.ActionType;
import java.util.List;

final class ac
  implements AdapterView.OnItemClickListener
{
  ac(UISelectButton paramUISelectButton)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    UISelectButton.a(this.a, (String)UISelectButton.b(this.a).get(paramInt));
    this.a.a(this.a, ActionType.getBundle(this.a.getAllComponentNames()));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.uielement.ac
 * JD-Core Version:    0.6.2
 */