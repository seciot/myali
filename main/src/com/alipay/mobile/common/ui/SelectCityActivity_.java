package com.alipay.mobile.common.ui;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.common.ui.cityselect.view.CityBladeView;
import com.alipay.mobile.common.ui.cityselect.view.CityPinnedHeaderListView;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APImageButton;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.googlecode.androidannotations.api.BackgroundExecutor;

public final class SelectCityActivity_ extends SelectCityActivity
{
  private Handler a = new Handler();

  private void a()
  {
    this.mLetter = ((CityBladeView)findViewById(R.id.friends_myletterlistview));
    this.mEditeClearButton = ((APImageButton)findViewById(R.id.clearButton));
    this.mSearchNoResult = ((APTextView)findViewById(R.id.lifepay_searchNoResult));
    this.mSearchBox = ((APEditText)findViewById(R.id.searchEditText));
    this.mListView = ((CityPinnedHeaderListView)findViewById(R.id.friends_display));
    this.mSearchBar = ((APRelativeLayout)findViewById(R.id.search_bar_inputbox_layout_target));
    this.mLocationLayout = ((APLinearLayout)findViewById(R.id.locationLayout));
    this.mTitleBar = ((APTitleBar)findViewById(R.id.titleBar));
    init();
  }

  public static SelectCityActivity_.IntentBuilder_ intent(Context paramContext)
  {
    return new SelectCityActivity_.IntentBuilder_(paramContext);
  }

  public final void initView()
  {
    this.a.post(new SelectCityActivity_.1(this));
  }

  public final void loadCitys()
  {
    BackgroundExecutor.execute(new SelectCityActivity_.2(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.lifepay_citylist);
  }

  public final void setContentView(int paramInt)
  {
    super.setContentView(paramInt);
    a();
  }

  public final void setContentView(View paramView)
  {
    super.setContentView(paramView);
    a();
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    super.setContentView(paramView, paramLayoutParams);
    a();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.SelectCityActivity_
 * JD-Core Version:    0.6.2
 */