package com.alipay.mobile.onsitepay.utils;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Message;
import android.text.Html;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout.LayoutParams;
import android.widget.TextView;
import com.alipay.mobile.onsitepay.c;
import com.alipay.mobile.onsitepay.d;
import com.alipay.mobile.onsitepay.e;
import com.alipay.mobile.ui.R.drawable;

public final class g
  implements View.OnClickListener
{
  public static boolean a;
  private AlertDialog b;
  private View c;
  private Button d;
  private Button e;
  private h f;
  private DialogInterface.OnClickListener g;
  private DialogInterface.OnClickListener h;

  public g(Context paramContext, String paramString1, String paramString2, String paramString3, DialogInterface.OnClickListener paramOnClickListener1, String paramString4, DialogInterface.OnClickListener paramOnClickListener2)
  {
    TextView localTextView;
    if ((Build.VERSION.RELEASE.compareTo("4.0") > 0) && (!a))
    {
      this.g = paramOnClickListener2;
      this.h = paramOnClickListener1;
      this.b = new AlertDialog.Builder(paramContext).create();
      this.b.setCanceledOnTouchOutside(false);
      this.f = new h(this.b);
      this.b.setOnCancelListener(null);
      this.c = this.b.getLayoutInflater().inflate(e.a, null);
      localTextView = (TextView)this.c.findViewById(d.N);
      if ((paramString2 != null) && (paramString2.length() > 0))
        break label306;
      localTextView.setText(paramString1);
      label129: this.d = ((Button)this.c.findViewById(d.k));
      if (paramString4 == null)
        break label318;
      this.d.setOnClickListener(this);
      this.d.setText(paramString4);
      label168: this.e = ((Button)this.c.findViewById(d.l));
      if (paramString3 == null)
        break label330;
      this.e.setOnClickListener(this);
      this.e.setText(paramString3);
    }
    while (true)
    {
      if ((Build.VERSION.RELEASE.compareTo("4.0") > 0) && (!a))
      {
        this.d.setTextColor(paramContext.getResources().getColorStateList(R.drawable.subsub_btn_color));
        this.d.setBackgroundResource(R.drawable.sub_button);
        this.e.setTextColor(paramContext.getResources().getColorStateList(c.c));
        this.e.setBackgroundResource(R.drawable.main_button);
      }
      return;
      this.g = paramOnClickListener1;
      this.h = paramOnClickListener2;
      String str = paramString4;
      paramString4 = paramString3;
      paramString3 = str;
      break;
      label306: localTextView.setText(Html.fromHtml(paramString2));
      break label129;
      label318: this.d.setVisibility(8);
      break label168;
      label330: this.e.setVisibility(8);
    }
  }

  public final void a()
  {
    if (!this.b.isShowing());
    try
    {
      this.b.show();
      FrameLayout.LayoutParams localLayoutParams = new FrameLayout.LayoutParams(-60 + ((WindowManager)this.b.getContext().getSystemService("window")).getDefaultDisplay().getWidth(), -2);
      localLayoutParams.gravity = 17;
      this.b.setContentView(this.c, localLayoutParams);
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
  }

  public final void b()
  {
    if ((this.b != null) && (this.b.isShowing()))
      this.b.dismiss();
  }

  public final AlertDialog c()
  {
    return this.b;
  }

  public final void onClick(View paramView)
  {
    Message localMessage;
    if ((paramView == this.d) && (this.g != null))
    {
      this.b.dismiss();
      localMessage = this.f.obtainMessage(-1, this.g);
    }
    while (true)
    {
      localMessage.sendToTarget();
      return;
      if ((paramView == this.e) && (this.h != null))
      {
        this.b.dismiss();
        localMessage = this.f.obtainMessage(-2, this.h);
      }
      else
      {
        localMessage = this.f.obtainMessage(1, this.b);
      }
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.mobile.onsitepay.utils.g
 * JD-Core Version:    0.6.2
 */