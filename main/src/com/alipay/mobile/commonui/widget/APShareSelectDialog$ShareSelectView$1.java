package com.alipay.mobile.commonui.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.ArrayList;

class APShareSelectDialog$ShareSelectView$1
  implements AdapterView.OnItemClickListener
{
  APShareSelectDialog$ShareSelectView$1(APShareSelectDialog.ShareSelectView paramShareSelectView)
  {
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (APShareSelectDialog.ShareSelectView.access$100(this.this$0) == null);
    while ((paramInt < 0) || (paramInt >= APShareSelectDialog.ShareSelectView.access$100(this.this$0).size()) || (APShareSelectDialog.ShareSelectView.access$200(this.this$0) == null))
      return;
    APShareSelectDialog.ShareSelectView.access$200(this.this$0).onSelect(((Integer)APShareSelectDialog.ShareSelectView.access$100(this.this$0).get(paramInt)).intValue());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.commonui.widget.APShareSelectDialog.ShareSelectView.1
 * JD-Core Version:    0.6.2
 */