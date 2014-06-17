package com.alipay.android.mini.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.view.View;
import com.alipay.android.mini.window.MiniPayActivity;
import com.alipay.android.mini.window.UIFormDialog.DialogButton;
import java.util.List;

public class SystemDefaultDialog
{
  private static AlertDialog.Builder a(Context paramContext, String paramString1, DialogInterface.OnClickListener paramOnClickListener1, String paramString2, DialogInterface.OnClickListener paramOnClickListener2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramContext);
    if ((!TextUtils.isEmpty(paramString1)) && (paramOnClickListener1 != null))
      localBuilder.setPositiveButton(paramString1, paramOnClickListener1);
    if ((!TextUtils.isEmpty(paramString2)) && (paramOnClickListener2 != null))
      localBuilder.setNegativeButton(paramString2, paramOnClickListener2);
    return localBuilder;
  }

  public static Dialog a(Context paramContext, View paramView, String paramString1, DialogInterface.OnClickListener paramOnClickListener1, String paramString2, DialogInterface.OnClickListener paramOnClickListener2)
  {
    AlertDialog.Builder localBuilder = a(paramContext, paramString1, paramOnClickListener1, paramString2, paramOnClickListener2);
    localBuilder.setView(paramView);
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.show();
    return localAlertDialog;
  }

  public static Dialog a(Context paramContext, String paramString1, String paramString2, DialogInterface.OnClickListener paramOnClickListener1, String paramString3, DialogInterface.OnClickListener paramOnClickListener2)
  {
    AlertDialog.Builder localBuilder = a(paramContext, paramString2, paramOnClickListener1, paramString3, paramOnClickListener2);
    localBuilder.setMessage(paramString1);
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.setOnKeyListener(new i());
    localAlertDialog.show();
    return localAlertDialog;
  }

  public static Dialog a(MiniPayActivity paramMiniPayActivity, String paramString, List paramList)
  {
    AlertDialog localAlertDialog = new AlertDialog.Builder(paramMiniPayActivity).create();
    localAlertDialog.setMessage(paramString);
    int i = 0;
    if (i < paramList.size())
    {
      UIFormDialog.DialogButton localDialogButton = (UIFormDialog.DialogButton)paramList.get(i);
      if (i == 0)
        localAlertDialog.setButton(-1, localDialogButton.a, new j(paramMiniPayActivity, localDialogButton));
      while (true)
      {
        i++;
        break;
        if (i == 1)
          localAlertDialog.setButton(-2, localDialogButton.a, new k(paramMiniPayActivity, localDialogButton));
        else if (i == 2)
          localAlertDialog.setButton(-3, localDialogButton.a, new l(paramMiniPayActivity, localDialogButton));
      }
    }
    localAlertDialog.show();
    return localAlertDialog;
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.mini.widget.SystemDefaultDialog
 * JD-Core Version:    0.6.2
 */