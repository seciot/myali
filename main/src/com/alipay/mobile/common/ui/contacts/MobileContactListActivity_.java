package com.alipay.mobile.common.ui.contacts;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.common.ui.contacts.model.ContactPerson;
import com.alipay.mobile.commonui.widget.APBladeView;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APPinnedHeaderListView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.googlecode.androidannotations.api.SdkVersionHelper;
import java.util.List;

public final class MobileContactListActivity_ extends MobileContactListActivity
{
  private Handler a = new Handler();

  private void a()
  {
    this.mContactsListView = ((APPinnedHeaderListView)findViewById(R.id.mobileContactsList));
    this.mEmptyResultsContent = ((APTextView)findViewById(R.id.emptyResultsContent));
    this.mLoadingPanel = ((APLinearLayout)findViewById(R.id.loadingPanel));
    this.mSearchBar = ((APRelativeLayout)findViewById(R.id.filter));
    this.mSearchCancel = ((APTextView)findViewById(R.id.searchCancel));
    this.mEmptySearchResults = ((APRelativeLayout)findViewById(R.id.emptySearchContactsResults));
    this.mLoadingText = ((APTextView)findViewById(R.id.loadingText));
    this.mSearchInput = ((APInputBox)findViewById(R.id.searchEditText));
    this.mLetters = ((APBladeView)findViewById(R.id.contacts_letters_list));
    this.mTipsPanelView = ((APLinearLayout)findViewById(R.id.tipsPanel));
    this.mTitleBar = ((APTitleBar)findViewById(R.id.title_name));
    View localView = findViewById(R.id.searchCancel);
    if (localView != null)
      localView.setOnClickListener(new MobileContactListActivity_.1(this));
    AdapterView localAdapterView = (AdapterView)findViewById(R.id.mobileContactsList);
    if (localAdapterView != null)
      localAdapterView.setOnItemClickListener(new MobileContactListActivity_.2(this));
    init();
  }

  public static MobileContactListActivity_.IntentBuilder_ intent(Context paramContext)
  {
    return new MobileContactListActivity_.IntentBuilder_(paramContext);
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.mobile_contact_list);
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((SdkVersionHelper.getSdkInt() < 5) && (paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
      onBackPressed();
    return super.onKeyDown(paramInt, paramKeyEvent);
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

  public final void showUploadDialog()
  {
    this.a.post(new MobileContactListActivity_.4(this));
  }

  public final void updateSearchedList(List<ContactPerson> paramList)
  {
    this.a.post(new MobileContactListActivity_.3(this, paramList));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.MobileContactListActivity_
 * JD-Core Version:    0.6.2
 */