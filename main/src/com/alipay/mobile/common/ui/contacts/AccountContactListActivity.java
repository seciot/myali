package com.alipay.mobile.common.ui.contacts;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Window;
import com.alipay.mobile.base.commonbiz.R.drawable;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.base.commonbiz.R.string;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.ui.contacts.adapter.AccountsSectionListAdapter;
import com.alipay.mobile.common.ui.contacts.model.HistoryTransferAccount;
import com.alipay.mobile.common.ui.contacts.model.TransferToAccountDAO;
import com.alipay.mobile.common.ui.contacts.util.AccountContactComparator;
import com.alipay.mobile.common.ui.contacts.util.KeyBoardUtil;
import com.alipay.mobile.common.ui.contacts.util.LogAgentUtil;
import com.alipay.mobile.common.ui.contacts.util.NetworkUtil;
import com.alipay.mobile.common.utils.ChineseToPy;
import com.alipay.mobile.commonui.widget.APBladeView;
import com.alipay.mobile.commonui.widget.APContactSectionIndexer;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APPinnedHeaderListView;
import com.alipay.mobile.commonui.widget.APPullRefreshView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTableView;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobile.framework.service.common.RpcService;
import com.alipay.mobileprod.biz.transfer.TransferService;
import com.alipay.mobileprod.biz.transfer.dto.GetContactListReq;
import com.alipay.mobileprod.biz.transfer.dto.GetContactListResp;
import com.alipay.mobileprod.biz.transfer.vo.ContactUserVO;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.Click;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ItemClick;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@EActivity(resName="account_contact_list")
public class AccountContactListActivity extends BaseActivity
  implements TextWatcher
{
  public static final String HIDE_CONTACT = "hidecontact";
  public static final String INFO_ACCOUNT_DISPLAYNAME = "accountDisplayName";
  public static final String INFO_ACCOUNT_REALACCOUNT = "accountRealAccount";
  public static final int RST_FROM_ACCOUNT_TO_CONTACT = 5;
  private List<HistoryTransferAccount> a;
  private AccountsSectionListAdapter b;
  private TransferToAccountDAO c = new TransferToAccountDAO();
  private String[] d = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "#" };
  private int[] e;
  private APContactSectionIndexer f;
  private TransferService g;
  private AccountContactListActivity.HistroryAccountsRequest h = new AccountContactListActivity.HistroryAccountsRequest(this);
  private AccountContactListActivity.PullRefreshListener i = new AccountContactListActivity.PullRefreshListener(this, null);
  private boolean j = false;

  @ViewById(resName="account_contacts_list")
  protected APPinnedHeaderListView mAccountsListView;

  @ViewById(resName="emptyAccountContent")
  protected APTextView mEmptyAccountContent;

  @ViewById(resName="emptyImage")
  protected APImageView mEmptyAccountImage;

  @ViewById(resName="emptySearchAccountContactsResults")
  protected APRelativeLayout mEmptySearchResults;

  @ViewById(resName="historyContactCanvas")
  protected APPullRefreshView mHistoryContactCanvas;

  @ViewById(resName="contacts_letters_list")
  protected APBladeView mLetters;

  @ViewById(resName="initLoadingView")
  protected APLinearLayout mLoadingView;

  @ViewById(resName="searchCancel")
  protected APTextView mSearchCancel;

  @ViewById(resName="searchEditText")
  protected APInputBox mSearchInput;

  @ViewById(resName="searchToMobileContacts")
  protected APTableView mSearchToMobileContacts;

  private void a()
  {
    this.h.executeBackground(new GetContactListReq());
  }

  private void a(GetContactListResp paramGetContactListResp)
  {
    ArrayList localArrayList = new ArrayList();
    List localList = paramGetContactListResp.getContactList();
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        ContactUserVO localContactUserVO = (ContactUserVO)localIterator.next();
        if (!TextUtils.isEmpty(localContactUserVO.getName()))
          localArrayList.add(new HistoryTransferAccount(localContactUserVO));
      }
    }
    updateHistoryList(localArrayList);
  }

  @ItemClick(resName={"account_contacts_list"})
  protected void accountContactsList(HistoryTransferAccount paramHistoryTransferAccount)
  {
    KeyBoardUtil.hideKeyBoard(getApplicationContext(), this.mSearchInput.getEtContent());
    Intent localIntent = new Intent();
    localIntent.putExtra("accountDisplayName", paramHistoryTransferAccount.getDisplayName());
    localIntent.putExtra("accountRealAccount", paramHistoryTransferAccount.getRealAccount());
    setResult(-1, localIntent);
    finish();
  }

  public void afterTextChanged(Editable paramEditable)
  {
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  @UiThread
  protected void dismissInitLoading()
  {
    this.mLoadingView.setVisibility(8);
  }

  @UiThread
  protected void hideEmptyContent()
  {
    this.mAccountsListView.setVisibility(0);
    this.mEmptySearchResults.setVisibility(8);
  }

  @AfterViews
  protected void initListener()
  {
    Bitmap localBitmap = BitmapFactory.decodeResource(getResources(), R.drawable.icon_total_contacts);
    this.mSearchToMobileContacts.setIconSize(localBitmap.getWidth(), localBitmap.getHeight());
    if (this.j)
      this.mSearchToMobileContacts.setVisibility(8);
    while (true)
    {
      this.mSearchInput.getEtContent().addTextChangedListener(this);
      this.mSearchInput.getEtContent().setImeOptions(6);
      this.mHistoryContactCanvas.setRefreshListener(this.i);
      this.mHistoryContactCanvas.setEnablePull(true);
      this.mLetters.setOnItemClickListener(new AccountContactListActivity.1(this));
      this.b = new AccountsSectionListAdapter(this);
      this.mAccountsListView.setAdapter(this.b);
      this.mAccountsListView.setOnScrollListener(this.b);
      this.mAccountsListView.setPinnedHeaderView(LayoutInflater.from(this).inflate(R.layout.contact_list_head, this.mAccountsListView, false));
      loadHistoryData();
      return;
      this.mSearchToMobileContacts.setVisibility(0);
    }
  }

  @Background
  protected void loadHistoryData()
  {
    GetContactListResp localGetContactListResp = (GetContactListResp)this.h.loadCache(new GetContactListReq());
    int k;
    if (localGetContactListResp != null)
    {
      a(localGetContactListResp);
      k = 1;
      if (k != 0)
        break label51;
      showInitLoading();
      a();
      dismissInitLoading();
    }
    label51: 
    while (!NetworkUtil.isGoodNetwork())
    {
      return;
      k = 0;
      break;
    }
    a();
  }

  @Background
  protected void manualUpdateHistory()
  {
    this.h.executeBackground(new GetContactListReq());
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 5) && (paramInt2 == -1))
    {
      setResult(-1, paramIntent);
      finish();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.g = ((TransferService)((RpcService)this.mApp.getServiceByInterface(RpcService.class.getName())).getRpcProxy(TransferService.class));
    this.j = getIntent().getBooleanExtra("hidecontact", false);
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    String str = paramCharSequence.toString().trim();
    getWindow().setSoftInputMode(32);
    if (TextUtils.isEmpty(str))
    {
      this.c.resetTransferToAccount(this.a);
      this.mSearchCancel.setVisibility(8);
      this.mHistoryContactCanvas.setEnablePull(true);
      if (!this.j)
        this.mSearchToMobileContacts.setVisibility(0);
      if ((this.a != null) && (this.a.size() > 0))
      {
        hideEmptyContent();
        this.mLetters.setVisibility(0);
        this.b.refreshUi(this.a);
        this.mAccountsListView.setSelection(0);
        this.mAccountsListView.smoothScrollToPosition(0);
        return;
      }
      showEmptyContent(getResources().getString(R.string.no_account_contacts));
      return;
    }
    this.mSearchCancel.setVisibility(0);
    this.mHistoryContactCanvas.setEnablePull(false);
    List localList = this.c.getMatchedContact(str, this.a);
    this.mLetters.setVisibility(8);
    if ((localList != null) && (localList.size() > 0))
    {
      hideEmptyContent();
      this.mSearchToMobileContacts.setVisibility(8);
      this.b.refreshUi(localList);
      this.mAccountsListView.setSelection(0);
      this.mAccountsListView.smoothScrollToPosition(0);
    }
    while (true)
    {
      getWindow().setSoftInputMode(16);
      return;
      this.mEmptyAccountImage.setVisibility(4);
      showEmptyContent(getResources().getString(R.string.search_no_results));
      this.mSearchToMobileContacts.setVisibility(8);
    }
  }

  @UiThread
  protected void pullRefreshFinished(boolean paramBoolean)
  {
    this.mHistoryContactCanvas.refreshFinished();
  }

  @Click
  protected void searchCancel()
  {
    KeyBoardUtil.hideKeyBoard(getApplicationContext(), this.mSearchInput.getEtContent());
    this.mSearchInput.getEtContent().setText("");
    this.mSearchCancel.setVisibility(8);
  }

  @Click
  protected void searchToMobileContacts()
  {
    LogAgentUtil.log(this, BehaviourIdEnum.CLICKED, "phoneBookView", "contactListView", "phoneBookIcon", this.mApp.getAppId());
    KeyBoardUtil.hideKeyBoard(getApplicationContext(), this.mSearchInput.getEtContent());
    Intent localIntent = new Intent(this, MobileContactListActivity_.class);
    this.mApp.getMicroApplicationContext().startActivityForResult(this.mApp, localIntent, 5);
  }

  @UiThread
  protected void showEmptyContent(String paramString)
  {
    this.mAccountsListView.setVisibility(8);
    this.mLetters.setVisibility(8);
    this.mEmptySearchResults.setVisibility(0);
    this.mEmptyAccountContent.setText(paramString);
  }

  @UiThread
  protected void showInitLoading()
  {
    this.mLoadingView.setVisibility(0);
  }

  @UiThread
  protected void updateHistoryList(List<HistoryTransferAccount> paramList)
  {
    Collections.sort(paramList, new AccountContactComparator());
    this.a = paramList;
    this.b.refreshUi(this.a);
    if (paramList.size() > 0)
    {
      this.mLetters.setVisibility(0);
      hideEmptyContent();
    }
    while (true)
    {
      this.e = new int[this.d.length];
      Iterator localIterator = this.a.iterator();
      while (localIterator.hasNext())
      {
        int k = "ABCDEFGHIJKLMNOPQRSTUVWXYZ#".indexOf(ChineseToPy.getSinglePy(((HistoryTransferAccount)localIterator.next()).getDisplayName().substring(0, 1)));
        if (k > 0)
        {
          int[] arrayOfInt = this.e;
          arrayOfInt[k] = (1 + arrayOfInt[k]);
        }
      }
      this.mHistoryContactCanvas.setEnablePull(true);
      this.mLetters.setVisibility(8);
      showEmptyContent(getResources().getString(R.string.no_account_contacts));
    }
    this.f = new APContactSectionIndexer(this.d, this.e);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.AccountContactListActivity
 * JD-Core Version:    0.6.2
 */