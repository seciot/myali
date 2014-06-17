package com.androidquery.util;

import android.app.Activity;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.view.View;
import android.widget.ProgressBar;
import com.androidquery.AQuery;

public class Progress
  implements Runnable
{
  private ProgressBar a;
  private ProgressDialog b;
  private Activity c;
  private View d;
  private boolean e;
  private int f;
  private int g;
  private String h;

  public Progress(Object paramObject)
  {
    if ((paramObject instanceof ProgressBar))
      this.a = ((ProgressBar)paramObject);
    do
    {
      return;
      if ((paramObject instanceof ProgressDialog))
      {
        this.b = ((ProgressDialog)paramObject);
        return;
      }
      if ((paramObject instanceof Activity))
      {
        this.c = ((Activity)paramObject);
        return;
      }
    }
    while (!(paramObject instanceof View));
    this.d = ((View)paramObject);
  }

  private void dismiss(String paramString)
  {
    if (this.b != null)
      new AQuery(this.b.getContext()).dismiss(this.b);
    if (this.c != null)
    {
      this.c.setProgressBarIndeterminateVisibility(false);
      this.c.setProgressBarVisibility(false);
    }
    if (this.a != null)
    {
      this.a.setTag(1090453505, paramString);
      this.a.setVisibility(0);
    }
    Object localObject1 = this.a;
    if (localObject1 == null)
      localObject1 = this.d;
    if (localObject1 != null)
    {
      Object localObject2 = ((View)localObject1).getTag(1090453505);
      if ((localObject2 == null) || (localObject2.equals(paramString)))
      {
        ((View)localObject1).setTag(1090453505, null);
        if ((this.a != null) && (this.a.isIndeterminate()))
          ((View)localObject1).setVisibility(8);
      }
    }
  }

  private void showProgress(Object paramObject, String paramString, boolean paramBoolean)
  {
    View localView;
    if (paramObject != null)
    {
      if (!(paramObject instanceof View))
        break label119;
      localView = (View)paramObject;
      if (!(paramObject instanceof ProgressBar))
        break label204;
    }
    label204: for (ProgressBar localProgressBar = (ProgressBar)paramObject; ; localProgressBar = null)
    {
      if (paramBoolean)
      {
        localView.setTag(1090453505, paramString);
        localView.setVisibility(0);
        if (localProgressBar != null)
        {
          localProgressBar.setProgress(0);
          localProgressBar.setMax(100);
        }
      }
      label119: Activity localActivity;
      do
      {
        do
        {
          do
          {
            Object localObject;
            do
            {
              return;
              localObject = localView.getTag(1090453505);
            }
            while ((localObject != null) && (!localObject.equals(paramString)));
            localView.setTag(1090453505, null);
          }
          while ((localProgressBar == null) || (!localProgressBar.isIndeterminate()));
          localView.setVisibility(8);
          return;
          if ((paramObject instanceof Dialog))
          {
            Dialog localDialog = (Dialog)paramObject;
            AQuery localAQuery = new AQuery(localDialog.getContext());
            if (paramBoolean)
            {
              localAQuery.show(localDialog);
              return;
            }
            localAQuery.dismiss(localDialog);
            return;
          }
        }
        while (!(paramObject instanceof Activity));
        localActivity = (Activity)paramObject;
        localActivity.setProgressBarIndeterminateVisibility(paramBoolean);
        localActivity.setProgressBarVisibility(paramBoolean);
      }
      while (!paramBoolean);
      localActivity.setProgress(0);
      return;
    }
  }

  public void done()
  {
    if (this.a != null)
      this.a.setProgress(this.a.getMax());
    if (this.b != null)
      this.b.setProgress(this.b.getMax());
    if (this.c != null)
      this.c.setProgress(9999);
  }

  public void hide(String paramString)
  {
    if (AQUtility.isUIThread())
    {
      dismiss(paramString);
      return;
    }
    this.h = paramString;
    AQUtility.post(this);
  }

  public void increment(int paramInt)
  {
    int i = 1;
    int k;
    label52: int j;
    if (this.a != null)
    {
      ProgressBar localProgressBar = this.a;
      if (this.e)
      {
        k = i;
        localProgressBar.incrementProgressBy(k);
      }
    }
    else
    {
      if (this.b != null)
      {
        ProgressDialog localProgressDialog = this.b;
        if (!this.e)
          break label110;
        localProgressDialog.incrementProgressBy(i);
      }
      if (this.c != null)
      {
        if (!this.e)
          break label115;
        j = this.g;
        this.g = (j + 1);
      }
    }
    while (true)
    {
      if (j > 9999)
        j = 9999;
      this.c.setProgress(j);
      return;
      k = paramInt;
      break;
      label110: i = paramInt;
      break label52;
      label115: this.g = (paramInt + this.g);
      j = 10000 * this.g / this.f;
    }
  }

  public void reset()
  {
    if (this.a != null)
    {
      this.a.setProgress(0);
      this.a.setMax(10000);
    }
    if (this.b != null)
    {
      this.b.setProgress(0);
      this.b.setMax(10000);
    }
    if (this.c != null)
      this.c.setProgress(0);
    this.e = false;
    this.g = 0;
    this.f = 10000;
  }

  public void run()
  {
    dismiss(this.h);
  }

  public void setBytes(int paramInt)
  {
    if (paramInt <= 0)
    {
      this.e = true;
      paramInt = 10000;
    }
    this.f = paramInt;
    if (this.a != null)
    {
      this.a.setProgress(0);
      this.a.setMax(paramInt);
    }
    if (this.b != null)
    {
      this.b.setProgress(0);
      this.b.setMax(paramInt);
    }
  }

  public void show(String paramString)
  {
    reset();
    if (this.b != null)
      new AQuery(this.b.getContext()).show(this.b);
    if (this.c != null)
    {
      this.c.setProgressBarIndeterminateVisibility(true);
      this.c.setProgressBarVisibility(true);
    }
    if (this.a != null)
    {
      this.a.setTag(1090453505, paramString);
      this.a.setVisibility(0);
    }
    if (this.d != null)
    {
      this.d.setTag(1090453505, paramString);
      this.d.setVisibility(0);
    }
  }
}

/* Location:           /Users/don/DeSources/alipay/backup/zhifubaoqianbao_52/classes-dex2jar.jar
 * Qualified Name:     com.androidquery.util.Progress
 * JD-Core Version:    0.6.2
 */