package com.alipay.mobile.alipassapp.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class el
  implements AdapterView.OnItemClickListener
{
  el(MemberCardObtainableListActivity paramMemberCardObtainableListActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Object localObject = paramAdapterView.getItemAtPosition(paramInt);
    if ((localObject != null) && ((localObject instanceof BaseAlipassInfoItem.MemberCardObtainableInfoItem)))
    {
      String str1 = ((BaseAlipassInfoItem.MemberCardObtainableInfoItem)localObject).getPartnerId();
      String str2 = ((BaseAlipassInfoItem.MemberCardObtainableInfoItem)localObject).getCardType();
      String str3 = ((BaseAlipassInfoItem.MemberCardObtainableInfoItem)localObject).getTid();
      this.a.a(str1, str2, str3);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.el
 * JD-Core Version:    0.6.2
 */