package com.alipay.mobile.alipassapp.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.mobile.alipassapp.R.drawable;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.ui.ev;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APButton;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.androidquery.AQuery;
import com.androidquery.callback.ImageOptions;

public class MemberCardHeaderObtainable extends APLinearLayout
{
  private APButton mBtnAddCard;
  private APImageView mIvLogo;
  private APTextView mTvLogoText;
  private APTextView mTvSecondLogoText;

  public MemberCardHeaderObtainable(Context paramContext)
  {
    this(paramContext, null);
  }

  public MemberCardHeaderObtainable(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    View localView = LayoutInflater.from(getContext()).inflate(R.layout.sub_membercard_obtainable, null);
    addView(localView);
    this.mIvLogo = ((APImageView)localView.findViewById(R.id.iv_obtainable_card_logo));
    this.mTvLogoText = ((APTextView)localView.findViewById(R.id.tv_obtainable_card_logotext));
    this.mTvSecondLogoText = ((APTextView)localView.findViewById(R.id.tv_obtainable_card_second_logotext));
    this.mBtnAddCard = ((APButton)localView.findViewById(R.id.btn_add_card));
  }

  private void initInfoFields(String paramString1, String paramString2, String paramString3, ev paramev)
  {
    this.mIvLogo.setImageBitmap(null);
    this.mTvLogoText.setText("");
    this.mTvSecondLogoText.setText("");
    this.mBtnAddCard.setOnClickListener(new b(this, paramev, paramString1, paramString2, paramString3));
  }

  public void refresh(com.alipay.mobile.alipassapp.biz.model.b paramb, ev paramev)
  {
    if (paramb == null)
      return;
    String str1 = paramb.a();
    String str2 = paramb.b();
    String str3 = paramb.c();
    initInfoFields(paramb.d(), paramb.e(), paramb.f(), paramev);
    if (StringUtils.isNotBlank(str1))
    {
      ImageOptions localImageOptions = new ImageOptions();
      localImageOptions.round = 3;
      localImageOptions.fileCache = true;
      localImageOptions.memCache = true;
      localImageOptions.fallback = R.drawable.membercard_icon_back;
      ((AQuery)new AQuery(getContext()).id(this.mIvLogo)).image(str1.trim(), localImageOptions);
    }
    this.mTvLogoText.setText(str2);
    this.mTvSecondLogoText.setText(str3);
    if ((str2 == null) || (str2.trim().length() == 0))
      this.mTvLogoText.setVisibility(8);
    while ((str3 == null) || (str3.trim().length() == 0))
    {
      this.mTvSecondLogoText.setVisibility(8);
      return;
      this.mTvLogoText.setVisibility(0);
    }
    this.mTvSecondLogoText.setVisibility(0);
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.widget.MemberCardHeaderObtainable
 * JD-Core Version:    0.6.2
 */