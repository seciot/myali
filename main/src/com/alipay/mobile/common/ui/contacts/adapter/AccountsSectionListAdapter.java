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
import android.widget.RelativeLayout;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.alipay.mobile.base.commonbiz.R.id;
import com.alipay.mobile.base.commonbiz.R.layout;
import com.alipay.mobile.common.ui.contacts.model.HistoryTransferAccount;
import com.alipay.mobile.common.ui.contacts.util.PinYinAndHanziUtils;
import com.alipay.mobile.common.utils.ChineseToPy;
import com.alipay.mobile.commonui.widget.APContactSectionIndexer;
import com.alipay.mobile.commonui.widget.APPinnedHeaderListView;
import com.alipay.mobile.commonui.widget.APPinnedHeaderListView.PinnedHeaderAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AccountsSectionListAdapter extends BaseAdapter
  implements AbsListView.OnScrollListener, AdapterView.OnItemClickListener, SectionIndexer, APPinnedHeaderListView.PinnedHeaderAdapter
{
  private SectionIndexer a;
  private String[] b;
  private int[] c;
  private int d = 0;
  private List<HistoryTransferAccount> e = new ArrayList();
  private Map<String, View> f = new HashMap();
  private AdapterView.OnItemClickListener g;
  private boolean h;
  protected LayoutInflater mInflater;

  public AccountsSectionListAdapter(Context paramContext)
  {
    this.mInflater = LayoutInflater.from(paramContext);
  }

  private static boolean a(String paramString1, String paramString2)
  {
    if (paramString1 == null)
      return paramString2 == null;
    return paramString1.equals(paramString2);
  }

  public void configurePinnedHeader(View paramView, int paramInt1, int paramInt2)
  {
    int i = getSectionForPosition(paramInt1);
    String str = (String)this.a.getSections()[i];
    ((TextView)paramView.findViewById(R.id.contact_list_item_head)).setText(str);
  }

  public int getCount()
  {
    return this.e.size();
  }

  public Object getItem(int paramInt)
  {
    return this.e.get(paramInt);
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
    while ((paramInt < 0) || (this.h))
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

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    AccountsSectionListAdapter.ViewHolder localViewHolder1;
    HistoryTransferAccount localHistoryTransferAccount;
    List localList;
    String str3;
    int j;
    int k;
    int m;
    if (paramView == null)
    {
      paramView = this.mInflater.inflate(R.layout.common_contact_list_item, null);
      AccountsSectionListAdapter.ViewHolder localViewHolder2 = new AccountsSectionListAdapter.ViewHolder(this);
      localViewHolder2.mHeaderLayout = ((RelativeLayout)paramView.findViewById(R.id.contact_item_head));
      localViewHolder2.mHeaderText = ((TextView)paramView.findViewById(R.id.contact_item_header_text));
      localViewHolder2.mContactNameText = ((TextView)paramView.findViewById(R.id.contact_item_name));
      localViewHolder2.mContactPhoneText = ((TextView)paramView.findViewById(R.id.contact_item_phone));
      paramView.setTag(localViewHolder2);
      localViewHolder1 = localViewHolder2;
      localHistoryTransferAccount = (HistoryTransferAccount)this.e.get(paramInt);
      if (localHistoryTransferAccount.getIsNumberMatch())
        break label440;
      localList = localHistoryTransferAccount.getMatchedPinYin();
      if ((localList == null) || (localList.size() <= 0))
        break label419;
      str3 = localHistoryTransferAccount.getDisplayName();
      String[] arrayOfString = PinYinAndHanziUtils.splitDisplayNameWithHanzi(str3);
      j = 0;
      k = 0;
      m = 0;
      label164: if (m >= localList.size())
        break label307;
      int n = Integer.parseInt(((String[])localList.get(m))[0]);
      if (m == 0)
        k = str3.indexOf(arrayOfString[n]);
      if (!PinYinAndHanziUtils.isHanzi(arrayOfString[n]))
        break label282;
      if ((n <= 0) || (PinYinAndHanziUtils.isHanzi(arrayOfString[(n - 1)])))
        break label276;
      j = 1 + (str3.indexOf(arrayOfString[n]) - k);
    }
    while (true)
    {
      m++;
      break label164;
      localViewHolder1 = (AccountsSectionListAdapter.ViewHolder)paramView.getTag();
      break;
      label276: j++;
      continue;
      label282: j += ((String[])localList.get(m))[1].length();
    }
    label307: SpannableString localSpannableString2 = new SpannableString(str3);
    localSpannableString2.setSpan(new ForegroundColorSpan(Color.parseColor("#4C91C7")), k, j + k, 33);
    localViewHolder1.mContactNameText.setText(localSpannableString2);
    this.h = true;
    String str1;
    while (true)
    {
      localViewHolder1.mContactPhoneText.setText(localHistoryTransferAccount.getRealAccount());
      str1 = ChineseToPy.getSinglePy(localHistoryTransferAccount.getDisplayName().substring(0, 1));
      if ((paramInt != 0) || (this.h))
        break;
      localViewHolder1.mHeaderLayout.setVisibility(0);
      localViewHolder1.mHeaderText.setText(str1);
      return paramView;
      label419: this.h = false;
      localViewHolder1.mContactNameText.setText(localHistoryTransferAccount.getDisplayName());
    }
    label440: if (localHistoryTransferAccount.getMatchedNum() != null)
    {
      SpannableString localSpannableString1 = new SpannableString(localHistoryTransferAccount.getRealAccount());
      int i = localHistoryTransferAccount.getRealAccount().indexOf(localHistoryTransferAccount.getMatchedNum());
      localSpannableString1.setSpan(new ForegroundColorSpan(Color.parseColor("#4C91C7")), i, i + localHistoryTransferAccount.getMatchedNum().length(), 33);
      localViewHolder1.mContactPhoneText.setText(localSpannableString1);
      this.h = true;
    }
    while (true)
    {
      localViewHolder1.mContactNameText.setText(localHistoryTransferAccount.getDisplayName());
      break;
      this.h = false;
      localViewHolder1.mContactPhoneText.setText(localHistoryTransferAccount.getRealAccount());
    }
    if (paramInt - 1 >= 0);
    for (String str2 = ChineseToPy.getSinglePy(((HistoryTransferAccount)this.e.get(paramInt - 1)).getDisplayName().substring(0, 1)); (!str2.equals(str1)) && (!this.h); str2 = " ")
    {
      localViewHolder1.mHeaderLayout.setVisibility(0);
      localViewHolder1.mHeaderText.setText(ChineseToPy.getSinglePy(localHistoryTransferAccount.getDisplayName().substring(0, 1)));
      return paramView;
    }
    localViewHolder1.mHeaderLayout.setVisibility(8);
    return paramView;
  }

  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (this.g != null)
      this.g.onItemClick(paramAdapterView, paramView, getLinkedPosition(paramInt).intValue(), paramLong);
  }

  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramAbsListView instanceof APPinnedHeaderListView))
      ((APPinnedHeaderListView)paramAbsListView).configureHeaderView(paramInt1);
  }

  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
  }

  public void refreshUi(List<HistoryTransferAccount> paramList)
  {
    this.e = paramList;
    this.d = 0;
    int j;
    Object localObject1;
    if ((this.e != null) && (this.e.size() > 0))
    {
      int i = this.e.size();
      j = 0;
      localObject1 = null;
      if (j < i)
      {
        if (a((String)localObject1, ChineseToPy.getSinglePy(((HistoryTransferAccount)this.e.get(j)).getDisplayName().substring(0, 1))))
          break label362;
        this.d = (1 + this.d);
      }
    }
    label340: label355: label362: for (Object localObject5 = ChineseToPy.getSinglePy(((HistoryTransferAccount)this.e.get(j)).getDisplayName().substring(0, 1)); ; localObject5 = localObject1)
    {
      j++;
      localObject1 = localObject5;
      break;
      this.b = new String[this.d];
      this.c = new int[this.d];
      int k = this.e.size();
      Object localObject2 = null;
      int m = 0;
      int n = 0;
      int i1 = 0;
      int i2;
      String str;
      if (i1 < k)
      {
        i2 = m + 1;
        str = ChineseToPy.getSinglePy(((HistoryTransferAccount)this.e.get(i1)).getDisplayName().substring(0, 1));
        if (a((String)localObject2, str))
          break label340;
        this.b[n] = str;
        if (n == 0)
        {
          this.c[0] = 1;
          label242: if (i1 <= 0)
            break label355;
        }
      }
      for (int i4 = 1; ; i4 = i2)
      {
        n++;
        Object localObject4 = str;
        int i3 = i4;
        while (true)
        {
          if (i1 == k - 1)
            this.c[(n - 1)] = i3;
          i1++;
          m = i3;
          localObject2 = localObject4;
          break;
          if (n == 0)
            break label242;
          this.c[(n - 1)] = (i2 - 1);
          break label242;
          this.a = new APContactSectionIndexer(this.b, this.c);
          notifyDataSetChanged();
          return;
          Object localObject3 = localObject2;
          i3 = i2;
          localObject4 = localObject3;
        }
      }
    }
  }

  protected void replaceSectionViewsInMaps(String paramString, View paramView)
  {
    if (this.f.containsKey(paramView))
      this.f.remove(paramView);
    this.f.put(paramString, paramView);
  }

  public void setOnItemClickListener(AdapterView.OnItemClickListener paramOnItemClickListener)
  {
    this.g = paramOnItemClickListener;
  }

  public void setOverlay(TextView paramTextView)
  {
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.ui.contacts.adapter.AccountsSectionListAdapter
 * JD-Core Version:    0.6.2
 */