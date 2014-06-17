package com.alipay.mobile.lib.ui.mpmenu;

import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.mobile.publicsvc.common.R.id;

class PopMenu$1
  implements View.OnClickListener
{
  PopMenu$1(PopMenu paramPopMenu)
  {
  }

  public void onClick(View paramView)
  {
    if ((paramView.getTag(R.id.position_tag) instanceof Integer))
    {
      int i = ((Integer)paramView.getTag(R.id.position_tag)).intValue();
      PopMenu.access$100(this.this$0).onMenuClicked(PopMenu.access$000(this.this$0)[i].mItemId);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.lib.ui.mpmenu.PopMenu.1
 * JD-Core Version:    0.6.2
 */