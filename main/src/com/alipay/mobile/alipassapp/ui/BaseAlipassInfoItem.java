package com.alipay.mobile.alipassapp.ui;

import android.content.Context;
import android.view.View;
import com.alipay.mobile.alipassapp.biz.model.AlipassInfo.AliPassBaseInfo;

public abstract class BaseAlipassInfoItem
{
  public static final int ITEM_FROM_NORMAL = 0;
  public static final int ITEM_FROM_OFFLINE = 1;
  public static final int ITEM_TYPE_COUNT = 2;
  public static final int ITEM_TYPE_DATE = 1;
  public static final int ITEM_TYPE_OBTAINABLE_CARD = 3;
  public static final int ITEM_TYPE_PASS_INFO;
  private int itemFrom = 0;

  public abstract AlipassInfo.AliPassBaseInfo getBaseInfo();

  public int getItemFrom()
  {
    return this.itemFrom;
  }

  public abstract int getType();

  public abstract View getView(Context paramContext, int paramInt, View paramView);

  public void setItemFrom(int paramInt)
  {
    this.itemFrom = paramInt;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.BaseAlipassInfoItem
 * JD-Core Version:    0.6.2
 */