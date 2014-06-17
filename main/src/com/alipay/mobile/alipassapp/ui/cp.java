package com.alipay.mobile.alipassapp.ui;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import com.alipay.kabaoprod.core.model.model.RemindInfo;
import com.alipay.mobile.alipassapp.R.string;
import com.alipay.mobile.common.utils.StringUtils;
import com.alipay.mobile.commonui.widget.APDateTimePickerDialog;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

final class cp
  implements View.OnClickListener
{
  cp(AlipassRemindActivity paramAlipassRemindActivity)
  {
  }

  private void a(AlipassRemindActivity paramAlipassRemindActivity, String paramString, int paramInt1, int paramInt2)
  {
    String[] arrayOfString = new String[paramInt2];
    for (int i = 0; i < arrayOfString.length; i++)
    {
      String str = AlipassRemindActivity.j(this.a);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(i + 1);
      arrayOfString[i] = String.format(str, arrayOfObject);
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(paramAlipassRemindActivity);
    localBuilder.setTitle(paramString).setSingleChoiceItems(arrayOfString, paramInt1, new cr(this));
    AlipassRemindActivity.a(this.a, localBuilder.create());
    AlipassRemindActivity.g(this.a).setCanceledOnTouchOutside(true);
  }

  public final void onClick(View paramView)
  {
    String str;
    int i;
    SimpleDateFormat localSimpleDateFormat;
    long l1;
    if (StringUtils.equalsIgnoreCase(AlipassRemindActivity.c(this.a), "TRAVEL"))
      if (AlipassRemindActivity.g(this.a) == null)
      {
        str = this.a.getResources().getString(R.string.travel_remind_dialog_title);
        i = (int)(AlipassRemindActivity.a(this.a).getRemindSet() - 1L);
        if ((AlipassRemindActivity.d(this.a) == null) || (AlipassRemindActivity.h(this.a) == null))
          break label279;
        localSimpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        l1 = 0L;
      }
    while (true)
    {
      try
      {
        long l2 = localSimpleDateFormat.parse(AlipassRemindActivity.a(this.a).getRemindSupportTime()).getTime();
        l1 = l2;
        m = (int)((l1 - AlipassRemindActivity.h(this.a).getTime()) / 3600000L);
        if (m < 0)
        {
          j = 0;
          if (i > j - 1)
          {
            k = j - 1;
            a(this.a, str, k, j);
            AlipassRemindActivity.g(this.a).show();
          }
        }
        else
        {
          if (m <= 0)
          {
            j = 1;
            continue;
          }
          if (m <= 24)
            continue;
          j = 24;
          continue;
        }
        int k = i;
        continue;
        if (!StringUtils.equalsIgnoreCase(AlipassRemindActivity.c(this.a), "COUPON"))
          continue;
        Calendar localCalendar = AlipassRemindActivity.i(this.a);
        new APDateTimePickerDialog(this.a, AlipassRemindActivity.i(this.a), localCalendar, new cq(this, localCalendar), null);
        return;
      }
      catch (ParseException localParseException)
      {
        int m;
        continue;
        j = m;
        continue;
      }
      label279: int j = 0;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.alipassapp.ui.cp
 * JD-Core Version:    0.6.2
 */