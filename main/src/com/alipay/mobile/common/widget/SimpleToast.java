package com.alipay.mobile.common.widget;

import android.content.Context;
import android.content.res.Resources;
import android.widget.Toast;

public class SimpleToast
{
  public static Toast makeToast(Context paramContext, int paramInt1, int paramInt2)
  {
    return makeToast(paramContext, 0, paramContext.getResources().getText(paramInt1), paramInt2);
  }

  public static Toast makeToast(Context paramContext, int paramInt1, int paramInt2, int paramInt3)
  {
    return makeToast(paramContext, paramInt1, paramContext.getResources().getText(paramInt2), paramInt3);
  }

  public static Toast makeToast(Context paramContext, int paramInt1, CharSequence paramCharSequence, int paramInt2)
  {
    Toast localToast = Toast.makeText(paramContext, paramCharSequence, paramInt2);
    localToast.setGravity(17, 0, 0);
    return localToast;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.common.widget.SimpleToast
 * JD-Core Version:    0.6.2
 */