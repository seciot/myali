package com.alipay.mobile.common.ui.contacts;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.telephony.SmsManager;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Window;
import android.widget.Toast;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.base.commonbiz.R.string;
import com.alipay.mobile.common.logagent.BehaviourIdEnum;
import com.alipay.mobile.common.share.ShareContent;
import com.alipay.mobile.common.ui.contacts.adapter.MobileSectionListAdapter;
import com.alipay.mobile.common.ui.contacts.dao.MobileContactDAO;
import com.alipay.mobile.common.ui.contacts.model.ContactPerson;
import com.alipay.mobile.common.ui.contacts.util.KeyBoardUtil;
import com.alipay.mobile.common.ui.contacts.util.LogAgentUtil;
import com.alipay.mobile.common.widget.SimpleToast;
import com.alipay.mobile.commonui.widget.APBladeView;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APContactSectionIndexer;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APPinnedHeaderListView;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.alipay.mobileprod.biz.contact.contactuploader.ContactsUploader;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Click;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.ItemClick;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@SuppressLint({"DefaultLocale"})
@EActivity(resName="mobile_contact_list")
public class MobileContactListActivity extends BaseActivity
  implements TextWatcher
{
  public static final String INFO_MOBILE_CONTACTNAME = "mobileContactName";
  public static final String INFO_MOBILE_CONTACTNUMBER = "mobileContactNumber";
  public static final int START_TYPE_NORMAL = 0;
  public static final int START_TYPE_SMS_SHARE = 1;
  public static final String TAG_RESULT_DATA = "result_data";
  public static final String TAG_START_PARAM = "start_param";
  public static final String TAG_START_TYPE = "start_type";
  public static final String TAG_TYPE = "tag_tape";
  private MobileContactDAO a = MobileContactDAO.getInstance();
  private List<ContactPerson> b = new ArrayList();
  private APContactSectionIndexer c;
  private APContactSectionIndexer d;
  private String[] e = { "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z", "#" };
  private ShareContent f = null;
  private int g = 0;
  private int h = MobileSectionListAdapter.TAG_TYPE_ALIPAY_USER;
  private MobileSectionListAdapter i;
  private boolean j = false;
  private Handler k;
  private boolean l = false;
  private boolean m = false;

  @ViewById(resName="mobileContactsList")
  protected APPinnedHeaderListView mContactsListView;

  @ViewById(resName="emptyResultsContent")
  protected APTextView mEmptyResultsContent;

  @ViewById(resName="emptySearchContactsResults")
  protected APRelativeLayout mEmptySearchResults;

  @ViewById(resName="contacts_letters_list")
  protected APBladeView mLetters;

  @ViewById(resName="loadingPanel")
  protected APLinearLayout mLoadingPanel;

  @ViewById(resName="loadingText")
  protected APTextView mLoadingText;

  @ViewById(resName="filter")
  protected APRelativeLayout mSearchBar;

  @ViewById(resName="searchCancel")
  protected APTextView mSearchCancel;

  @ViewById(resName="searchEditText")
  protected APInputBox mSearchInput;

  @ViewById(resName="tipsPanel")
  protected APLinearLayout mTipsPanelView;

  @ViewById(resName="title_name")
  protected APTitleBar mTitleBar;
  private boolean n = true;
  private Runnable o = new MobileContactListActivity.7(this);

  private void a()
  {
    this.mContactsListView.setVisibility(0);
    this.mEmptySearchResults.setVisibility(8);
  }

  private void a(String paramString)
  {
    this.mContactsListView.setVisibility(8);
    this.mEmptySearchResults.setVisibility(0);
    this.mEmptyResultsContent.setText(paramString);
  }

  @SuppressLint({"DefaultLocale"})
  private void b()
  {
    int i1 = 0;
    int[] arrayOfInt1 = new int[this.e.length];
    this.b.clear();
    this.b.addAll(this.a.getContactData());
    Iterator localIterator = this.b.iterator();
    while (localIterator.hasNext())
    {
      String str = ((ContactPerson)localIterator.next()).sortKey.substring(0, 1).toUpperCase();
      if (!str.matches("^[a-z,A-Z].*$"))
        str = "#";
      int i3 = "ABCDEFGHIJKLMNOPQRSTUVWXYZ#".indexOf(str);
      arrayOfInt1[i3] = (1 + arrayOfInt1[i3]);
    }
    this.b.clear();
    this.c = new APContactSectionIndexer(this.e, arrayOfInt1);
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    for (int i2 = 0; i2 < this.e.length; i2++)
      if (arrayOfInt1[i2] != 0)
      {
        localArrayList1.add(this.e[i2]);
        localArrayList2.add(Integer.valueOf(arrayOfInt1[i2]));
      }
    String[] arrayOfString = new String[localArrayList1.size()];
    int[] arrayOfInt2 = new int[localArrayList2.size()];
    while (i1 < arrayOfInt2.length)
    {
      arrayOfString[i1] = ((String)localArrayList1.get(i1));
      arrayOfInt2[i1] = ((Integer)localArrayList2.get(i1)).intValue();
      i1++;
    }
    this.d = new APContactSectionIndexer(arrayOfString, arrayOfInt2);
  }

  public void afterTextChanged(Editable paramEditable)
  {
    String str = paramEditable.toString().trim();
    getWindow().setSoftInputMode(32);
    List localList = this.a.getContactData();
    if ((str.length() == 0) && (localList != null) && (localList.size() > 0))
    {
      this.a.resetContactPerson();
      this.mContactsListView.setVisibility(0);
      this.mEmptySearchResults.setVisibility(8);
      this.mLetters.setVisibility(0);
      this.mSearchCancel.setVisibility(8);
      this.k.removeCallbacks(this.o);
      this.i.refreshUi(localList, this.d);
      this.mContactsListView.setSelection(0);
      return;
    }
    this.mSearchCancel.setVisibility(0);
    this.mLetters.setVisibility(8);
    this.k.removeCallbacks(this.o);
    this.k.postDelayed(this.o, 100L);
    getWindow().setSoftInputMode(16);
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    LogAgentUtil.log(this, BehaviourIdEnum.CLICKED, "", "phoneBookView", "inputSearch", this.mApp.getAppId());
  }

  protected void getContactSerched(String paramString)
  {
    Context localContext = AlipayApplication.getInstance().getApplicationContext();
    BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITORPERF;
    String str = this.mApp.getAppId();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = System.currentTimeMillis();
    LogAgentUtil.log(localContext, localBehaviourIdEnum, null, "phoneBookView", "StartSearch", str, arrayOfString);
    updateSearchedList(this.a.getMatchedContact(paramString));
  }

  @AfterViews
  protected void init()
  {
    this.mTitleBar.getGenericButton().setEnabled(false);
    this.mLoadingText.setText(getString(R.string.loading_text));
    this.mLoadingPanel.setVisibility(0);
    this.mTitleBar.getGenericButton().setOnClickListener(new MobileContactListActivity.2(this));
    this.mSearchInput.getEtContent().addTextChangedListener(this);
    this.mSearchInput.getEtContent().setImeOptions(6);
    this.mLetters.setOnItemClickListener(new MobileContactListActivity.3(this));
    this.i = new MobileSectionListAdapter(this);
    this.mContactsListView.setAdapter(this.i);
    this.mContactsListView.setOnScrollListener(this.i);
    this.mContactsListView.setPinnedHeaderView(LayoutInflater.from(this).inflate(R.layout.contact_list_head, this.mContactsListView, false));
    if (this.g == 1)
    {
      this.i.setShowShareBtn(true);
      this.i.setShareClickListener(new MobileContactListActivity.4(this));
    }
    if ((this.h == MobileSectionListAdapter.TAG_TYPE_ALIPAY_APP_USER) || (this.h == MobileSectionListAdapter.TAG_TYPE_ALIPAY_ALL))
      this.mTipsPanelView.setVisibility(0);
    this.i.setShowTagType(this.h);
    this.a.initContext(this, this.k, this.mApp);
  }

  @ItemClick
  protected void mobileContactsList(ContactPerson paramContactPerson)
  {
    LogAgentUtil.log(this, BehaviourIdEnum.CLICKED, "", "phoneBookView", "selectPhone", this.mApp.getAppId());
    KeyBoardUtil.hideKeyBoard(getApplicationContext(), this.mSearchInput.getEtContent());
    Intent localIntent = new Intent();
    localIntent.putExtra("mobileContactName", paramContactPerson.displayName);
    localIntent.putExtra("mobileContactNumber", paramContactPerson.mobileNumber);
    localIntent.putExtra("result_data", paramContactPerson);
    setResult(-1, localIntent);
    finish();
  }

  public void onBackPressed()
  {
    super.onBackPressed();
    LogAgentUtil.log(this, BehaviourIdEnum.CLICKED, "", "phoneBookView", "backIcon", this.mApp.getAppId());
    finish();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.k = new MobileContactListActivity.1(this);
    this.g = getIntent().getIntExtra("start_type", 0);
    if (this.g == 1)
    {
      Serializable localSerializable = getIntent().getSerializableExtra("start_param");
      if (localSerializable != null)
        this.f = ((ShareContent)localSerializable);
    }
    this.h = getIntent().getIntExtra("tag_tape", MobileSectionListAdapter.TAG_TYPE_ALIPAY_USER);
    LogAgentUtil.log(this, BehaviourIdEnum.OPENPAGE, "phoneBookView", "", "", this.mApp.getAppId());
  }

  public void onDestroy()
  {
    super.onDestroy();
    this.l = true;
    this.a.resetContactPerson();
    this.a.clearContext();
    this.mContactsListView.destroyDrawingCache();
    this.mContactsListView = null;
    this.i = null;
    this.mEmptySearchResults = null;
    this.b = null;
    this.c = null;
    this.d = null;
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  protected void refreshView()
  {
    List localList = this.a.getContactData();
    if ((localList != null) && (localList.size() > 0))
    {
      b();
      this.i.refreshUi(localList, this.d);
      this.mLetters.setVisibility(0);
      this.mSearchBar.setVisibility(0);
      this.mSearchInput.getEtContent().setVisibility(0);
      a();
    }
    while (true)
    {
      if (!this.m)
      {
        this.m = true;
        if ((this.a.getContactsUploader() != null) && (this.a.getContactData() != null) && (this.a.getContactData().size() > 0))
        {
          if (this.a.getContactsUploader().isContactsUploadPermitted())
            break;
          showUploadDialog();
        }
      }
      return;
      this.mLetters.setVisibility(8);
      this.mSearchBar.setVisibility(8);
      this.mSearchInput.getEtContent().setVisibility(8);
      a(getResources().getString(R.string.no_mobile_contacts));
    }
    this.a.tryToUploadMobileContacts();
  }

  @Click
  protected void searchCancel()
  {
    KeyBoardUtil.hideKeyBoard(getApplicationContext(), this.mSearchInput.getEtContent());
    this.mSearchInput.getEtContent().setText("");
    this.mSearchCancel.setVisibility(8);
  }

  protected void sendSMS(String paramString1, String paramString2)
  {
    SmsManager localSmsManager = SmsManager.getDefault();
    if (this.f != null)
      paramString1 = this.f.getContent() + paramString1;
    ArrayList localArrayList = localSmsManager.divideMessage(paramString1);
    PendingIntent localPendingIntent1 = PendingIntent.getBroadcast(this, 0, new Intent("SENT_SMS_ACTION"), 0);
    registerReceiver(new MobileContactListActivity.10(this, paramString2), new IntentFilter("SENT_SMS_ACTION"));
    PendingIntent localPendingIntent2 = PendingIntent.getBroadcast(this, 0, new Intent("DELIVERED_SMS_ACTION"), 0);
    registerReceiver(new MobileContactListActivity.11(this), new IntentFilter("DELIVERED_SMS_ACTION"));
    Iterator localIterator = localArrayList.iterator();
    while (localIterator.hasNext())
      localSmsManager.sendTextMessage(paramString2, null, (String)localIterator.next(), localPendingIntent1, localPendingIntent2);
  }

  @UiThread
  protected void showUploadDialog()
  {
    if (this.j)
      return;
    this.j = true;
    alert("启用手机通讯录匹配", "启用后，可找到你手机通讯录中使用支付宝的朋友", "开启", new MobileContactListActivity.5(this), "下次再说", new MobileContactListActivity.6(this));
  }

  protected void testSNSService(String paramString)
  {
    new MobileContactListActivity.9(this, paramString).execute(new Void[0]);
  }

  protected void testShorLinkService(String paramString)
  {
    showProgressDialog("正在生成短链接");
    new MobileContactListActivity.8(this, paramString).execute(new Void[0]);
  }

  protected void updateFromDao(Message paramMessage)
  {
    if (this.l);
    do
    {
      do
      {
        return;
        switch (paramMessage.what)
        {
        default:
          return;
        case 100:
        case 101:
        case 102:
        }
      }
      while (!this.n);
      this.n = false;
    }
    while (!TextUtils.isEmpty(this.mSearchInput.getInputedText()));
    refreshView();
    return;
    this.n = false;
    if (TextUtils.isEmpty(this.mSearchInput.getInputedText()))
      refreshView();
    while (true)
    {
      if (this.mLoadingPanel.getVisibility() == 0)
      {
        this.mLoadingPanel.setVisibility(8);
        if (this.mLoadingText.getText().equals(getString(R.string.refreshing_text)))
          SimpleToast.makeToast(this, 0, getString(R.string.refreshdone_text), 0).show();
      }
      this.mTitleBar.getGenericButton().setEnabled(true);
      return;
      b();
      this.k.post(this.o);
    }
    if (this.i.getCount() > 0)
    {
      this.i.refreshUi();
      return;
    }
    this.i.refreshUi(this.a.getContactData(), this.d);
  }

  @UiThread
  protected void updateSearchedList(List<ContactPerson> paramList)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      a();
      this.i.refreshUi(paramList, null);
      this.mContactsListView.setSelection(0);
    }
    while (true)
    {
      Context localContext = AlipayApplication.getInstance().getApplicationContext();
      BehaviourIdEnum localBehaviourIdEnum = BehaviourIdEnum.MONITORPERF;
      String str = this.mApp.getAppId();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = System.currentTimeMillis();
      LogAgentUtil.log(localContext, localBehaviourIdEnum, null, "phoneBookView", "SearchDone", str, arrayOfString);
      return;
      a(getResources().getString(R.string.search_no_results));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.MobileContactListActivity
 * JD-Core Version:    0.6.2
 */