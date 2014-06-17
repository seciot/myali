package com.alipay.mobile.lib.model;

import android.view.View;

public abstract interface AdapterItem<T extends ResponseBaseMessage>
{
  public abstract View getView(boolean paramBoolean, View paramView, T paramT);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.lib.model.AdapterItem
 * JD-Core Version:    0.6.2
 */