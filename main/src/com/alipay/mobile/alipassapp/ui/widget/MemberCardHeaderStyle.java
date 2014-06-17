package com.alipay.mobile.alipassapp.ui.widget;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.mobile.alipassapp.R.dimen;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.R.styleable;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APImageView;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APRelativeLayout;
import com.androidquery.AQuery;
import java.util.List;

public class MemberCardHeaderStyle extends APLinearLayout
{
  public static final String COLOR_TRANSPARENT = "color_transparent";
  private static final int HALF_PADDING = 40;
  public static final int MC_HEADERSTYLE_0 = 0;
  public static final int MC_HEADERSTYLE_1 = 1;
  private int cardHeight;
  private int cardWidth;
  private APImageView ivMCHeaderStyleBack;
  private APImageView ivMCHeaderStyleBackColor;
  private APImageView ivMCHeaderStyleLine;
  private String lastStrip = "lastStrip";
  private int style;
  private AutoScaleTextView tvHeadFieldOneKey;
  private AutoScaleTextView tvHeadFieldOneValue;
  private AutoScaleTextView tvHeadFieldTwoKey;
  private AutoScaleTextView tvHeadFieldTwoValue;

  public MemberCardHeaderStyle(Context paramContext)
  {
    super(paramContext);
  }

  public MemberCardHeaderStyle(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.alipass);
    this.style = localTypedArray.getInt(7, 0);
    localTypedArray.recycle();
    View localView = LayoutInflater.from(paramContext).inflate(R.layout.sub_membercard_header_style, null);
    this.ivMCHeaderStyleBack = ((APImageView)localView.findViewById(R.id.iv_membercard_back));
    this.ivMCHeaderStyleBackColor = ((APImageView)localView.findViewById(R.id.iv_membercard_back_color));
    this.tvHeadFieldOneKey = ((AutoScaleTextView)localView.findViewById(R.id.tv_headfields_1_key));
    this.tvHeadFieldOneValue = ((AutoScaleTextView)localView.findViewById(R.id.tv_headfields_1_value));
    this.tvHeadFieldTwoKey = ((AutoScaleTextView)localView.findViewById(R.id.tv_headfields_2_key));
    this.tvHeadFieldTwoValue = ((AutoScaleTextView)localView.findViewById(R.id.tv_headfields_2_value));
    this.ivMCHeaderStyleLine = ((APImageView)localView.findViewById(R.id.iv_membercard_line));
    int i = (int)getContext().getResources().getDimension(R.dimen.membercard_header_style_margin);
    int j;
    if ((paramContext instanceof Activity))
    {
      DisplayMetrics localDisplayMetrics = new DisplayMetrics();
      ((Activity)paramContext).getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
      this.cardWidth = (localDisplayMetrics.widthPixels - i * 2);
      this.cardHeight = ((int)((localDisplayMetrics.widthPixels - i * 2) / 1.67F));
      if (this.style != 1)
        break label435;
      this.cardHeight /= 2;
      localView.findViewById(R.id.layout_headfields_2).setVisibility(8);
      this.tvHeadFieldOneValue.setVisibility(4);
      j = i - 20;
      this.ivMCHeaderStyleBack.setPadding(20, 0, 20, 5);
      this.ivMCHeaderStyleBackColor.setPadding(20, 0, 20, 5);
      ViewGroup localViewGroup = (ViewGroup)localView.findViewById(R.id.layout_headfields);
      localViewGroup.setPadding(localViewGroup.getLeft(), localViewGroup.getTop(), 40 + localViewGroup.getRight(), localViewGroup.getBottom());
    }
    while (true)
    {
      APRelativeLayout localAPRelativeLayout = (APRelativeLayout)localView.findViewById(R.id.layout_membercard_style);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, this.cardHeight);
      localLayoutParams.leftMargin = j;
      localLayoutParams.rightMargin = j;
      localAPRelativeLayout.setLayoutParams(localLayoutParams);
      addView(localView);
      return;
      this.cardWidth = (480 - i * 2);
      this.cardHeight = ((int)((480.0F - i * 2) / 1.67F));
      break;
      label435: j = i;
    }
  }

  public void refreshUI(String paramString1, String paramString2, String paramString3)
  {
    if (StringUtils.equalsIgnoreCase(paramString2, "color_transparent"))
    {
      refreshUI(paramString1, null, paramString3, 0, null);
      return;
    }
    refreshUI(paramString1, null, paramString3, AlipassInfo.resolveColor(paramString2, 1), null);
  }

  public void refreshUI(String paramString1, List<AlipassInfo.EinfoFields> paramList, String paramString2, int paramInt, String paramString3)
  {
    boolean bool;
    label45: int i;
    label199: String str;
    switch (this.style)
    {
    case 0:
    default:
      APImageView localAPImageView = this.ivMCHeaderStyleBackColor;
      if (this.style == 1)
      {
        bool = true;
        localAPImageView.setImageDrawable(new e(paramInt, bool));
        if (!StringUtils.equalsIgnoreCase(paramString1, this.lastStrip))
        {
          if ((!StringUtils.isEmpty(paramString1)) && (!StringUtils.equalsIgnoreCase("null", paramString1)))
            ((AQuery)new AQuery(getContext()).id(this.ivMCHeaderStyleBack)).image(paramString1, true, true, this.cardWidth, 0, new c(this, paramInt));
          this.lastStrip = paramString1;
        }
        this.tvHeadFieldOneKey.setText("");
        this.tvHeadFieldOneValue.setText("");
        this.tvHeadFieldTwoKey.setText("");
        this.tvHeadFieldTwoValue.setText("");
        if (!StringUtils.isEmpty(paramString2))
          this.tvHeadFieldOneKey.setText(paramString2);
        if (paramList == null)
          return;
        i = 0;
        if ((i >= paramList.size()) || (i >= 2))
          return;
        if (i != 0)
          break label347;
        if (!StringUtils.isEmpty(((AlipassInfo.EinfoFields)paramList.get(0)).getLabel()))
          break label294;
        str = ((AlipassInfo.EinfoFields)paramList.get(0)).getValue();
        label255: this.tvHeadFieldOneValue.setText(str);
      }
      break;
    case 1:
    }
    while (true)
    {
      i++;
      break label199;
      this.ivMCHeaderStyleLine.setBackgroundDrawable(new d(this));
      break;
      bool = false;
      break label45;
      label294: str = ((AlipassInfo.EinfoFields)paramList.get(0)).getLabel() + "  " + ((AlipassInfo.EinfoFields)paramList.get(0)).getValue();
      break label255;
      label347: this.tvHeadFieldTwoKey.setText(((AlipassInfo.EinfoFields)paramList.get(1)).getLabel());
      this.tvHeadFieldTwoValue.setText(((AlipassInfo.EinfoFields)paramList.get(1)).getValue());
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.widget.MemberCardHeaderStyle
 * JD-Core Version:    0.6.2
 */