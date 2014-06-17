package com.alipay.android.phone.publicplatform.main.api;

import android.graphics.Rect;
import java.util.List;

public abstract interface PublicHomeFragmentInterface
{
  public abstract Rect getOperateMenuRect();

  public abstract void hideOperateMenu();

  public abstract boolean operateMenuVisiable();

  public abstract void refreshPublichomeItems(List paramList);

  public abstract void reloadPublichomeList(List paramList);

  public abstract void remove(String paramString);

  public abstract void scrollToTop();

  public abstract void setPublicHomeManager(PublicHomeManagerInterface paramPublicHomeManagerInterface);

  public abstract void updatePublicObject(String paramString1, long paramLong, String paramString2, String paramString3, int paramInt);
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.phone.publicplatform.main.api.PublicHomeFragmentInterface
 * JD-Core Version:    0.6.2
 */