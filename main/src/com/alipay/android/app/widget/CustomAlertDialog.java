package com.alipay.android.app.widget;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.alipay.android.app.R.id;
import com.alipay.android.app.R.layout;
import com.alipay.android.app.R.style;

public class CustomAlertDialog extends Dialog
  implements DialogInterface
{
  private l a;
  private DialogInterface b;
  private Handler c;
  private Button d;
  private Button e;
  private View f;
  private TextView g;
  private TextView h;
  private ImageView i;
  private FrameLayout j;
  private View k;
  private ListView l;
  private ListAdapter m;
  private DialogInterface.OnClickListener n;
  private int o = -1;
  private boolean p;
  private View.OnClickListener q;

  public CustomAlertDialog(l paraml)
  {
    super(paraml.d, R.style.a);
    if (Build.VERSION.SDK_INT >= 11);
    for (boolean bool = true; ; bool = false)
    {
      this.p = bool;
      this.q = new i(this);
      this.a = paraml;
      this.b = this;
      this.c = new k(this.b);
      return;
    }
  }

  public final void a(int paramInt, CharSequence paramCharSequence, DialogInterface.OnClickListener paramOnClickListener, Message paramMessage)
  {
    if (paramOnClickListener != null)
      paramMessage = this.c.obtainMessage(paramInt, paramOnClickListener);
    switch (paramInt)
    {
    default:
      throw new IllegalArgumentException("Button does not exist");
    case -1:
      this.a.h = paramCharSequence;
      this.a.l = paramMessage;
      return;
    case -2:
    }
    this.a.i = paramCharSequence;
    this.a.m = paramMessage;
  }

  protected void onCreate(Bundle paramBundle)
  {
    int i1 = 8;
    super.onCreate(paramBundle);
    if (this.a.r)
    {
      setContentView(R.layout.H);
      getWindow().setLayout(-1, -2);
      this.l = ((ListView)findViewById(16908298));
      this.n = this.a.q;
      this.m = this.a.o;
      this.o = this.a.p;
      if ((this.l != null) && (this.m != null))
      {
        if ((this.m instanceof CustomArrayAdapter))
          ((CustomArrayAdapter)this.m).a(this.l);
        this.l.setAdapter(this.m);
        this.l.setChoiceMode(1);
        if (this.o >= 0)
        {
          this.l.setItemChecked(this.o, true);
          this.l.setSelection(this.o);
        }
      }
      if (this.l != null)
        this.l.setOnItemClickListener(new j(this));
      return;
    }
    setContentView(R.layout.G);
    this.d = ((Button)findViewById(R.id.p));
    this.e = ((Button)findViewById(R.id.am));
    this.f = findViewById(R.id.n);
    this.g = ((TextView)findViewById(R.id.o));
    this.h = ((TextView)findViewById(R.id.m));
    this.i = ((ImageView)findViewById(R.id.l));
    this.j = ((FrameLayout)findViewById(R.id.k));
    this.k = findViewById(R.id.j);
    int i2;
    label358: Button localButton1;
    label384: label428: Button localButton2;
    label441: int i3;
    label463: label482: int i4;
    label497: View localView2;
    if (TextUtils.isEmpty(this.a.a))
    {
      this.g.setVisibility(i1);
      this.i.setVisibility(i1);
      if ((TextUtils.isEmpty(this.a.b)) || (this.a.e != null))
        break label582;
      i2 = 1;
      if (i2 == 0)
        break label587;
      this.h.setVisibility(0);
      this.h.setText(this.a.b);
      if (this.a.e != null)
      {
        this.j.removeAllViews();
        this.j.addView(this.a.e);
      }
      if (!this.p)
        break label598;
      localButton1 = this.e;
      if (!this.p)
        break label607;
      localButton2 = this.d;
      if (!TextUtils.isEmpty(this.a.h))
        break label616;
      localButton1.setVisibility(i1);
      i3 = 0;
      if (!TextUtils.isEmpty(this.a.i))
        break label661;
      localButton2.setVisibility(i1);
      View localView1 = this.f;
      if (i3 <= 1)
        break label706;
      i4 = 0;
      localView1.setVisibility(i4);
      localView2 = this.k;
      if (i3 != 0)
        break label712;
    }
    while (true)
    {
      localView2.setVisibility(i1);
      return;
      this.g.setVisibility(0);
      this.i.setVisibility(0);
      if (this.a.c != null)
        this.g.setCompoundDrawablesWithIntrinsicBounds(this.a.c, null, null, null);
      this.g.setText(this.a.a);
      break;
      label582: i2 = 0;
      break label358;
      label587: this.h.setVisibility(i1);
      break label384;
      label598: localButton1 = this.d;
      break label428;
      label607: localButton2 = this.e;
      break label441;
      label616: localButton1.setVisibility(0);
      localButton1.setText(this.a.h);
      localButton1.setOnClickListener(this.q);
      localButton1.setTag(this.a.l);
      i3 = 1;
      break label463;
      label661: localButton2.setVisibility(0);
      localButton2.setText(this.a.i);
      localButton2.setOnClickListener(this.q);
      localButton2.setTag(this.a.m);
      i3++;
      break label482;
      label706: i4 = i1;
      break label497;
      label712: i1 = 0;
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.alipay.android.app.widget.CustomAlertDialog
 * JD-Core Version:    0.6.2
 */