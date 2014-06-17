package com.alipay.mobile.common.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.alipay.mobile.common.ui.cityselect.model.CityVO;
import java.util.List;

class SelectCityActivity$5
  implements AdapterView.OnItemClickListener
{
  SelectCityActivity$5(SelectCityActivity paramSelectCityActivity)
  {
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SelectCityActivity.access$100(this.this$0, ((CityVO)this.this$0.mTempCityList.get(paramInt)).province, ((CityVO)this.this$0.mTempCityList.get(paramInt)).city);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.SelectCityActivity.5
 * JD-Core Version:    0.6.2
 */