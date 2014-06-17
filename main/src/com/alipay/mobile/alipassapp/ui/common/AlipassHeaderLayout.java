package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.androidquery.AQuery;
import com.androidquery.callback.ImageOptions;
import java.util.List;

public class AlipassHeaderLayout extends APLinearLayout
{
  private APImageView mIvDivide;
  private APImageView mIvLogo;
  private AlipassLimitLengthText mTvHeaderLabel;
  private AlipassLimitLengthText mTvHeaderValue;
  private APTextView mTvLogoText;
  private APTextView mTvSecondLogoText;

  public AlipassHeaderLayout(Context paramContext)
  {
    this(paramContext, null);
  }

  public AlipassHeaderLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    View localView = LayoutInflater.from(getContext()).inflate(R.layout.sub_alipass_header, null);
    addView(localView);
    this.mIvLogo = ((APImageView)localView.findViewById(R.id.iv_logo));
    this.mTvLogoText = ((APTextView)localView.findViewById(R.id.tv_logotext));
    this.mTvSecondLogoText = ((APTextView)localView.findViewById(R.id.tv_second_logotext));
    this.mTvHeaderLabel = ((AlipassLimitLengthText)localView.findViewById(R.id.tv_header_label));
    this.mTvHeaderValue = ((AlipassLimitLengthText)localView.findViewById(R.id.tv_header_value));
    this.mIvDivide = ((APImageView)localView.findViewById(R.id.iv_divide));
  }

  private void initInfoFields()
  {
    this.mIvLogo.setImageBitmap(null);
    this.mTvLogoText.setText("");
    this.mTvSecondLogoText.setText("");
    this.mTvHeaderLabel.setText("");
    this.mTvHeaderValue.setText("");
    this.mTvHeaderLabel.setGravity(85);
    this.mTvHeaderValue.setGravity(53);
  }

  public void refresh(AlipassInfo.AliPassBaseInfo paramAliPassBaseInfo, boolean paramBoolean)
  {
    if (paramAliPassBaseInfo == null);
    label148: label407: 
    while (true)
    {
      return;
      String str1;
      label288: if (paramAliPassBaseInfo.getDisplayInfo() != null)
      {
        str1 = paramAliPassBaseInfo.getDisplayInfo().getLogo();
        String str2 = paramAliPassBaseInfo.getLogoText();
        String str3 = paramAliPassBaseInfo.getSecondLogoText();
        List localList = paramAliPassBaseInfo.getHeadFields();
        initInfoFields();
        if (str1 != null)
        {
          ImageOptions localImageOptions = new ImageOptions();
          localImageOptions.fileCache = true;
          localImageOptions.memCache = true;
          localImageOptions.round = 10;
          ((AQuery)new AQuery(getContext()).id(this.mIvLogo)).image(str1.trim(), localImageOptions);
        }
        this.mTvLogoText.setText(str2);
        this.mTvSecondLogoText.setText(str3);
        if ((str2 != null) && (str2.trim().length() != 0))
          break label365;
        this.mTvLogoText.setVisibility(8);
        if ((str3 != null) && (str3.trim().length() != 0))
          break label376;
        this.mTvSecondLogoText.setVisibility(8);
        label173: if ((localList != null) && (localList.size() > 0))
        {
          this.mTvHeaderLabel.setOriText(((AlipassInfo.EinfoFields)localList.get(0)).getLabel());
          this.mTvHeaderValue.setOriText(((AlipassInfo.EinfoFields)localList.get(0)).getValue());
          if ((((AlipassInfo.EinfoFields)localList.get(0)).getLabel() != null) && (((AlipassInfo.EinfoFields)localList.get(0)).getLabel().trim().length() != 0))
            break label387;
          this.mTvHeaderLabel.setVisibility(8);
          this.mTvHeaderValue.setGravity(21);
          if ((((AlipassInfo.EinfoFields)localList.get(0)).getValue() != null) && (((AlipassInfo.EinfoFields)localList.get(0)).getValue().trim().length() != 0))
            break label398;
          this.mTvHeaderValue.setVisibility(8);
          this.mTvHeaderLabel.setGravity(21);
        }
      }
      while (true)
      {
        if (paramBoolean)
          break label407;
        this.mIvDivide.setVisibility(8);
        return;
        str1 = null;
        break;
        label365: this.mTvLogoText.setVisibility(0);
        break label148;
        label376: this.mTvSecondLogoText.setVisibility(0);
        break label173;
        this.mTvHeaderLabel.setVisibility(0);
        break label288;
        this.mTvHeaderValue.setVisibility(0);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.AlipassHeaderLayout
 * JD-Core Version:    0.6.2
 */