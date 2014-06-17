package com.alipay.android.mini.util;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import com.alipay.android.mini.event.ActionType;
import com.alipay.android.mini.uielement.ElementAction;
import com.alipay.android.mini.window.IUIForm;

final class h
  implements DialogInterface.OnClickListener
{
  h(String paramString1, String[] paramArrayOfString1, String paramString2, String paramString3, String[] paramArrayOfString2, IUIForm paramIUIForm)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!TextUtils.equals(this.a, this.b[paramInt]))
    {
      String str1 = "js://changeSubmitValue('" + this.c + "','" + this.b[paramInt] + "')";
      String str2 = "js://changeHint('" + this.d + "','" + this.e[paramInt] + "号码')";
      this.f.a(this.f, ActionType.a(new ElementAction(str1)));
      this.f.a(this.f, ActionType.a(new ElementAction(str2)));
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.h
 * JD-Core Version:    0.6.2
 */