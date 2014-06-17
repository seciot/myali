package com.alipay.mobile.common.ui;

import com.alipay.mobile.common.ui.cityselect.view.CityBladeView.OnCityBladeViewItemClickListener;
import com.alipay.mobile.common.ui.cityselect.view.CityPinnedHeaderListView;
import java.util.Map;

class SelectCityActivity$3
  implements CityBladeView.OnCityBladeViewItemClickListener
{
  SelectCityActivity$3(SelectCityActivity paramSelectCityActivity)
  {
  }

  public void onItemClick(String paramString)
  {
    if (SelectCityActivity.access$000(this.this$0).get(paramString) != null)
      this.this$0.mListView.setSelection(((Integer)SelectCityActivity.access$000(this.this$0).get(paramString)).intValue());
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.SelectCityActivity.3
 * JD-Core Version:    0.6.2
 */