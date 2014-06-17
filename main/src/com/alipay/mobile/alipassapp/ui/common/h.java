package com.alipay.mobile.alipassapp.ui.common;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.LinearLayout.LayoutParams;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.EinfoFields;
import com.alipay.mobile.commonui.widget.APLinearLayout;
import com.alipay.mobile.commonui.widget.APTextView;
import com.alipay.mobile.framework.app.ActivityApplication;
import java.util.List;

final class h
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  h(AlipassInfoFieldLayout paramAlipassInfoFieldLayout, List paramList, ActivityApplication paramActivityApplication)
  {
  }

  public final void onGlobalLayout()
  {
    this.c.removeAllViews();
    this.c.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    int i = this.a.size();
    List localList = this.c.getExtWidth(this.a);
    for (int j = 0; (j < i) && (j < this.c.maxSize); j++)
    {
      APLinearLayout localAPLinearLayout = (APLinearLayout)LayoutInflater.from(this.c.mContext).inflate(R.layout.sub_alipass_info_field_horizontal, null);
      APTextView localAPTextView1 = (APTextView)localAPLinearLayout.findViewById(R.id.tv_label);
      APTextView localAPTextView2 = (APTextView)localAPLinearLayout.findViewById(R.id.tv_value);
      LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
      localLayoutParams.bottomMargin = this.c.mPaddingVertical;
      localAPTextView1.setLayoutParams(localLayoutParams);
      localAPTextView1.setTextColor(this.c.mlabelTextColor);
      localAPTextView1.setTextSize(0, this.c.mlableTextSize);
      localAPTextView2.setTextColor(this.c.mValueTextColor);
      localAPTextView2.setTextSize(0, this.c.mValueTextSize);
      AlipassInfo.EinfoFields localEinfoFields = (AlipassInfo.EinfoFields)this.a.get(j);
      if (localEinfoFields != null)
      {
        localAPTextView1.setText(localEinfoFields.getLabel());
        localAPTextView2.setText(localEinfoFields.getValue());
        if (j < localList.size())
          ((APLinearLayout)localAPLinearLayout.findViewById(R.id.layout_vtwo)).setLayoutParams((ViewGroup.LayoutParams)localList.get(j));
        if ((localEinfoFields.getValue() != null) && (localEinfoFields.getValue().length() > 0))
        {
          int k = a.a(localEinfoFields.getType());
          if (k > 0)
            localAPTextView2.setCompoundDrawablesWithIntrinsicBounds(this.c.mContext.getResources().getDrawable(k), null, null, null);
          localAPTextView2.setTextColor(a.a(this.c.mContext, localEinfoFields));
          localAPTextView2.setOnClickListener(new a(this.c.mContext, localEinfoFields.getType(), localEinfoFields.getValue(), this.b));
        }
        this.c.addView(localAPLinearLayout);
        this.c.setGravity(Math.min(i, this.c.maxSize), j, localAPLinearLayout);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.common.h
 * JD-Core Version:    0.6.2
 */