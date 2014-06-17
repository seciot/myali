package com.alipay.mobile.alipassapp.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.kabaoprod.biz.mwallet.card.model.CardModel;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.alipassapp.biz.model.b;
import com.alipay.mobile.alipassapp.ui.widget.MemberCardHeaderObtainable;

public class BaseAlipassInfoItem$MemberCardObtainableInfoItem extends BaseAlipassInfoItem
{
  private b mObtainableInfo;
  private ev mOnClickListener;

  public BaseAlipassInfoItem$MemberCardObtainableInfoItem(CardModel paramCardModel, ev paramev)
  {
    this.mObtainableInfo = new b(paramCardModel);
    this.mOnClickListener = paramev;
  }

  public AlipassInfo.AliPassBaseInfo getBaseInfo()
  {
    return null;
  }

  public String getCardType()
  {
    if (this.mObtainableInfo != null)
      return this.mObtainableInfo.e();
    return null;
  }

  public String getLogo()
  {
    if (this.mObtainableInfo != null)
      return this.mObtainableInfo.a();
    return null;
  }

  public String getLogoText()
  {
    if (this.mObtainableInfo != null)
      return this.mObtainableInfo.b();
    return null;
  }

  public String getPartnerId()
  {
    if (this.mObtainableInfo != null)
      return this.mObtainableInfo.d();
    return null;
  }

  public String getSecondLogoText()
  {
    if (this.mObtainableInfo != null)
      return this.mObtainableInfo.c();
    return null;
  }

  public String getTid()
  {
    if (this.mObtainableInfo != null)
      return this.mObtainableInfo.f();
    return null;
  }

  public int getType()
  {
    return 0;
  }

  public View getView(Context paramContext, int paramInt, View paramView)
  {
    BaseAlipassInfoItem.MemberCardObtainableInfoItem.CardObtainableViewHolder localCardObtainableViewHolder2;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramContext).inflate(R.layout.sub_list_item_membercard_obtainable, null);
      localCardObtainableViewHolder2 = new BaseAlipassInfoItem.MemberCardObtainableInfoItem.CardObtainableViewHolder(this, null);
      localCardObtainableViewHolder2.cardObtainableLayout = ((MemberCardHeaderObtainable)paramView.findViewById(R.id.layout_obtainable_card_header));
      paramView.setTag(localCardObtainableViewHolder2);
    }
    for (BaseAlipassInfoItem.MemberCardObtainableInfoItem.CardObtainableViewHolder localCardObtainableViewHolder1 = localCardObtainableViewHolder2; ; localCardObtainableViewHolder1 = (BaseAlipassInfoItem.MemberCardObtainableInfoItem.CardObtainableViewHolder)paramView.getTag())
    {
      localCardObtainableViewHolder1.cardObtainableLayout.refresh(this.mObtainableInfo, this.mOnClickListener);
      return paramView;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.BaseAlipassInfoItem.MemberCardObtainableInfoItem
 * JD-Core Version:    0.6.2
 */