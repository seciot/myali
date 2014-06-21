package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.DisplayInfo;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.app.ActivityApplication;
import java.util.ArrayList;
import java.util.List;

public class CouponPrimaryFieldLayout extends FrameLayout
{
  private Context mContext;
  private int mHeight;

  public CouponPrimaryFieldLayout(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
  }

  public CouponPrimaryFieldLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
  }

  private void adjustPrimaryText(List<APTextView> paramList)
  {
    if (getChildCount() > 0)
      getChildAt(0).getViewTreeObserver().addOnGlobalLayoutListener(new at(this, paramList));
  }

  private void refreshPrimaryText(List<AlipassInfo.EinfoFields> paramList, ActivityApplication paramActivityApplication)
  {
    if ((paramList != null) && (paramList.size() > 0))
    {
      ArrayList localArrayList = new ArrayList();
      APLinearLayout localAPLinearLayout1 = new APLinearLayout(this.mContext);
      localAPLinearLayout1.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
      localAPLinearLayout1.setOrientation(0);
      localAPLinearLayout1.setGravity(16);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      localLayoutParams.weight = 1.0F;
      int i = 0;
      if ((i < paramList.size()) && (i < 2))
      {
        APLinearLayout localAPLinearLayout2 = (APLinearLayout)LayoutInflater.from(this.mContext).inflate(R.layout.sub_alipass_coupon_primary_text, null);
        localAPLinearLayout2.setLayoutParams(localLayoutParams);
        APTextView localAPTextView1 = (APTextView)localAPLinearLayout2.findViewById(R.id.tv_primary_label);
        APTextView localAPTextView2 = (APTextView)localAPLinearLayout2.findViewById(R.id.tv_primary_value);
        AlipassInfo.EinfoFields localEinfoFields = (AlipassInfo.EinfoFields)paramList.get(i);
        localAPTextView2.setTextColor(a.a(this.mContext, localEinfoFields));
        if (localEinfoFields != null)
        {
          if ("url".equalsIgnoreCase(localEinfoFields.getType()))
            localAPTextView2.setOnClickListener(new a(this.mContext, "url", localEinfoFields.getValue(), paramActivityApplication));
          localAPTextView1.setText(localEinfoFields.getLabel());
          localAPTextView2.setText(localEinfoFields.getValue());
          if ((localEinfoFields.getValue() != null) && (localEinfoFields.getValue().length() > 0))
          {
            int j = a.getBundle(localEinfoFields.getType());
            if (j > 0)
            {
              localAPTextView2.setCompoundDrawablesWithIntrinsicBounds(this.mContext.getResources().getDrawable(j), null, null, null);
              localAPTextView2.setOnClickListener(new a(this.mContext, localEinfoFields.getType(), localEinfoFields.getValue(), paramActivityApplication));
            }
          }
          if ((localEinfoFields.getLabel() == null) || (localEinfoFields.getLabel().trim().length() == 0))
            localAPTextView1.setVisibility(8);
          if ((localEinfoFields.getValue() == null) || (localEinfoFields.getValue().trim().length() == 0))
            localAPTextView2.setVisibility(8);
          if (i != 0)
            break label412;
          localAPLinearLayout2.setGravity(3);
        }
        while (true)
        {
          localArrayList.add(localAPTextView2);
          localAPLinearLayout1.addView(localAPLinearLayout2);
          i++;
          break;
          label412: if (i == 1)
            localAPLinearLayout2.setGravity(5);
        }
      }
      addView(localAPLinearLayout1);
      adjustPrimaryText(localArrayList);
    }
  }

  public void refresh(List<AlipassInfo.EinfoFields> paramList, AlipassInfo.DisplayInfo paramDisplayInfo, ActivityApplication paramActivityApplication)
  {
    String str = paramDisplayInfo.getStrip();
    getViewTreeObserver().addOnGlobalLayoutListener(new as(this, str, paramList, paramActivityApplication));
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.CouponPrimaryFieldLayout
 * JD-Core Version:    0.6.2
 */