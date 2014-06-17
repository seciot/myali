package com.alipay.mobile.security.securitycommon.fragment;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.alipay.mobile.security.securitycommon.data.SelectAccountInfo;
import java.util.List;

class SelectAccountFragment$2
  implements AdapterView.OnItemClickListener
{
  SelectAccountFragment$2(SelectAccountFragment paramSelectAccountFragment)
  {
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SelectAccountInfo localSelectAccountInfo = (SelectAccountInfo)this.a.f.get(paramInt);
    this.a.a(paramInt, localSelectAccountInfo);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.security.securitycommon.fragment.SelectAccountFragment.2
 * JD-Core Version:    0.6.2
 */