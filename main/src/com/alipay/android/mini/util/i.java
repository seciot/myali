package com.alipay.android.mini.util;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.text.TextUtils;
import com.alipay.android.mini.window.MiniWebActivity;

final class i
  implements DialogInterface.OnClickListener
{
  i(String[] paramArrayOfString1, Context paramContext, String[] paramArrayOfString2)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!TextUtils.isEmpty(this.a[paramInt]))
    {
      Intent localIntent = new Intent(this.b, MiniWebActivity.class);
      localIntent.putExtra("url", this.a[paramInt]);
      localIntent.putExtra("title", this.c[paramInt]);
      this.b.startActivity(localIntent);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.util.i
 * JD-Core Version:    0.6.2
 */