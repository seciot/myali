package com.alipay.android.widget.security.ui.authentication;

import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.Calendar;

class UploadIdImgFragment$3
  implements View.OnClickListener
{
  UploadIdImgFragment$3(UploadIdImgFragment paramUploadIdImgFragment)
  {
  }

  public void onClick(View paramView)
  {
    try
    {
      Calendar localCalendar = Calendar.getInstance();
      FragmentActivity localFragmentActivity = this.a.getActivity();
      UploadIdImgFragment.3.1 local1 = new UploadIdImgFragment.3.1(this);
      int i;
      int j;
      if (UploadIdImgFragment.c(this.a) > 0)
      {
        i = UploadIdImgFragment.c(this.a);
        if (UploadIdImgFragment.d(this.a) <= 0)
          break label119;
        j = -1 + UploadIdImgFragment.d(this.a);
        label68: if (UploadIdImgFragment.e(this.a) <= 0)
          break label130;
      }
      label119: int k;
      for (int m = UploadIdImgFragment.e(this.a); ; m = k)
      {
        new DatePickerDialog(localFragmentActivity, local1, i, j, m).show();
        return;
        i = localCalendar.get(1);
        break;
        j = localCalendar.get(2);
        break label68;
        label130: k = localCalendar.get(5);
      }
    }
    catch (Exception localException)
    {
      localException.getMessage();
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.widget.security.ui.authentication.UploadIdImgFragment.3
 * JD-Core Version:    0.6.2
 */