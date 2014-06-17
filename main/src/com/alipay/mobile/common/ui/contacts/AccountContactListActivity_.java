package com.alipay.mobile.common.ui.contacts;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.AdapterView;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.common.ui.contacts.model.HistoryTransferAccount;
import com.alipay.mobile.commonui.widget.APBladeView;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APPinnedHeaderListView;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.googlecode.androidannotations.api.BackgroundExecutor;
import java.util.List;

public final class AccountContactListActivity_ extends AccountContactListActivity
{
  private Handler a = new Handler();

  private void a()
  {
    this.mEmptyAccountImage = ((APImageView)findViewById(R.id.emptyImage));
    this.mLetters = ((APBladeView)findViewById(R.id.contacts_letters_list));
    this.mSearchToMobileContacts = ((APTableView)findViewById(R.id.searchToMobileContacts));
    this.mSearchInput = ((APInputBox)findViewById(R.id.searchEditText));
    this.mSearchCancel = ((APTextView)findViewById(R.id.searchCancel));
    this.mLoadingView = ((APLinearLayout)findViewById(R.id.initLoadingView));
    this.mEmptySearchResults = ((APRelativeLayout)findViewById(R.id.emptySearchAccountContactsResults));
    this.mAccountsListView = ((APPinnedHeaderListView)findViewById(R.id.account_contacts_list));
    this.mEmptyAccountContent = ((APTextView)findViewById(R.id.emptyAccountContent));
    this.mHistoryContactCanvas = ((APPullRefreshView)findViewById(R.id.historyContactCanvas));
    View localView1 = findViewById(R.id.searchCancel);
    if (localView1 != null)
      localView1.setOnClickListener(new AccountContactListActivity_.1(this));
    View localView2 = findViewById(R.id.searchToMobileContacts);
    if (localView2 != null)
      localView2.setOnClickListener(new AccountContactListActivity_.2(this));
    AdapterView localAdapterView = (AdapterView)findViewById(R.id.account_contacts_list);
    if (localAdapterView != null)
      localAdapterView.setOnItemClickListener(new AccountContactListActivity_.3(this));
    initListener();
  }

  public static AccountContactListActivity_.IntentBuilder_ intent(Context paramContext)
  {
    return new AccountContactListActivity_.IntentBuilder_(paramContext);
  }

  public final void dismissInitLoading()
  {
    this.a.post(new AccountContactListActivity_.5(this));
  }

  public final void hideEmptyContent()
  {
    this.a.post(new AccountContactListActivity_.9(this));
  }

  public final void loadHistoryData()
  {
    BackgroundExecutor.execute(new AccountContactListActivity_.11(this));
  }

  public final void manualUpdateHistory()
  {
    BackgroundExecutor.execute(new AccountContactListActivity_.10(this));
  }

  public final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(R.layout.account_contact_list);
  }

  public final void pullRefreshFinished(boolean paramBoolean)
  {
    this.a.post(new AccountContactListActivity_.7(this, paramBoolean));
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

  public final void showEmptyContent(String paramString)
  {
    this.a.post(new AccountContactListActivity_.6(this, paramString));
  }

  public final void showInitLoading()
  {
    this.a.post(new AccountContactListActivity_.4(this));
  }

  public final void updateHistoryList(List<HistoryTransferAccount> paramList)
  {
    this.a.post(new AccountContactListActivity_.8(this, paramList));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.AccountContactListActivity_
 * JD-Core Version:    0.6.2
 */