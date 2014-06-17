package com.alipay.mobile.common.ui;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.base.commonbiz.R.raw;
import com.alipay.mobile.base.commonbiz.R.string;
import com.alipay.mobile.common.ui.cityselect.model.CityVO;
import com.alipay.mobile.common.ui.cityselect.util.CityVOComparator;
import com.alipay.mobile.common.ui.cityselect.util.Cityfilter;
import com.alipay.mobile.common.ui.cityselect.view.CityBladeView;
import com.alipay.mobile.common.ui.cityselect.view.CityPinnedHeaderListView;
import com.alipay.mobile.common.utils.ChineseToPy;
import com.alipay.mobile.commonui.widget.APEditText;
import com.alipay.mobile.commonui.widget.APImageButton;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.commonui.widget.APTitleBar;
import com.alipay.mobile.framework.AlipayApplication;
import com.alipay.mobile.framework.MicroApplicationContext;
import com.alipay.mobile.framework.app.ActivityApplication;
import com.alipay.mobile.framework.app.ui.BaseActivity;
import com.googlecode.androidannotations.annotations.AfterViews;
import com.googlecode.androidannotations.annotations.Background;
import com.googlecode.androidannotations.annotations.EActivity;
import com.googlecode.androidannotations.annotations.UiThread;
import com.googlecode.androidannotations.annotations.ViewById;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@EActivity(resName="lifepay_citylist")
public class SelectCityActivity extends BaseActivity
  implements TextWatcher
{
  public static final String EXTRA_GOCITYLIST_FROM = "from";
  public static final String EXTRA_PARAM_CURRENT_CITY = "currentCity";
  public static final int ISFROM_FROMFORM = 1;
  public static final String SELCTCITY_FROM_CITYLIST = "selctcity_from_citylist";
  public static final String SELECT_PROVINCE = "select_province";
  public static List<CityVO> catheCityList = null;
  public static List<CityVO> catheHotCityList = null;
  public static String currentCity = "";
  public static String currentProvice = "";
  private CityListAdapter a;
  private List<String> b;
  private Map<String, List<String>> c;
  private List<Integer> d;
  private Map<String, Integer> e;
  private int f = 0;
  List<CityVO> mCityList;

  @ViewById(resName="clearButton")
  protected APImageButton mEditeClearButton;

  @ViewById(resName="friends_myletterlistview")
  protected CityBladeView mLetter;

  @ViewById(resName="friends_display")
  protected CityPinnedHeaderListView mListView;

  @ViewById(resName="locationLayout")
  protected APLinearLayout mLocationLayout;

  @ViewById(resName="search_bar_inputbox_layout_target")
  protected APRelativeLayout mSearchBar;

  @ViewById(resName="searchEditText")
  protected APEditText mSearchBox;

  @ViewById(resName="lifepay_searchNoResult")
  APTextView mSearchNoResult;
  List<CityVO> mTempCityList;

  @ViewById(resName="titleBar")
  protected APTitleBar mTitleBar;

  private List<CityVO> a(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(this.mApp.getMicroApplicationContext().getApplicationContext().getResources().openRawResource(paramInt)));
    try
    {
      while (true)
      {
        String str = localBufferedReader.readLine();
        if (str == null)
          break;
        CityVO localCityVO = new CityVO();
        localCityVO.city = str;
        localArrayList.add(localCityVO);
      }
    }
    catch (IOException localIOException)
    {
      localArrayList = null;
    }
    return localArrayList;
  }

  private void a()
  {
    int i = 0;
    this.b = new ArrayList();
    this.c = new HashMap();
    this.d = new ArrayList();
    this.e = new HashMap();
    ArrayList localArrayList1 = new ArrayList();
    if (catheHotCityList != null)
      localArrayList1.addAll(catheHotCityList);
    localArrayList1.addAll(catheCityList);
    this.mCityList = localArrayList1;
    this.mTempCityList = this.mCityList;
    if (catheHotCityList != null)
    {
      int n = 0;
      if (n < catheHotCityList.size())
      {
        if (this.b.contains("热门"))
          ((List)this.c.get("热门")).add(((CityVO)catheHotCityList.get(n)).city);
        while (true)
        {
          n++;
          break;
          this.b.add("热门");
          ArrayList localArrayList4 = new ArrayList();
          localArrayList4.add(((CityVO)catheHotCityList.get(n)).city);
          this.c.put("热门", localArrayList4);
        }
      }
    }
    int j = 0;
    if (j < catheCityList.size())
    {
      String str = ChineseToPy.getSinglePy(((CityVO)catheCityList.get(j)).city.substring(0, 1));
      if (str.matches("^[a-z,A-Z].*$"))
        if (this.b.contains(str))
          ((List)this.c.get(str)).add(((CityVO)catheCityList.get(j)).city);
      while (true)
      {
        j++;
        break;
        this.b.add(str);
        ArrayList localArrayList3 = new ArrayList();
        localArrayList3.add(((CityVO)catheCityList.get(j)).city);
        this.c.put(str, localArrayList3);
        continue;
        if (this.b.contains("#"))
        {
          ((List)this.c.get("#")).add(((CityVO)catheCityList.get(j)).city);
        }
        else
        {
          this.b.add("#");
          ArrayList localArrayList2 = new ArrayList();
          localArrayList2.add(((CityVO)catheCityList.get(j)).city);
          this.c.put("#", localArrayList2);
        }
      }
    }
    Collections.sort(this.b, new SelectCityActivity.2(this));
    int m;
    for (int k = 0; i < this.b.size(); k = m)
    {
      this.e.put(this.b.get(i), Integer.valueOf(k));
      this.d.add(Integer.valueOf(k));
      m = k + ((List)this.c.get(this.b.get(i))).size();
      i++;
    }
  }

  public void afterTextChanged(Editable paramEditable)
  {
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  @AfterViews
  protected void init()
  {
    this.mEditeClearButton.setOnClickListener(new SelectCityActivity.1(this));
    this.mListView.setPinnedHeaderView(LayoutInflater.from(this).inflate(R.layout.lifepay_citylistview_head, this.mListView, false));
    this.mListView.setVisibility(8);
    this.mTitleBar.setVisibility(8);
    this.mSearchBar.setVisibility(8);
    this.mLetter.setVisibility(8);
    if (this.f == 1)
      showCityList();
  }

  @UiThread
  protected void initView()
  {
    this.mLetter.setOnItemClickListener(new SelectCityActivity.3(this));
    this.mSearchBox.addTextChangedListener(this);
    ((APTextView)this.mLocationLayout.findViewById(R.id.friends_item_header_text)).setText(getResources().getString(R.string.LifePay_cityListCurrentCity));
    APTextView localAPTextView = (APTextView)this.mLocationLayout.findViewById(R.id.friends_item);
    if ((currentCity == null) || ("".equalsIgnoreCase(currentCity)))
    {
      localAPTextView.setVisibility(0);
      localAPTextView.setText(getResources().getString(R.string.LifePay_LocationFail));
      localAPTextView.setClickable(false);
    }
    while (true)
    {
      this.a = new CityListAdapter(this, this.mCityList, this.b, this.d);
      this.mListView.setAdapter(this.a);
      this.mListView.setOnScrollListener(this.a);
      this.mListView.setPinnedHeaderView(LayoutInflater.from(this).inflate(R.layout.lifepay_citylistview_head, this.mListView, false));
      this.mListView.setOnItemClickListener(new SelectCityActivity.5(this));
      dismissProgressDialog();
      this.mLocationLayout.setVisibility(0);
      this.mSearchBar.setVisibility(0);
      this.mListView.setVisibility(0);
      this.mTitleBar.setVisibility(0);
      this.mLetter.setVisibility(0);
      return;
      localAPTextView.setVisibility(0);
      localAPTextView.setClickable(true);
      localAPTextView.setText(currentCity);
      localAPTextView.setOnClickListener(new SelectCityActivity.4(this));
    }
  }

  @Background
  protected void loadCitys()
  {
    showProgressDialog("");
    catheCityList = a(R.raw.cities_from_gaode);
    catheHotCityList = a(R.raw.hot_cities);
    if (catheCityList != null)
    {
      Iterator localIterator = catheCityList.iterator();
      while (localIterator.hasNext())
      {
        CityVO localCityVO = (CityVO)localIterator.next();
        localCityVO.pinyin = ChineseToPy.getFullPy(localCityVO.city.substring(0, 1)).toLowerCase();
      }
      Collections.sort(catheCityList, new CityVOComparator());
    }
    a();
    initView();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    if (localIntent != null)
    {
      this.f = localIntent.getIntExtra("from", 1);
      currentCity = localIntent.getStringExtra("currentCity");
    }
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    String str = paramCharSequence.toString().trim();
    if (str.length() == 0)
    {
      this.mEditeClearButton.setVisibility(8);
      this.mLetter.setVisibility(0);
      this.mLocationLayout.setVisibility(0);
      this.a.setIsSearchResult(false);
      this.mListView.setVisibility(0);
      this.mSearchNoResult.setVisibility(8);
      this.mTempCityList = this.mCityList;
      this.a.refreshUi(this.mCityList);
      return;
    }
    this.mEditeClearButton.setVisibility(0);
    this.mLetter.setVisibility(8);
    this.mLocationLayout.setVisibility(8);
    this.a.setIsSearchResult(true);
    List localList = Cityfilter.getMatchedContact(str, catheCityList);
    this.mTempCityList = localList;
    if (localList.size() <= 0)
    {
      this.mSearchNoResult.setVisibility(0);
      this.mListView.setVisibility(8);
      return;
    }
    this.mListView.setVisibility(0);
    this.mListView.requestFocusFromTouch();
    this.mListView.setSelection(0);
    this.mSearchNoResult.setVisibility(8);
    this.a.refreshUi(localList);
    this.mSearchBox.requestFocus();
  }

  protected void showCityList()
  {
    if ((catheCityList == null) || (catheCityList.size() < 0))
    {
      loadCitys();
      return;
    }
    a();
    initView();
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.SelectCityActivity
 * JD-Core Version:    0.6.2
 */