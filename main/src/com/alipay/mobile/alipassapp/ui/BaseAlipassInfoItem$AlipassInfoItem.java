package com.alipay.mobile.alipassapp.ui;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.kabaoprod.core.model.model.PassBaseInfo;
import com.alipay.mobile.alipassapp.R.dimen;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo;
import com.alipay.mobile.alipassapp.ui.common.AlipassHeaderLayout;
import com.alipay.mobile.alipassapp.ui.common.ar;
import com.alipay.mobile.alipassapp.ui.widget.MemberCardHeaderLayout;
import com.alipay.mobile.alipassapp.ui.widget.a;

public class BaseAlipassInfoItem$AlipassInfoItem extends BaseAlipassInfoItem
{
  public static final int INFO_ITEM_TYPE_ALIPASS = 0;
  public static final int INFO_ITEM_TYPE_MEMBERCARD = 1;
  private int infoItemType = 0;
  private AlipassInfo.AliPassBaseInfo mPassInfo;

  public BaseAlipassInfoItem$AlipassInfoItem(PassBaseInfo paramPassBaseInfo, boolean paramBoolean, int paramInt)
  {
    this.mPassInfo = new AlipassInfo.AliPassBaseInfo(paramPassBaseInfo, paramBoolean);
    this.infoItemType = paramInt;
  }

  private View getAlipassView(Context paramContext, int paramInt, View paramView)
  {
    BaseAlipassInfoItem.AlipassInfoItem.PassItemViewHolder localPassItemViewHolder1;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramContext).inflate(R.layout.sub_list_item_pass_info, null);
      BaseAlipassInfoItem.AlipassInfoItem.PassItemViewHolder localPassItemViewHolder2 = new BaseAlipassInfoItem.AlipassInfoItem.PassItemViewHolder(this, null);
      localPassItemViewHolder2.mAlipassHeaderLayout = ((AlipassHeaderLayout)paramView.findViewById(R.id.layout_alipass_header));
      paramView.setTag(localPassItemViewHolder2);
      localPassItemViewHolder1 = localPassItemViewHolder2;
      if (paramInt != 0)
        break label147;
      float f = paramContext.getResources().getDimension(R.dimen.alipass_listview_padding_top);
      paramView.setPadding(paramView.getPaddingLeft(), (int)f, paramView.getPaddingRight(), paramView.getPaddingBottom());
    }
    while (true)
    {
      this.mPassInfo.CheckLazyParse();
      localPassItemViewHolder1.mAlipassHeaderLayout.setBackgroundDrawable(new ar(this.mPassInfo.getDisplayInfo().getResolveBackgroundColor(0)));
      localPassItemViewHolder1.mAlipassHeaderLayout.refresh(this.mPassInfo, true);
      return paramView;
      localPassItemViewHolder1 = (BaseAlipassInfoItem.AlipassInfoItem.PassItemViewHolder)paramView.getTag();
      break;
      label147: paramView.setPadding(paramView.getPaddingLeft(), 0, paramView.getPaddingRight(), paramView.getPaddingBottom());
    }
  }

  private View getMemberCardView(Context paramContext, int paramInt, View paramView)
  {
    BaseAlipassInfoItem.AlipassInfoItem.MemberCardViewHolder localMemberCardViewHolder1;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramContext).inflate(R.layout.sub_list_item_membercard_info, null);
      BaseAlipassInfoItem.AlipassInfoItem.MemberCardViewHolder localMemberCardViewHolder2 = new BaseAlipassInfoItem.AlipassInfoItem.MemberCardViewHolder(this, null);
      localMemberCardViewHolder2.memberCardHeaderLayout = ((MemberCardHeaderLayout)paramView.findViewById(R.id.layout_membercard_header));
      paramView.setTag(localMemberCardViewHolder2);
      localMemberCardViewHolder1 = localMemberCardViewHolder2;
      if (paramInt != 0)
        break label146;
      float f = paramContext.getResources().getDimension(R.dimen.membercard_listview_padding_top);
      paramView.setPadding(paramView.getPaddingLeft(), (int)f, paramView.getPaddingRight(), paramView.getPaddingBottom());
    }
    while (true)
    {
      this.mPassInfo.CheckLazyParse();
      localMemberCardViewHolder1.memberCardHeaderLayout.setBackgroundDrawable(new a(this.mPassInfo.getDisplayInfo().getResolveBackgroundColor(1)));
      localMemberCardViewHolder1.memberCardHeaderLayout.refresh(this.mPassInfo);
      return paramView;
      localMemberCardViewHolder1 = (BaseAlipassInfoItem.AlipassInfoItem.MemberCardViewHolder)paramView.getTag();
      break;
      label146: paramView.setPadding(paramView.getPaddingLeft(), 0, paramView.getPaddingRight(), paramView.getPaddingBottom());
    }
  }

  public AlipassInfo.AliPassBaseInfo getBaseInfo()
  {
    return this.mPassInfo;
  }

  public String getPartnerID()
  {
    if (this.mPassInfo != null)
      return this.mPassInfo.getPartnerId();
    return null;
  }

  public String getPassCacheVersion()
  {
    if (this.mPassInfo != null)
      return this.mPassInfo.getGmtModified();
    return null;
  }

  public String getPassId()
  {
    if (this.mPassInfo != null)
      return this.mPassInfo.getPassId();
    return null;
  }

  public String getSerialNumber()
  {
    if (this.mPassInfo != null)
      return this.mPassInfo.getSerialNumber();
    return null;
  }

  public int getType()
  {
    return 0;
  }

  public View getView(Context paramContext, int paramInt, View paramView)
  {
    switch (this.infoItemType)
    {
    default:
      return getAlipassView(paramContext, paramInt, paramView);
    case 0:
      return getAlipassView(paramContext, paramInt, paramView);
    case 1:
    }
    return getMemberCardView(paramContext, paramInt, paramView);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.BaseAlipassInfoItem.AlipassInfoItem
 * JD-Core Version:    0.6.2
 */