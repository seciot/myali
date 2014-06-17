package com.alipay.mobile.lib.model;

import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import com.alipay.mobile.publicsvc.common.R.id;

public abstract class BaseHomeAdapterItem<T extends ResponseBaseMessage>
  implements AdapterItem<T>
{
  private View.OnClickListener a = new BaseHomeAdapterItem.1(this);
  private View.OnLongClickListener b = new BaseHomeAdapterItem.2(this);

  protected abstract void clickItem(View paramView);

  protected abstract LayoutInflater getInflater();

  protected abstract RequestBaseMessage getMsgClickReplaceBean(String paramString1, String paramString2);

  protected void initViewClick(View paramView, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, int paramInt, T paramT)
  {
    initViewClick(paramView, paramString1, paramString2, paramBoolean1, paramBoolean2, paramInt, paramT, 0);
  }

  protected void initViewClick(View paramView, String paramString1, String paramString2, boolean paramBoolean1, boolean paramBoolean2, int paramInt1, T paramT, int paramInt2)
  {
    paramView.setOnClickListener(this.a);
    if (paramInt1 != -1)
      paramView.setBackgroundResource(paramInt1);
    paramView.setTag(R.id.url_tag, new MessageActionParams(paramString1, paramString2, paramBoolean2, paramBoolean1, paramT, paramInt2));
    if (paramBoolean1)
    {
      paramView.setOnLongClickListener(this.b);
      return;
    }
    paramView.setOnLongClickListener(null);
  }

  protected void showConfirm(View paramView)
  {
  }

  protected abstract void writeLog(MessageActionParams paramMessageActionParams);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.lib.model.BaseHomeAdapterItem
 * JD-Core Version:    0.6.2
 */