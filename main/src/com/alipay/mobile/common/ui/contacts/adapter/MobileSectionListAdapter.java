package com.alipay.mobile.common.ui.contacts.adapter;

import android.content.Context;
import android.graphics.Color;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.common.ui.contacts.model.ContactPerson;
import com.alipay.mobile.commonui.widget.APPinnedHeaderListView;
import com.alipay.mobile.commonui.widget.APPinnedHeaderListView.PinnedHeaderAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MobileSectionListAdapter extends BaseAdapter
  implements AbsListView.OnScrollListener, AdapterView.OnItemClickListener, SectionIndexer, APPinnedHeaderListView.PinnedHeaderAdapter
{
  public static int TAG_TYPE_ALIPAY_ALL = 2;
  public static int TAG_TYPE_ALIPAY_APP_USER;
  public static int TAG_TYPE_ALIPAY_USER = 0;
  private SectionIndexer a;
  private List<ContactPerson> b = new ArrayList();
  private Map<String, View> c = new HashMap();
  private AdapterView.OnItemClickListener d;
  private boolean e;
  private boolean f = false;
  private MobileSectionListAdapter.OnShearBtnClickListener g;
  private int h = TAG_TYPE_ALIPAY_USER;
  protected LayoutInflater mInflater;
  boolean visible;

  static
  {
    TAG_TYPE_ALIPAY_APP_USER = 1;
  }

  public MobileSectionListAdapter(Context paramContext)
  {
    this.mInflater = LayoutInflater.from(paramContext);
  }

  private static String a(String paramString)
  {
    if (paramString == null)
      return "#";
    if (paramString.trim().length() == 0)
      return "#";
    String str = paramString.trim().substring(0, 1);
    if (str.matches("^[a-z,A-Z].*$"))
      return str.toUpperCase();
    return "#";
  }

  public void configurePinnedHeader(View paramView, int paramInt1, int paramInt2)
  {
    int i = getSectionForPosition(paramInt1);
    String str = (String)this.a.getSections()[i];
    ((TextView)paramView.findViewById(R.id.contact_list_item_head)).setText(str);
  }

  public int getCount()
  {
    return this.b.size();
  }

  public Object getItem(int paramInt)
  {
    return this.b.get(paramInt);
  }

  public long getItemId(int paramInt)
  {
    return getLinkedPosition(paramInt).intValue();
  }

  protected Integer getLinkedPosition(int paramInt)
  {
    return Integer.valueOf(paramInt);
  }

  public int getPinnedHeaderState(int paramInt)
  {
    if (this.a == null);
    while ((paramInt < 0) || (this.e))
      return 0;
    int i = getPositionForSection(1 + getSectionForPosition(paramInt));
    if ((i != -1) && (paramInt == i - 1))
      return 2;
    return 1;
  }

  public int getPositionForSection(int paramInt)
  {
    if (this.a == null)
      return -1;
    return this.a.getPositionForSection(paramInt);
  }

  public int getSectionForPosition(int paramInt)
  {
    if (this.a == null)
      return -1;
    return this.a.getSectionForPosition(paramInt);
  }

  public Object[] getSections()
  {
    if (this.a == null)
      return new String[] { "" };
    return this.a.getSections();
  }

  public int getShowTagType()
  {
    return this.h;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    MobileSectionListAdapter.ViewHolder localViewHolder1;
    ContactPerson localContactPerson;
    label205: int i;
    label264: label281: boolean bool;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(R.layout.common_contact_list_item, null);
      MobileSectionListAdapter.ViewHolder localViewHolder2 = new MobileSectionListAdapter.ViewHolder(this);
      localViewHolder2.mHeaderLayout = ((RelativeLayout)paramView.findViewById(R.id.contact_item_head));
      localViewHolder2.mHeaderText = ((TextView)paramView.findViewById(R.id.contact_item_header_text));
      localViewHolder2.mContactNameText = ((TextView)paramView.findViewById(R.id.contact_item_name));
      localViewHolder2.mContactPhoneText = ((TextView)paramView.findViewById(R.id.contact_item_phone));
      localViewHolder2.mAccountIcon = ((ImageView)paramView.findViewById(R.id.contact_accoutn_icon));
      localViewHolder2.mAppIcon = ((ImageView)paramView.findViewById(R.id.contact_app_icon));
      localViewHolder2.mShareButton = ((Button)paramView.findViewById(R.id.btn_share));
      localViewHolder2.mContactItemView = paramView.findViewById(R.id.contact_item);
      paramView.setTag(localViewHolder2);
      localViewHolder1 = localViewHolder2;
      localContactPerson = (ContactPerson)this.b.get(paramInt);
      if ((this.h == TAG_TYPE_ALIPAY_APP_USER) || (this.h == TAG_TYPE_ALIPAY_ALL))
      {
        if (!localContactPerson.isAppUser)
          break label541;
        localViewHolder1.mAppIcon.setVisibility(0);
      }
      if ((this.h == TAG_TYPE_ALIPAY_USER) || (this.h == TAG_TYPE_ALIPAY_ALL))
      {
        if ((!localContactPerson.isBindInfo) || (localContactPerson.enabledStatus == null) || (!localContactPerson.enabledStatus.equals("T")))
          break label554;
        localViewHolder1.mAccountIcon.setVisibility(0);
      }
      Button localButton = localViewHolder1.mShareButton;
      if (!this.f)
        break label567;
      i = 0;
      localButton.setVisibility(i);
      View localView = localViewHolder1.mContactItemView;
      if (this.f)
        break label574;
      bool = true;
      label305: localView.setEnabled(bool);
      localViewHolder1.mShareButton.setOnClickListener(new MobileSectionListAdapter.1(this, localContactPerson));
      if (!this.e)
        break label612;
      if ((localContactPerson.matchedStartIndex == -1) || (localContactPerson.matchedEndIndex == -1))
        break label580;
      SpannableString localSpannableString2 = new SpannableString(localContactPerson.displayName);
      localSpannableString2.setSpan(new ForegroundColorSpan(Color.parseColor("#4C91C7")), localContactPerson.matchedStartIndex, localContactPerson.matchedEndIndex, 33);
      localViewHolder1.mContactNameText.setText(localSpannableString2);
      label409: if ((localContactPerson.matchedStartIndex4Phone == -1) || (localContactPerson.matchedEndIndex4Phone == -1))
        break label596;
      SpannableString localSpannableString1 = new SpannableString(localContactPerson.mobileNumber);
      localSpannableString1.setSpan(new ForegroundColorSpan(Color.parseColor("#4C91C7")), localContactPerson.matchedStartIndex4Phone, localContactPerson.matchedEndIndex4Phone, 33);
      localViewHolder1.mContactPhoneText.setText(localSpannableString1);
    }
    String str1;
    while (true)
    {
      str1 = a(localContactPerson.sortKey);
      if ((paramInt != 0) || (this.e))
        break label641;
      localViewHolder1.mHeaderLayout.setVisibility(0);
      localViewHolder1.mHeaderText.setText(a(localContactPerson.sortKey));
      return paramView;
      localViewHolder1 = (MobileSectionListAdapter.ViewHolder)paramView.getTag();
      break;
      label541: localViewHolder1.mAppIcon.setVisibility(8);
      break label205;
      label554: localViewHolder1.mAccountIcon.setVisibility(8);
      break label264;
      label567: i = 8;
      break label281;
      label574: bool = false;
      break label305;
      label580: localViewHolder1.mContactNameText.setText(localContactPerson.displayName);
      break label409;
      label596: localViewHolder1.mContactPhoneText.setText(localContactPerson.mobileNumber);
      continue;
      label612: localViewHolder1.mContactNameText.setText(localContactPerson.displayName);
      localViewHolder1.mContactPhoneText.setText(localContactPerson.mobileNumber);
    }
    label641: if (paramInt - 1 >= 0);
    for (String str2 = a(((ContactPerson)this.b.get(paramInt - 1)).sortKey); (!str2.equals(str1)) && (!this.e); str2 = " ")
    {
      localViewHolder1.mHeaderLayout.setVisibility(0);
      localViewHolder1.mHeaderText.setText(a(localContactPerson.sortKey));
      return paramView;
    }
    localViewHolder1.mHeaderLayout.setVisibility(8);
    return paramView;
  }

  public boolean isShowShareBtn()
  {
    return this.f;
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (this.d != null)
      this.d.onItemClick(paramAdapterView, paramView, getLinkedPosition(paramInt).intValue(), paramLong);
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramAbsListView instanceof APPinnedHeaderListView))
      ((APPinnedHeaderListView)paramAbsListView).configureHeaderView(paramInt1);
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }

  public void refreshUi()
  {
    if (this.a == null);
    for (this.e = true; ; this.e = false)
    {
      notifyDataSetChanged();
      return;
    }
  }

  public void refreshUi(List<ContactPerson> paramList, SectionIndexer paramSectionIndexer)
  {
    this.b = paramList;
    this.a = paramSectionIndexer;
    if (this.a == null);
    for (this.e = true; ; this.e = false)
    {
      notifyDataSetChanged();
      return;
    }
  }

  protected void replaceSectionViewsInMaps(String paramString, View paramView)
  {
    if (this.c.containsKey(paramView))
      this.c.remove(paramView);
    this.c.put(paramString, paramView);
  }

  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.d = paramOnItemClickListener;
  }

  public void setOverlay(TextView paramTextView)
  {
  }

  public void setShareClickListener(MobileSectionListAdapter.OnShearBtnClickListener paramOnShearBtnClickListener)
  {
    this.g = paramOnShearBtnClickListener;
  }

  public void setShowShareBtn(boolean paramBoolean)
  {
    this.f = paramBoolean;
  }

  public void setShowTagType(int paramInt)
  {
    this.h = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.adapter.MobileSectionListAdapter
 * JD-Core Version:    0.6.2
 */