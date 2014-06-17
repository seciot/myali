package com.alipay.mobile.alipassapp.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.alipay.mobile.alipassapp.R.id;
import com.alipay.mobile.alipassapp.R.layout;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;
import com.alipay.mobile.commonui.widget.APTextView;

public class BaseAlipassInfoItem$DateInfoItem extends BaseAlipassInfoItem
{
  private String mDate;

  public BaseAlipassInfoItem$DateInfoItem(String paramString)
  {
    this.mDate = paramString;
  }

  public AlipassInfo.AliPassBaseInfo getBaseInfo()
  {
    return null;
  }

  public int getType()
  {
    return 1;
  }

  public View getView(Context paramContext, int paramInt, View paramView)
  {
    BaseAlipassInfoItem.DateInfoItem.DateItemViewHolder localDateItemViewHolder2;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramContext).inflate(R.layout.sub_list_item_date_info, null);
      localDateItemViewHolder2 = new BaseAlipassInfoItem.DateInfoItem.DateItemViewHolder(this);
      localDateItemViewHolder2.text = ((APTextView)paramView.findViewById(R.id.date_text));
      paramView.setTag(localDateItemViewHolder2);
    }
    for (BaseAlipassInfoItem.DateInfoItem.DateItemViewHolder localDateItemViewHolder1 = localDateItemViewHolder2; ; localDateItemViewHolder1 = (BaseAlipassInfoItem.DateInfoItem.DateItemViewHolder)paramView.getTag())
    {
      localDateItemViewHolder1.text.setText(this.mDate);
      return paramView;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.BaseAlipassInfoItem.DateInfoItem
 * JD-Core Version:    0.6.2
 */