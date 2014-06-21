package com.alipay.mobile.deviceAuthorization.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import android.widget.ListView;
import com.alipay.mobile.clientsecurity.R.id;
import com.alipay.mobile.commonui.widget.APInputBox;
import com.alipay.mobile.commonui.widget.APSixNumberPwdInputBox;
import com.alipay.mobile.deviceAuthorization.a.d;
import com.alipay.mobilesecurity.common.spi.approve.AuthOption;
import com.alipay.mobilesecurity.core.model.approve.PrepareApproveRes;
import java.util.ArrayList;
import java.util.List;

final class ao
  implements View.OnClickListener
{
  ao(PermAuthActivity paramPermAuthActivity, PrepareApproveRes paramPrepareApproveRes)
  {
  }

  public final void onClick(View paramView)
  {
    String str1;
    Object localObject;
    if ((PermAuthActivity.getBundle(this.b) != null) && (PermAuthActivity.getBundle(this.b).getVisibility() == 0))
    {
      String str3 = PermAuthActivity.getBundle(this.b).getInputedText();
      PermAuthActivity.v(this.b, PermAuthActivity.getBundle(this.b));
      str1 = "PAYMENTPASSWORD";
      localObject = str3;
    }
    while (true)
    {
      ArrayList localArrayList = new ArrayList();
      d locald = (d)PermAuthActivity.c(this.b).getAdapter();
      int i = 0;
      while (true)
        if (i < PermAuthActivity.c(this.b).getChildCount())
        {
          if (((CheckBox)((LinearLayout)PermAuthActivity.c(this.b).getChildAt(i)).findViewById(R.id.y)).isChecked())
            localArrayList.add(locald.getBundle(i).optionKey);
          i++;
          continue;
          if ((PermAuthActivity.b(this.b) == null) || (PermAuthActivity.b(this.b).getVisibility() != 0))
            break label242;
          String str2 = PermAuthActivity.b(this.b).getInputedPwd(-1);
          PermAuthActivity.v(this.b, PermAuthActivity.b(this.b));
          str1 = "MOBILEPASSWORD";
          localObject = str2;
          break;
        }
      this.b.a(this.a.needMobileSp, (String)localObject, str1, localArrayList);
      return;
      label242: str1 = null;
      localObject = null;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.deviceAuthorization.ui.ao
 * JD-Core Version:    0.6.2
 */